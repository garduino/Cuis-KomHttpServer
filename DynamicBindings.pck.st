'From Cuis 4.1 of 12 December 2012 [latest update: #1590] on 12 February 2013 at 3:11:08 pm'!
'Description Please enter a description for this package '!
!classDefinition: #BindingsAccessor category: #DynamicBindings!
Object subclass: #BindingsAccessor
	instanceVariableNames: ''
	classVariableNames: 'Default'
	poolDictionaries: ''
	category: 'DynamicBindings'!
!classDefinition: 'BindingsAccessor class' category: #DynamicBindings!
BindingsAccessor class
	instanceVariableNames: ''!

!classDefinition: #BindingsLocator category: #DynamicBindings!
Notification subclass: #BindingsLocator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DynamicBindings'!
!classDefinition: 'BindingsLocator class' category: #DynamicBindings!
BindingsLocator class
	instanceVariableNames: ''!

!classDefinition: #DynamicBindingTests category: #DynamicBindings!
TestCase subclass: #DynamicBindingTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DynamicBindings'!
!classDefinition: 'DynamicBindingTests class' category: #DynamicBindings!
DynamicBindingTests class
	instanceVariableNames: ''!

!classDefinition: #DynamicBindings category: #DynamicBindings!
IdentityDictionary subclass: #DynamicBindings
	instanceVariableNames: 'parent'
	classVariableNames: 'Root'
	poolDictionaries: ''
	category: 'DynamicBindings'!
!classDefinition: 'DynamicBindings class' category: #DynamicBindings!
DynamicBindings class
	instanceVariableNames: ''!


!BindingsAccessor commentStamp: 'svp 3/5/2003 10:55' prior: 0!
I enable access to the current dynamic bindings.  My class initialization adds my default instance to the system dictionary as #Bindings.  This enables access to the active runtime environment using syntax like the following:

   Bindings at: #AProcessLocalVariable put: aValue
   Bindings at: #AProcessLocalVariable

I also allow for the creation of new DynamicBindings as follows:

   Bindings new.   "Creates a new empty DynamicBindings instance"
   Bindings clamp: [].  "Creates new bindings that inherit from the current bindings"

!

!BindingsLocator commentStamp: 'svp 3/5/2003 10:58' prior: 0!
I am used to find the runtime environment of a given ContextPart.  If no suitable handler is found, then I will install dummy contexts at the top of the stack that include a handler that returns the default bindings for the system (ie. "DynamicBindings root").!

!DynamicBindingTests commentStamp: 'svp 3/5/2003 10:58' prior: 0!
I test the DynamicBindings subsystem.!

!DynamicBindings commentStamp: 'svp 5/7/2003 10:36' prior: 0!
DynamicBindings for Squeak
by Stephen Pair <spair@pairhome.net>

I am a dictionary with an added property that I can inherit associations from other instances (via the parent inst var).  I am intended to be used as a set of variable bindings that can be local to a process or shared among a group of processes.  I am an abstract class and should never be instantiated.  

Here's how DynamicBindings work:

You may create a hierarchy of DynamicBindings and directly manipulate the keys and values of those instances (just as you would any dictionary).  There is a root DynamicBindings that you may use to create new children if you like (but you can also create entirely separate hierarchies).  You can access this root with "DynamicBindings root".  To force a process to use one of your sets of DynamicBindings, you write code as follows (note, I only use 'PATH' to highlight the similarity with normal OS environment variables):

	myBindings _ DynamicBindings root newChild.
	myBindings at: #PATH put: '/bin:/usr/bin'.
	myBindings bindDuring: 
		[Bindings at: #PATH.  				"-> '/bin:/usr/bin'"
		Bindings at: #PATH put: ('/usr/local/bin:', (Bindings at: #PATH)).
		Bindings at: #PATH].  				"-> '/usr/local/bin:/bin:/usr/bin'"

For convenience, two methods have been added to Object that enable more direct access to bindings.  The following exampel is equivalent to the first:

	myBindings _ DynamicBindings root newChild.
	myBindings at: #PATH put: '/bin:/usr/bin'.
	myBindings bindDuring: 
		[#PATH binding.  				"-> '/bin:/usr/bin'"
		#PATH binding: ('/usr/local/bin:', (#PATH binding)).
		#PATH binding].  				"-> '/usr/local/bin:/bin:/usr/bin'"


The first line creates a new set of bindings that is a child of the root bindings.  Any variables set in the root bindings are also visible in this new child environment.

The second line sets the dynamic variable "PATH".

The third line uses the evaluates the argument block in the context of our new set of bindings.

The fourth line gets the value for the variable "PATH" (which we just set).

The fifth line in the above example modifies the environment variable "PATH", but only for the duration that the enclosing block is active.

Here is another example:

	#PATH binding: '/bin'.
	Bindings clamp:
		[#PATH binding: '/usr/bin'.
		#PATH binding]. 						"-> '/usr/bin'"
	#PATH binding.								"-> '/bin'"

This example shows the use of the #clamp: method to isolate a our dynamic bindings only for the duration of a block.  After the block finishes execution, the original set of bindings is restored.

Scoping semantics:

A dynamic variables' scope is defined at runtime by an enclosing activation context.  To locate the active lexicon of dynamic variables, the system follows the activation stack until a context is encountered that defines the active DynamicBindings (this lookup is implemented using the exception handling system).  Any changes to the active DynamicBindings are visible in all activation contexts where that set of DynamicBindings are being used (which may include contexts in more than one activation stack).

A bit about how it's implemented:

The bindings for a given method activation context are located using the exception handling mechanism (see BindingsLocator).  If a given stack does not have a handler that answers a set of bindings, then dummy contexts will be added to the top of the stack that will answer the global root set of bindings.

Unlike other implementations, DynamicBindings do not use the activation stack to define the hierarchy of bindings.  Instances of DynamicBindings have their own parent instance variable and will locate enclosing variable scopes by following the chain of parents (*not* by looking for enclosing handlers of BindingsLocator).  Using this design, we are able to accomodate a broader range of usage scenarios.

If you need to isolate the bindings of a given context stack such that future changes in the bindings are not visible to users of the current set of dynamic bindings (ie. if you use continuations), you can send the message #isolate to the BindingsAccessor (ie. use "Bindings isolate").
!

!BindingsAccessor methodsFor: 'variable accessing' stamp: 'svp 2/1/2003 02:31'!
associationsDo: aBlock

	^self pvtBindings associationsDo: aBlock! !

!BindingsAccessor methodsFor: 'variable accessing' stamp: 'svp 2/1/2003 02:31'!
at: aSymbol

	^self pvtBindings at: aSymbol! !

!BindingsAccessor methodsFor: 'variable accessing' stamp: 'svp 2/1/2003 02:31'!
at: aSymbol ifAbsent: absBlock

	^self pvtBindings at: aSymbol ifAbsent: absBlock! !

!BindingsAccessor methodsFor: 'variable accessing' stamp: 'svp 2/1/2003 02:31'!
at: aSymbol ifAbsentPut: absBlock

	^self pvtBindings at: aSymbol ifAbsentPut: absBlock value! !

!BindingsAccessor methodsFor: 'variable accessing' stamp: 'svp 2/1/2003 02:31'!
at: aSymbol ifPresent: presentBlock

	^self pvtBindings at: aSymbol ifPresent: presentBlock! !

!BindingsAccessor methodsFor: 'variable accessing' stamp: 'svp 2/1/2003 02:31'!
at: aSymbol put: obj

	^self pvtBindings at: aSymbol put: obj! !

!BindingsAccessor methodsFor: 'variable accessing' stamp: 'svp 2/4/2003 16:56'!
bind: anObject to: anotherObject

	^self pvtBindings bind: anObject to: anotherObject! !

!BindingsAccessor methodsFor: 'variable accessing' stamp: 'svp 2/4/2003 16:54'!
bindingFor: anObject ifNotBound: absBlock

	^self pvtBindings at: anObject ifAbsent: absBlock! !

!BindingsAccessor methodsFor: 'environment control' stamp: 'svp 2/4/2003 13:42'!
clamp: aBlock
"Ensures that any environment modifications that occur during the evaluation of aBlock will happen in an isolated environment and that the original environment will be restored after evaluation completes.  Concurrent changes in the parent bindings are visible while executing aBlock."

	^aBlock valueWithBindings: self pvtBindings newChild
! !

!BindingsAccessor methodsFor: 'variable accessing' stamp: 'svp 2/1/2003 02:31'!
do: aBlock

	^self pvtBindings do: aBlock! !

!BindingsAccessor methodsFor: 'environment accessing' stamp: 'svp 2/4/2003 13:48'!
explore
	"This is just a handy way to allow you to directly explore the 
	global symbol 'Bindings'"

	self get explore! !

!BindingsAccessor methodsFor: 'environment accessing' stamp: 'svp 2/1/2003 02:31'!
get

	^self pvtBindings! !

!BindingsAccessor methodsFor: 'variable accessing' stamp: 'svp 2/1/2003 02:31'!
includesKey: anObject

	^self pvtBindings includesKey: anObject! !

!BindingsAccessor methodsFor: 'environment accessing' stamp: 'svp 2/4/2003 13:49'!
inspect
	"This is just a handy way to allow you to directly inspect the 
	global symbol 'Bindings'"

	self get inspect! !

!BindingsAccessor methodsFor: 'variable accessing' stamp: 'svp 2/4/2003 16:57'!
isBound: anObject

	^self pvtBindings isBound: anObject! !

!BindingsAccessor methodsFor: 'environment control' stamp: 'svp 5/6/2003 10:49'!
isolate
	"Isolates the bindings of the active context such that changes to the 
	active bindings are not visible anywhere except that portion of the active
	stack for which the active bindings are assigned."

	| ctx |
	ctx := self pvtContext.
	ctx tempAt: 1 put: (ctx tempAt: 1) copy.! !

!BindingsAccessor methodsFor: 'environment control' stamp: 'svp 2/4/2003 13:42'!
isolate: aBlock
"Ensures that any environment modifications that occur during the evaluation of aBlock will happen in an isolated environment and that the original environment will be restored after evaluation completes.  Concurrent changes in the parent bindings are visible while executing aBlock."

	^aBlock valueWithBindings: self pvtBindings copy
! !

!BindingsAccessor methodsFor: 'variable accessing' stamp: 'svp 2/1/2003 02:31'!
keys

	^self pvtBindings keys! !

!BindingsAccessor methodsFor: 'environment creation' stamp: 'svp 2/1/2003 02:04'!
new
	"Creates a new runtime environment that is empty."

	^DynamicBindings new.! !

!BindingsAccessor methodsFor: 'environment creation' stamp: 'svp 7/31/2002 10:46'!
newChild
	"Creates a new runtime environment that inherits from the current environment."

	^self get newChild
! !

!BindingsAccessor methodsFor: 'environment accessing' stamp: 'svp 2/4/2003 13:49'!
parent

	^self get parent! !

!BindingsAccessor methodsFor: 'private' stamp: 'svp 2/1/2003 02:30'!
pvtBindings

	^self pvtContext tempAt: 1! !

!BindingsAccessor methodsFor: 'private' stamp: 'svp 2/1/2003 01:33'!
pvtContext

	^BindingsLocator signal! !

!BindingsAccessor methodsFor: 'variable accessing' stamp: 'svp 2/1/2003 02:32'!
removeKey: aSymbol

	^self pvtBindings removeKey: aSymbol! !

!BindingsAccessor methodsFor: 'variable accessing' stamp: 'svp 2/4/2003 16:19'!
removeKey: aSymbol ifAbsent: absBlock

	^self pvtBindings removeKey: aSymbol ifAbsent: absBlock! !

!BindingsAccessor methodsFor: 'environment accessing' stamp: 'svp 7/31/2002 10:46'!
root

	^self get root! !

!BindingsAccessor methodsFor: 'variable accessing' stamp: 'svp 2/1/2003 02:32'!
values

	^self pvtBindings values! !

!BindingsAccessor class methodsFor: 'class initialization' stamp: 'lr 12/4/2009 15:25'!
default

	^Default ifNil: [Default := self new]! !

!BindingsAccessor class methodsFor: 'class initialization' stamp: 'svp 2/1/2003 01:46'!
initialize
	"self initialize"

	Smalltalk at: #Bindings put: self default.
! !

!BindingsLocator methodsFor: 'exceptionDescription' stamp: 'lr 12/4/2009 15:25'!
defaultAction
	"Finds the root context for the active stack, then installs a new
	handler context that will answer the context containing the root 
	environment.  This method depends on the implementation of
	#valueWithBindings:."

	| tmp defaultActionCtx |
	tmp := thisContext.
	[tmp sender notNil] whileTrue: [tmp := tmp sender].

	defaultActionCtx := thisContext.
	[	
		tmp swapSender: thisContext sender.
		thisContext sender sender sender swapSender: nil.
		thisContext swapSender: defaultActionCtx.
	] valueWithBindings: DynamicBindings root.

	^tmp sender sender sender
! !

!BlockClosure methodsFor: '*DynamicBindings' stamp: 'damiencassou 4/5/2009 18:49'!
bindings
	"Answers the Dynamic Bindings that are currently visible in the receiver's context.  This is kind of a hack...we could do a better job of this if we used the exception handling primitives directly, however, this implementation has the benefit of being slightly more portable."
	
	| oldSender answer |
	oldSender := thisContext swapSender: self.
	answer := BindingsLocator signal.
	thisContext swapSender: oldSender.
	^answer 

	! !

!BlockClosure methodsFor: '*DynamicBindings' stamp: 'damiencassou 4/5/2009 18:38'!
forkWithBindings
	"Create and schedule a new process that has the same 
	dynamic bindings as the active process"

	^self newProcessWithBindings resume
! !

!BlockClosure methodsFor: '*DynamicBindings' stamp: 'damiencassou 4/5/2009 18:38'!
forkWithBindings: dynamicBindings
	"Create and schedule a new process with the given dynamic bindings"

	^(self newProcessWithBindings: dynamicBindings) resume! !

!BlockClosure methodsFor: '*DynamicBindings' stamp: 'damiencassou 4/5/2009 18:38'!
forkWithClampedBindings

	^self newProcessWithClampedBindings resume
! !

!BlockClosure methodsFor: '*DynamicBindings' stamp: 'damiencassou 4/5/2009 18:38'!
forkWithClampedBindings: dynamicBindings

	^(self newProcessWithClampedBindings: dynamicBindings) resume
! !

!BlockClosure methodsFor: '*DynamicBindings' stamp: 'damiencassou 4/5/2009 18:38'!
forkWithIsolatedBindings

	^self newProcessWithIsolatedBindings resume
! !

!BlockClosure methodsFor: '*DynamicBindings' stamp: 'damiencassou 4/5/2009 18:38'!
forkWithIsolatedBindings: dynamicBindings

	^(self newProcessWithIsolatedBindings: dynamicBindings) resume
! !

!BlockClosure methodsFor: '*DynamicBindings' stamp: 'damiencassou 4/5/2009 18:38'!
newProcessWithBindings
	"Create a new process that has the same dynamic bindings
	as the active process"

	^self newProcessWithBindings: Bindings get! !

!BlockClosure methodsFor: '*DynamicBindings' stamp: 'damiencassou 4/5/2009 18:38'!
newProcessWithBindings: dynamicBindings
	"Create a new process with the given dynamic bindings"

	^[self valueWithBindings: dynamicBindings] newProcess! !

!BlockClosure methodsFor: '*DynamicBindings' stamp: 'damiencassou 4/5/2009 18:39'!
newProcessWithClampedBindings
	"Create a new process with a nested set of the dynamicBindings of 
	the active process"

	^self newProcessWithClampedBindings: Bindings get

! !

!BlockClosure methodsFor: '*DynamicBindings' stamp: 'damiencassou 4/5/2009 18:39'!
newProcessWithClampedBindings: dynamicBindings
	"Create a new process with a nested set of the given dynamicBindings"

	^[Bindings clamp: self] newProcessWithBindings: dynamicBindings
! !

!BlockClosure methodsFor: '*DynamicBindings' stamp: 'damiencassou 4/5/2009 18:39'!
newProcessWithIsolatedBindings
	"Create a new process with a copy of the dynamicBindings of the 
	acitve process"

	^self newProcessWithIsolatedBindings: Bindings get

! !

!BlockClosure methodsFor: '*DynamicBindings' stamp: 'damiencassou 4/5/2009 18:39'!
newProcessWithIsolatedBindings: dynamicBindings
	"Create a new process with a copy of the given dynamicBindings"

	^[Bindings isolate: self] newProcessWithBindings: dynamicBindings
! !

!BlockClosure methodsFor: '*DynamicBindings' stamp: 'damiencassou 4/5/2009 18:39'!
valueWithBindings: dynamicBindings
	"Evaluate the receiver in the context of the given dynamicBindings"

	^self valueWithBindingsContext: thisContext
! !

!BlockClosure methodsFor: '*DynamicBindings' stamp: 'damiencassou 4/5/2009 18:39'!
valueWithBindingsContext: aContext
	"Private. Evaluate the receiver in the context of the 
	given dynamicBindings context"

	^self
		on: BindingsLocator
		do: [ :n | n resume: aContext]! !

!BlockContext methodsFor: '*DynamicBindings' stamp: 'svp 3/6/2003 16:10'!
forkWithBindings
	"Create and schedule a new process that has the same 
	dynamic bindings as the active process"

	^self newProcessWithBindings resume
! !

!BlockContext methodsFor: '*DynamicBindings' stamp: 'svp 3/6/2003 16:11'!
forkWithBindings: dynamicBindings
	"Create and schedule a new process with the given dynamic bindings"

	^(self newProcessWithBindings: dynamicBindings) resume! !

!BlockContext methodsFor: '*DynamicBindings' stamp: 'svp 2/4/2003 15:13'!
forkWithClampedBindings

	^self newProcessWithClampedBindings resume
! !

!BlockContext methodsFor: '*DynamicBindings' stamp: 'svp 2/4/2003 15:13'!
forkWithClampedBindings: dynamicBindings

	^(self newProcessWithClampedBindings: dynamicBindings) resume
! !

!BlockContext methodsFor: '*DynamicBindings' stamp: 'svp 2/4/2003 11:52'!
forkWithIsolatedBindings

	^self newProcessWithIsolatedBindings resume
! !

!BlockContext methodsFor: '*DynamicBindings' stamp: 'svp 2/4/2003 11:51'!
forkWithIsolatedBindings: dynamicBindings

	^(self newProcessWithIsolatedBindings: dynamicBindings) resume
! !

!BlockContext methodsFor: '*DynamicBindings' stamp: 'svp 3/6/2003 16:10'!
newProcessWithBindings
	"Create a new process that has the same dynamic bindings
	as the active process"

	^self newProcessWithBindings: Bindings get! !

!BlockContext methodsFor: '*DynamicBindings' stamp: 'svp 3/6/2003 16:11'!
newProcessWithBindings: dynamicBindings
	"Create a new process with the given dynamic bindings"

	^[self valueWithBindings: dynamicBindings] newProcess! !

!BlockContext methodsFor: '*DynamicBindings' stamp: 'svp 3/6/2003 16:18'!
newProcessWithClampedBindings
	"Create a new process with a nested set of the dynamicBindings of 
	the active process"

	^self newProcessWithClampedBindings: Bindings get

! !

!BlockContext methodsFor: '*DynamicBindings' stamp: 'svp 3/6/2003 16:16'!
newProcessWithClampedBindings: dynamicBindings
	"Create a new process with a nested set of the given dynamicBindings"

	^[Bindings clamp: self] newProcessWithBindings: dynamicBindings
! !

!BlockContext methodsFor: '*DynamicBindings' stamp: 'svp 3/6/2003 16:15'!
newProcessWithIsolatedBindings
	"Create a new process with a copy of the dynamicBindings of the 
	acitve process"

	^self newProcessWithIsolatedBindings: Bindings get

! !

!BlockContext methodsFor: '*DynamicBindings' stamp: 'svp 3/6/2003 16:14'!
newProcessWithIsolatedBindings: dynamicBindings
	"Create a new process with a copy of the given dynamicBindings"

	^[Bindings isolate: self] newProcessWithBindings: dynamicBindings
! !

!BlockContext methodsFor: '*DynamicBindings' stamp: 'svp 5/7/2003 02:37'!
valueWithBindings: dynamicBindings
	"Evaluate the receiver in the context of the given dynamicBindings"

	^self valueWithBindingsContext: thisContext
! !

!BlockContext methodsFor: '*DynamicBindings' stamp: 'svp 5/7/2003 02:37'!
valueWithBindingsContext: aContext
	"Private. Evaluate the receiver in the context of the 
	given dynamicBindings context"

	^self
		on: BindingsLocator
		do: [ :n | n resume: aContext]! !

!ContextPart methodsFor: '*DynamicBindings' stamp: 'lr 12/4/2009 15:25'!
bindings
	"Answers the Dynamic Bindings that are currently visible in the receiver's context.  This is kind of a hack...we could do a better job of this if we used the exception handling primitives directly, however, this implementation has the benefit of being slightly more portable."
	
	| oldSender answer |
	oldSender := thisContext swapSender: self.
	answer := BindingsLocator signal.
	thisContext swapSender: oldSender.
	^answer 

	! !

!DynamicBindingTests methodsFor: 'as yet unclassified' stamp: 'svp 5/6/2003 11:27'!
testAccessor1

	| val test1 |
	Bindings clamp:
		[#test binding: (val := 'Test Value').
		test1 := (#test binding == val).
		#test removeBinding].

	self assert: test1.! !

!DynamicBindingTests methodsFor: 'as yet unclassified' stamp: 'lr 12/4/2009 15:25'!
testAccessor2

	| val test1 test2 |
	Bindings clamp:
		[#test binding: (val := 'Test Value').
		test1 := (#test binding == val).
		#test removeBinding.
		test2 := ((Bindings at: #test ifAbsent: [ 'absent' ]) = 'absent')].

	self assert: test1.
	self assert: test2.! !

!DynamicBindingTests methodsFor: 'as yet unclassified' stamp: 'svp 5/6/2003 11:28'!
testFork
	"In this test, we examine the isolation behavior when forking a process.  We are
	checking to ensure that changes made to the environment in the forked process do
	not impact the calling process.  We also check to make sure that the forked process
	gets the current environment from the calling process at the time of the fork."

	| sem test1 test2 test3 |
	Bindings clamp:
		[#test binding: 'Testing'.
		sem := Semaphore new.
			[#test2 binding: 'Testing2'.
			test1 := (#test binding = 'Testing').
			test2 := (#test2 binding = 'Testing2').
			#test binding: 'Testing3'.
			test3 := #test binding = 'Testing3'.
			sem signal] forkWithIsolatedBindings.
		sem wait.
		self assert: test1.
		self assert: test2.
		self assert: test3.
		self assert: (#test binding = 'Testing').
		self assert: (#test2 hasBinding not)].

	self assert: (#test hasBinding not).
	self assert: (#test2 hasBinding not).! !

!DynamicBindingTests methodsFor: 'as yet unclassified' stamp: 'svp 5/6/2003 11:29'!
testSharedRuntimeEnvironment
	"In this test, we examine the isolation behavior when forking processes and when those
	processes share a runtime environment.  We are checking to ensure that both forked
	processes see the changes made to the shared runtime environment even when their
	own environments are isoldated from each other by a modification."

	| test1 test2 test3 bindings sem1 sem2 isolateSem1 isolateSem2 modSem1 modSem2 test4 |

	bindings := DynamicBindings root newChild.
	bindings at: #sharedVar put: 'Shared Value'.
	sem1 := Semaphore new.
	sem2 := Semaphore new.
	isolateSem1 := Semaphore new.
	isolateSem2 := Semaphore new.
	modSem1 := Semaphore new.
	modSem2 := Semaphore new.

	bindings forkClamped: 
		[test1 := #sharedVar binding = 'Shared Value'.
		#forceIsolation binding: 'testing'.
		isolateSem1 signal.
		modSem1 wait.
		test2 := #sharedVar binding = 'Shared Value 2'.
		sem1 signal].

	bindings forkClamped:
		[test3 := #sharedVar binding = 'Shared Value'.
		#forceIsolation binding: 'testing'.
		isolateSem2 signal.
		modSem2 wait.
		test4 := #sharedVar binding = 'Shared Value 2'.
		sem2 signal].

	isolateSem1 wait.
	isolateSem2 wait.
	bindings at: #sharedVar put: 'Shared Value 2'.
	modSem1 signal.
	modSem2 signal.
	sem1 wait.
	sem2 wait.

	self assert: test1.
	self assert: test2.
	self assert: test3.
	self assert: test4.

! !

!DynamicBindings methodsFor: 'accessing' stamp: 'lr 4/15/2010 08:55'!
at: key ifAbsent: aBlock
	| assoc tmp |
	tmp := self.
	[ (assoc := tmp associationAt: key ifAbsent: nil) isNil ] whileTrue: [ (tmp := tmp parent) ifNil: [ ^ aBlock value ] ].
	^ assoc value! !

!DynamicBindings methodsFor: 'accessing' stamp: 'svp 8/8/2002 09:21'!
atThisLevel: key ifAbsent: aBlock

	^super at: key ifAbsent: aBlock! !

!DynamicBindings methodsFor: 'accessing' stamp: 'svp 2/6/2003 22:41'!
bind: anObject to: anotherObject

	^self at: anObject put: anotherObject! !

!DynamicBindings methodsFor: 'scheduling' stamp: 'svp 2/4/2003 16:43'!
bindDuring: aBlock

	^aBlock valueWithBindings: self! !

!DynamicBindings methodsFor: 'accessing' stamp: 'svp 2/4/2003 16:53'!
bindingFor: anObject

	^self at: anObject ifAbsent: [self error: 'binding not found']! !

!DynamicBindings methodsFor: 'accessing' stamp: 'svp 3/6/2003 14:35'!
bindingFor: anObject ifNotBound: aBlock

	^self at: anObject ifAbsent: aBlock! !

!DynamicBindings methodsFor: 'scheduling' stamp: 'svp 2/4/2003 16:23'!
fork: aBlock

	^aBlock forkWithBindings: self! !

!DynamicBindings methodsFor: 'scheduling' stamp: 'svp 2/4/2003 16:24'!
forkClamped: aBlock

	^aBlock forkWithClampedBindings: self! !

!DynamicBindings methodsFor: 'scheduling' stamp: 'svp 2/4/2003 16:23'!
forkIsolated: aBlock

	^aBlock forkWithIsolatedBindings: self! !

!DynamicBindings methodsFor: 'scheduling' stamp: 'svp 2/4/2003 16:57'!
isBound: anObject

	^self includesKey: anObject! !

!DynamicBindings methodsFor: 'accessing' stamp: 'lr 4/15/2010 08:55'!
level
	| tmp level |
	tmp := self.
	level := 0.
	[ tmp isNil ]
		whileFalse:
			[ tmp := tmp parent.
			level := level + 1 ].
	^ level! !

!DynamicBindings methodsFor: 'isolation' stamp: 'svp 2/4/2003 13:36'!
newChild

	^self species new
		parent: self;
		yourself
! !

!DynamicBindings methodsFor: 'accessing' stamp: 'svp 8/8/2002 09:19'!
parent

	^parent! !

!DynamicBindings methodsFor: 'accessing' stamp: 'svp 5/6/2003 10:43'!
parent: aDynamicBindings

	parent := aDynamicBindings! !

!DynamicBindings methodsFor: 'accessing' stamp: 'lr 4/15/2010 08:55'!
root
	| tmp tmpParent |
	tmp := self.
	[ (tmpParent := tmp parent) isNil ] whileFalse: [ tmp := tmpParent ].
	^ tmp! !

!DynamicBindings class methodsFor: 'class initialization' stamp: 'gk 4/27/2006 10:34'!
clear
	"self clear"

	Root := DynamicBindings new! !

!DynamicBindings class methodsFor: 'accessing' stamp: 'svp 2/4/2003 16:04'!
example
	" DynamicBindings example "

	| sem1 sem2 proc1 proc2 |
	sem1 := Semaphore new.
	sem2 := Semaphore new.

	proc1 := [
		Bindings clamp: [
			#Test binding: 'Test #1'.

			"Wait here to demonstrate that we indeed have two
			different sets of bindings with two different 
			and concurrent values for #Test."
			sem1 wait.

			Transcript show: ('Proc1: ', #Test binding); cr.
		].
	] newProcess.

	proc2 := [
		Bindings clamp: [
			#Test binding: 'Test #2'.

			"Wait here to demonstrate that we indeed have two
			different sets of bindings with two different 
			and concurrent values for #Test."
			sem2 wait.

			Transcript show: ('Proc2: ', #Test binding); cr.
		]
	] newProcess.

	proc1 resume.
	proc2 resume.
	sem1 signal.
	sem2 signal.
! !

!DynamicBindings class methodsFor: 'class initialization' stamp: 'lr 12/4/2009 15:25'!
initialize
	"self initialize"

	Root 
		ifNil: [Root := DynamicBindings new]
		ifNotNil: [Root := DynamicBindings newFrom: Root].
! !

!DynamicBindings class methodsFor: 'instance creation' stamp: 'lr 12/4/2009 15:25'!
newFrom: anotherRuntimeEnvironment

	| answer |
	answer := self new.
	anotherRuntimeEnvironment associationsDo: [ :assn | answer add: assn].
	^answer! !

!DynamicBindings class methodsFor: 'accessing' stamp: 'svp 12/18/2002 14:48'!
root

	^Root! !

!Object methodsFor: '*DynamicBindings' stamp: 'svp 3/6/2003 16:08'!
binding
	"Answer the DynamicBinding for the receiver (if any)"

	^Bindings bindingFor: self ifNotBound: [nil]! !

!Object methodsFor: '*DynamicBindings' stamp: 'svp 4/29/2003 00:35'!
binding: anObject
	"Set the dynamic binding for the receiver, if anObject is nil, then 
	remove the receiver's dynamic binding (if any)"

	^anObject 
		ifNil: [self removeBinding]
		ifNotNil: [Bindings bind: self to: anObject]! !

!Object methodsFor: '*DynamicBindings' stamp: 'svp 3/6/2003 16:09'!
hasBinding
	"Answer whether or not the receiver has a dynamic binding"

	^Bindings includesKey: self! !

!Object methodsFor: '*DynamicBindings' stamp: 'svp 3/6/2003 16:09'!
removeBinding
	"Remove the dynamic binding associated with the receiver"

	^Bindings removeKey: self ifAbsent: []! !
BindingsAccessor initialize!
DynamicBindings initialize!
