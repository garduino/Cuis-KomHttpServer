'From Cuis 4.2 of 25 July 2013 [latest update: #1803] on 21 August 2013 at 10:43:12.347958 am'!
'Description Please enter a description for this package '!
!provides: 'KomServices' 1 0!
!classDefinition: #ApplicationService category: #KomServices!
Object subclass: #ApplicationService
	instanceVariableNames: 'name process stopSignal bindings priority'
	classVariableNames: 'Services'
	poolDictionaries: ''
	category: 'KomServices'!
!classDefinition: 'ApplicationService class' category: #KomServices!
ApplicationService class
	instanceVariableNames: ''!

!classDefinition: #TcpService category: #KomServices!
ApplicationService subclass: #TcpService
	instanceVariableNames: 'portNumber address'
	classVariableNames: 'PortAssignments'
	poolDictionaries: ''
	category: 'KomServices'!
!classDefinition: 'TcpService class' category: #KomServices!
TcpService class
	instanceVariableNames: ''!

!classDefinition: #TcpListener category: #KomServices!
Object subclass: #TcpListener
	instanceVariableNames: 'portNumber handler socketsToDestroy address'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomServices'!
!classDefinition: 'TcpListener class' category: #KomServices!
TcpListener class
	instanceVariableNames: ''!


!ApplicationService commentStamp: 'klc 12/6/2007 16:29' prior: 0!
I am an abstract superclass.  Subclass me to create your own service classes whose instances can be started and stopped.  Subclasses should override the #runWhile: method to do something useful.

An instance of an ApplicationService will have a Process associated with it while it is running.  
An ApplicationService can be in one of three states that are determined by the process and condiction instance variables:

	running: condition == #run & process notNil
	stopping: condition ~~ #run & process notNil 
	stopped: process isNil

Instance Variables:

name <String | nil> - An optional name for the given service

process <Process | nil> - The Process instance for a running service 

condition <#run | #stop> - Indicates whether the associated process should continue to run or whether it should stop running

dynamicBindings <DynamicBindings | nil> - A set of dynamic bindings that are active for the associated process; if used instead of global variables, then multiple services can run simultaneously and be bound to different sets of "globals"; see the class comments for DynamicBindings for more details

priority <Number> - The priority at which the associated process will run

!

!TcpService commentStamp: 'klc 12/6/2007 16:33' prior: 0!
I am a KomHttpServer service that listens for inbound TCP connections on a given port.

Instance Variables:

	portNumber - the TCP port number on which to listen for inbound connections

Usage:

Subclasses should override the #serve: method to process incoming TCP connections (a connected socket is passed as the sole argument to this method).  Starting and stopping instances of this class will start and stop listening on the given port number.
!

!TcpListener commentStamp: 'klc 12/6/2007 16:32' prior: 0!
I listen for TCP connections on a given port number.  

Instance variables:

	portNumber - the number of the port on which to listen for incoming connections

	handler - an object that is sent the #value: message whenever an incoming connection is established; the argument to this message is a connected socket

	socketsToDestroy - a list of sockets that need to be destroyed (usually a listening socket that is no longer needed)

Usage:

In the following example, a TcpListener is established on port 8123.  After evaluating the following example, if you open a transcript window and point a web browser to port 8123 of this machine (ie. http://localhost:8123/), you should see several http requests appear in the transcript.

	| count listener |
	count _ 0.
	listener _ TcpListener
		on: 8123
		handler: 
			[ :socket |
			count _ count + 1.
			Transcript show: socket getData.
			socket closeAndDestroy].
	listener forkAndListenWhile: [count < 5].

For an additional example of using TcpListener, see TcpService.
!

!Collection methodsFor: '*KomServices' stamp: 'gc 8/29/2008 15:25'!
asIpByteArray
	(self size = 4)
		ifFalse: [^self error: 'Invalid IP Address'].
	^ self asByteArray! !

!String methodsFor: '*KomServices' stamp: 'svp 5/15/2003 12:23'!
asIpByteArray

	| ip tmp |
	ip := self findTokens: '.'.
	(ip size = 4) ifFalse: [ ^self error: 'Invalid IP Address' ].
	ip detect: [ :ea | ea isPositiveInteger and: [ (ea asNumber <= 255) and: [ ea asNumber >= 0 ]]]
		ifNone: [ ^self error: 'Invalid IP Address' ].
	tmp := ByteArray new: 4.
	1 to: 4 do: [ :in | tmp at: in put: (ip at: in) asNumber ].
	^tmp
! !

!String methodsFor: '*KomServices' stamp: 'svp 1/21/2003 21:21'!
isPositiveInteger

	self isEmpty ifTrue: [^false].
	self detect: [ :letter | letter isDigit not] ifNone: [^true].
	^false! !

!ContextPart methodsFor: '*KomServices' stamp: 'svp 5/6/2003 13:42'!
stackDo: aBlock
	"Iterates the sender chain, evaluating aBlock for each context"

	| thisCtx |
	thisCtx := self.
	[thisCtx notNil] whileTrue:
		[aBlock value: thisCtx.
		thisCtx := thisCtx sender]
! !

!Process methodsFor: '*KomServices' stamp: 'svp 4/25/2003 18:05'!
okToTerminate

	self suspendedContext ifNotNilDo: 
		[ :suspendedCtx |
		suspendedCtx stackDo: 
			[ :ctx |
			ctx method == self class termMethod
				ifTrue: [^true]]].
	^false! !

!Process class methodsFor: '*KomServices' stamp: 'svp 5/6/2003 13:44'!
termMethod

	^Process class methodDictionary at: #terminationOkDuring:! !

!Process class methodsFor: '*KomServices' stamp: 'svp 4/25/2003 18:03'!
terminationOkDuring: aBlock

	^aBlock value! !

!ApplicationService methodsFor: 'private' stamp: 'gc 10/23/2007 23:49'!
addStopSignal

	stopSignal ifNil: [stopSignal := OrderedCollection new].
	^stopSignal add: Semaphore new.! !

!ApplicationService methodsFor: 'accessing' stamp: 'svp 5/7/2003 04:53'!
bindings

	^bindings! !

!ApplicationService methodsFor: 'accessing' stamp: 'svp 5/7/2003 04:56'!
bindings: aDynamicBindings

	bindings := aDynamicBindings! !

!ApplicationService methodsFor: 'starting and stopping' stamp: 'svp 5/6/2003 13:08'!
cancelStopRequest
	"If the service is currently in a state of stopping, this method
	will return the service to a state of running"

	self releaseProcessesWaitingForStop.
	stopSignal := nil.

! !

!ApplicationService methodsFor: 'private' stamp: 'brp 10/2/2004 15:29'!
checkRequiredBindings
	| missingBindings |
	missingBindings := self requiredBindings reject: [ :ea | self bindings includesKey: ea ].

	missingBindings notEmpty 
		ifTrue: 
			[self error: 'service is missing one or more required bindings'.
			^false].
	^true! !

!ApplicationService methodsFor: 'accessing' stamp: 'svp 5/6/2003 12:57'!
defaultName

	| title |
	title := self class name.
	^(title first isVowel ifTrue: ['an '] ifFalse: ['a ']), title! !

!ApplicationService methodsFor: 'accessing' stamp: 'svp 2/26/2003 10:32'!
defaultPriority

	^self class defaultPriority! !

!ApplicationService methodsFor: 'initialize-release' stamp: 'brp 10/2/2004 14:34'!
initialize
	super initialize.
	self register.
	self initializeBindings! !

!ApplicationService methodsFor: 'initialize-release' stamp: 'svp 5/7/2003 04:54'!
initializeBindings
	"Subclasses may wish to establish an isolated set of dynamic
	bindings by overriding this method.  A subclass may also want
	to go ahead and set some dynamic variables.  For example:

		dynamicBindings := DynamicBindings root newChild.
		dynamicBindings at: #example put: 'a value'.

	In this example, the service is assigned a new set of dynamic bindings
	that inherits the bindings of root set of bindings and the variable #example
	is assigned a value. Code that is running in the context of this service can
	then access this variable using the expressions:

		#example binding
		#example binding: aNewValue
	"

	bindings := DynamicBindings root newChild.! !

!ApplicationService methodsFor: 'queries' stamp: 'svp 4/26/2003 01:50'!
isRunning

	^process notNil and: [stopSignal isNil]! !

!ApplicationService methodsFor: 'queries' stamp: 'svp 4/24/2003 10:49'!
isSleeping

	process ifNil: [^false].
	process suspendedContext ifNotNilDo: 
		[ :suspendedCtx |
		suspendedCtx stackDo: 
			[ :ctx |
			ctx method == self class sleepMethod
				ifTrue: [^true]]].
	^false! !

!ApplicationService methodsFor: 'queries' stamp: 'svp 4/25/2003 16:12'!
isStopped

	^process isNil
! !

!ApplicationService methodsFor: 'queries' stamp: 'svp 4/26/2003 01:50'!
isStopping

	^process notNil and: [stopSignal notNil]! !

!ApplicationService methodsFor: 'starting and stopping' stamp: 'svp 4/26/2003 01:47'!
kill
	"Forcibly kill the service regardless of whether it is in a state where it is 
	safe to do so.  Use stop unless the service is not responding."

	process ifNotNil: [process terminate].
	self processTerminated.
! !

!ApplicationService methodsFor: 'accessing' stamp: 'svp 1/17/2003 16:30'!
name

	^name ifNil: [self defaultName]! !

!ApplicationService methodsFor: 'accessing' stamp: 'svp 5/6/2003 12:57'!
name: aString

	name := aString.
	process ifNotNil: [process name: aString].! !

!ApplicationService methodsFor: 'startup and shutdown' stamp: 'svp 5/6/2003 13:37'!
prepareForShutdown
	"The system is about to shutdown"! !

!ApplicationService methodsFor: 'startup and shutdown' stamp: 'svp 5/6/2003 13:37'!
prepareForStartup
	"The system just started up"! !

!ApplicationService methodsFor: 'printing' stamp: 'svp 4/25/2003 16:13'!
printOn: aStream
	aStream nextPutAll: self name.
	self isRunning ifTrue: [aStream nextPutAll: ' [running]'].
	self isStopping ifTrue: [aStream nextPutAll: ' [stopping]'].
	self isStopped ifTrue: [aStream nextPutAll: ' [stopped]']! !

!ApplicationService methodsFor: 'accessing' stamp: 'svp 1/17/2003 22:29'!
priority

	^priority ifNil: [self defaultPriority]! !

!ApplicationService methodsFor: 'accessing' stamp: 'svp 5/6/2003 12:58'!
priority: aNumber

	priority := aNumber.
	process ifNotNil: [process priority: aNumber].! !

!ApplicationService methodsFor: 'accessing' stamp: 'svp 1/17/2003 13:49'!
process

	^process! !

!ApplicationService methodsFor: 'private' stamp: 'svp 5/6/2003 13:38'!
processTerminated
	"Private.  Nils out the process inst var (indication that the service is
	stopped and signals any processes that are waiting on the service to 
	stop."

	process := nil.
	self releaseProcessesWaitingForStop.
! !

!ApplicationService methodsFor: 'registration' stamp: 'svp 1/17/2003 16:06'!
register

	self class addService: self! !

!ApplicationService methodsFor: 'private' stamp: 'svp 5/6/2003 13:39'!
releaseProcessesWaitingForStop
	"Private.  Signals any processes that are waiting on the service to stop."

	| tmp |
	stopSignal ifNotNil: 
		[tmp := stopSignal.
		stopSignal := nil.
		tmp do: [ :ea | ea signal]].! !

!ApplicationService methodsFor: 'accessing' stamp: 'svp 3/6/2003 17:49'!
requiredBindings
	"Subclasses may wish to override this method to provide a list of objects 
	that the service requires to be registered in its dynamic bindings.  When
	attempting to start a service that has required bindings, if any of the 
	required bindings are missing, an exception will be signaled and the
	service will not start."

	^#()! !

!ApplicationService methodsFor: 'running' stamp: 'brp 10/14/2004 22:22'!
runWhile: aBlock
	"subclasses should perform whatever service they provide
	in a loop that doesn't return until aBlock evaluates to true"

	"In this abstract class, we do nothing except wait on a 
	timer.  This is useful during development where we might
	want to create some do nothing services for testing purposes."

	"The two examples below illustrate the difference in using
	the #sleepFor: method and directly using a Delay.  If you 
	use the #sleepFor: method, then stopping the service will
	happen immediately while the service is sleeping; if you
	just use a Delay directly, then graceful shutdown cannot
	happen until after the delay completes.  To test this behavior
	start a service using Service newNamed: 'sleep test' 
	and then use the Star Browser interface to start and stop the service
	(note: you can allow graceful termination during any block of 
	code using Process class>>terminationOkDuring:)."

	[aBlock value] whileTrue: [self sleepFor: 1000]
	"[aBlock value] whileTrue: [(Delay forSeconds: 10) wait]"! !

!ApplicationService methodsFor: 'utility' stamp: 'svp 4/25/2003 18:09'!
sleepFor: milliseconds
	"If your service sleeps, use this method as it will indicate that it is
	safe to immediately terminate the process while it is sleeping."

	Process terminationOkDuring:
		[(Delay forMilliseconds: milliseconds) wait].
! !

!ApplicationService methodsFor: 'starting and stopping' stamp: 'brp 10/2/2004 16:07'!
start
	self verifyOkToStart ifFalse: [^self].
	process := 
			[
			[self 
				runWhile: [stopSignal isNil and: [process == Processor activeProcess]]] 
					ensure: [self processTerminated]] 
					newProcessWithBindings: self bindings.
	process 
		name: self name;
		priority: self priority;
		resume! !

!ApplicationService methodsFor: 'starting and stopping' stamp: 'svp 5/6/2003 13:09'!
stop
	"Gracefully request the service to stop.  This method returns immediately.  If
	you wish to wait until the service has stopped, follow this method with #waitForStop
	or #waitForStopUntil:."

	stopSignal := OrderedCollection new.
	process ifNotNil: [process okToTerminate ifTrue: [process terminate]].
	process ifNil: [stopSignal := nil].! !

!ApplicationService methodsFor: 'private' stamp: 'svp 4/25/2003 17:29'!
stopSignal
	"<Semaphore | nil> Indicates whether the associated process should 
	be in the process of shutting down.  The semaphore will be signaled
	for all waiting process when the service thinks it has stopped (note,
	you should not rely solely on the semaphore signal to determine that
	the service is actually stopped, instead, wait then ask the service
	#isStopped)."

	^stopSignal! !

!ApplicationService methodsFor: 'registration' stamp: 'svp 1/17/2003 16:07'!
unregister

	self stop.
	self class removeService: self! !

!ApplicationService methodsFor: 'private' stamp: 'brp 10/2/2004 15:31'!
verifyOkToStart
	self isRunning ifTrue: [^false].
	self isStopping 
		ifTrue: 
			[self error: 'Service is in the process of stopping'.
			^false].
	^ self checkRequiredBindings! !

!ApplicationService methodsFor: 'starting and stopping' stamp: 'svp 4/26/2003 01:45'!
waitForStop
	"Wait until the service is stopped"

	self isStopped ifTrue: [^self].
	self isStopping 
		ifFalse: [^self error: 'service is not in the process of stopping'].
	[self isStopping] whileTrue: [self addStopSignal wait]! !

!ApplicationService methodsFor: 'starting and stopping' stamp: 'svp 4/26/2003 01:46'!
waitForStopUntil: deadline 
	"Wait until the service is stopped or the deadline is reached"

	self isStopped ifTrue: [^self].
	self isStopping 
		ifFalse: [^self error: 'service is not in the process of stopping'].
	[self isStopping and: [Time millisecondClockValue < deadline]] whileTrue:
		[self addStopSignal waitTimeoutMSecs: deadline - Time millisecondClockValue]! !

!ApplicationService methodsFor: 'utility' stamp: 'svp 5/7/2003 04:55'!
withBindingsDo: aBlock

	^aBlock valueWithBindings: self bindings! !

!ApplicationService class methodsFor: 'registration' stamp: 'gc 7/8/2005 09:26'!
addService: aService

	self allServices add: aService
! !

!ApplicationService class methodsFor: 'accessing' stamp: 'gc 10/24/2007 00:03'!
allServices
	"Return all registered services.
	Do not override this method, override #services instead."

	^Services! !

!ApplicationService class methodsFor: 'accessing' stamp: 'svp 9/19/2003 00:55'!
defaultPriority

	^Processor userBackgroundPriority! !

!ApplicationService class methodsFor: 'initialization' stamp: 'gc 10/23/2007 23:48'!
initialize
	"self initialize"

	Services := Set new.
	Smalltalk addToStartUpList: self.
	Smalltalk addToShutDownList: self! !

!ApplicationService class methodsFor: 'instance creation' stamp: 'svp 1/17/2003 16:10'!
newNamed: aString

	^self new name: aString; yourself! !

!ApplicationService class methodsFor: 'registration' stamp: 'gc 7/8/2005 09:27'!
removeService: aService

	self allServices remove: aService ifAbsent: []
! !

!ApplicationService class methodsFor: 'accessing' stamp: 'gc 10/23/2007 23:47'!
serviceNamed: aString

	^self 
		serviceNamed: aString
		ifAbsent: [self error: 'No service by that name']! !

!ApplicationService class methodsFor: 'accessing' stamp: 'gc 7/8/2005 09:09'!
serviceNamed: aString ifAbsent: aBlock

	^self services 
		detect: [ :ea | ea name = aString ] 
		ifNone: aBlock! !

!ApplicationService class methodsFor: 'accessing' stamp: 'gk 12/6/2005 23:07'!
services
	"Return all registered services. Override this method
	in subclasses to provide specialized or partial lists
	of services."

	^ self allServices! !

!ApplicationService class methodsFor: 'accessing' stamp: 'svp 1/17/2003 16:05'!
servicesNamed: aString

	^self services select: [ :ea | ea name = aString ]! !

!ApplicationService class methodsFor: 'snapshots' stamp: 'svp 1/20/2003 22:43'!
shutDown

	self services do: 
		[ :ea | ea prepareForShutdown]! !

!ApplicationService class methodsFor: 'private' stamp: 'brp 10/14/2004 22:16'!
sleepMethod
	"This method is used to detect whether or not the 
	service is currently sleeping"

	^ self methodDict at: #sleepFor:! !

!ApplicationService class methodsFor: 'snapshots' stamp: 'svp 1/17/2003 16:10'!
startUp

	self services do: 
		[ :ea | ea prepareForStartup].
! !

!TcpService methodsFor: 'accessing' stamp: 'gc 8/29/2008 17:27'!
address
	^ address! !

!TcpService methodsFor: 'accessing' stamp: 'gc 8/29/2008 17:27'!
address: anObject
	address := anObject! !

!TcpService methodsFor: 'running' stamp: 'svp 1/21/2003 14:37'!
assignPort

	self verifyPortAvailability: self portNumber.
	PortAssignments at: self portNumber put: self.
! !

!TcpService methodsFor: 'initialization' stamp: 'gc 8/29/2008 15:48'!
initializeOnPort: portNum address: anAddress priority: priorityLevel

	portNumber := portNum.
	address := anAddress.
	priority := priorityLevel.
! !

!TcpService methodsFor: 'initialization' stamp: 'svp 5/6/2003 14:54'!
initializeOnPort: portNum priority: priorityLevel

	portNumber := portNum.
	priority := priorityLevel.
! !

!TcpService methodsFor: 'accessing' stamp: 'svp 1/17/2003 16:14'!
portNumber

	^portNumber! !

!TcpService methodsFor: 'accessing' stamp: 'svp 5/6/2003 14:53'!
portNumber: aNumber

	self isRunning 
		ifTrue: 
			[self verifyPortAvailability: aNumber.
			self stop.
			portNumber := aNumber.
			self start.]
		ifFalse: 
			[portNumber := aNumber].
! !

!TcpService methodsFor: 'startup and shutdown' stamp: 'lr 10/26/2010 21:53'!
prepareForStartup
	super prepareForStartup.
	Socket initializeNetwork! !

!TcpService methodsFor: 'printing' stamp: 'bolot 1/11/2001 15:00'!
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' port: ', self portNumber asString! !

!TcpService methodsFor: 'running' stamp: 'gc 8/29/2008 15:47'!
runWhile: aBlock 
	| listener |
	[listener := TcpListener 
		on: self portNumber
		address: self address
		handler: self.
	listener listenWhile: aBlock ]
		ensure: [ self unassignPort ]! !

!TcpService methodsFor: 'conversation' stamp: 'svp 8/20/2003 00:30'!
serve: aSocket
	"Subclasses should override this method to provide socket based 
	communications services.  Each new socket connection is handed to
	this method."

	self subclassResponsibility
! !

!TcpService methodsFor: 'starting and stopping' stamp: 'svp 4/25/2003 16:27'!
start

	self verifyOkToStart ifFalse: [^self].
	self assignPort.
	[super start] on: Error do: 
		[ :ex | self unassignPort. ex pass]
! !

!TcpService methodsFor: 'starting and stopping' stamp: 'svp 1/17/2003 16:14'!
startOn: portNum

	(self portNumber ~= portNum) ifTrue: [self stop].
	self portNumber: portNum.
	self start.! !

!TcpService methodsFor: 'running' stamp: 'svp 1/17/2003 15:26'!
unassignPort

	PortAssignments at: self portNumber ifPresent: 
		[ :srv |
		srv == self ifTrue: 
			[PortAssignments removeKey: self portNumber]]

! !

!TcpService methodsFor: 'conversation' stamp: 'gk 12/6/2005 22:57'!
value: aSocket
	"This method is invoked by the TcpListener"

	[self serve: aSocket] newProcessWithClampedBindings
		name: (self name, ' connection');
		resume
! !

!TcpService methodsFor: 'running' stamp: 'svp 1/21/2003 14:37'!
verifyPortAvailability: aNumber

	PortAssignments at: aNumber ifPresent: 
		[ :otherService | 
		self error: ('a service is already running on port ', self portNumber asString)].

! !

!TcpService class methodsFor: 'class initialization' stamp: 'svp 5/6/2003 14:51'!
initialize
	"self initialize"

	PortAssignments := Dictionary new.! !

!TcpService class methodsFor: 'instance creation' stamp: 'gc 8/29/2008 17:15'!
on: portNumber
	^self new
		portNumber: portNumber;
		yourself
! !

!TcpService class methodsFor: 'instance creation' stamp: 'gc 9/2/2008 23:35'!
on: portNumber named: processName
	^(self on: portNumber)
		name: processName;
		yourself
! !

!TcpService class methodsFor: 'accessing' stamp: 'gc 7/8/2005 09:45'!
serviceOnPort: portNumber
	^ self serviceOnPort: portNumber
		ifAbsent: [self error: 'No service on that port']! !

!TcpService class methodsFor: 'accessing' stamp: 'gc 7/8/2005 09:45'!
serviceOnPort: portNumber ifAbsent: aBlock
	^ self services
		detect: [:service | service portNumber = portNumber]
		ifNone: aBlock! !

!TcpService class methodsFor: 'accessing' stamp: 'gk 12/6/2005 23:07'!
services
	"Return all registered TcpServices."

	^ super services select: [:service | service isKindOf: TcpService]! !

!TcpService class methodsFor: 'instance creation' stamp: 'svp 1/17/2003 14:16'!
startOn: portNumber

	^(self on: portNumber) start; yourself
! !

!TcpService class methodsFor: 'instance creation' stamp: 'gc 9/2/2008 23:36'!
startOn: portNumber named: aString

	^(self on: portNumber
		named: aString)
		start;
		yourself
! !

!TcpListener methodsFor: 'accessing' stamp: 'jf 8/18/2003 01:08'!
acceptTimeout
	^self class acceptTimeout! !

!TcpListener methodsFor: 'accessing' stamp: 'gc 8/29/2008 15:27'!
address
	^ address! !

!TcpListener methodsFor: 'accessing' stamp: 'gc 8/29/2008 15:52'!
address: aStringOrCollection
	address := aStringOrCollection asIpByteArray! !

!TcpListener methodsFor: 'accessing' stamp: 'svp 5/7/2003 03:28'!
backlogSize

	^self class backlogSize! !

!TcpListener methodsFor: 'private' stamp: 'gc 8/29/2008 15:41'!
bind: listener withBacklogSize: backlogSize 
	address 
		ifNil: 
			[ listener 
				listenOn: portNumber
				backlogSize: backlogSize ]
		ifNotNil: 
			[ listener 
				listenOn: portNumber
				backlogSize: backlogSize
				interface: address ]! !

!TcpListener methodsFor: 'initialize-release' stamp: 'lr 4/15/2010 08:55'!
destroySockets
	socketsToDestroy notNil
		ifTrue: [ socketsToDestroy do: [ :ea | ea destroy ] ].
	socketsToDestroy := OrderedCollection new! !

!TcpListener methodsFor: 'private' stamp: 'svp 3/4/2003 14:11'!
forkAndListenWhile: aBlock

	[self listenWhile: aBlock] fork
! !

!TcpListener methodsFor: 'initialize-release' stamp: 'gc 8/29/2008 15:00'!
initialize
	socketsToDestroy := OrderedCollection new! !

!TcpListener methodsFor: 'initialization' stamp: 'gc 8/30/2008 16:48'!
initializeOnPort: aPort address: anAddress handler: aValuableObject 
	self 
		initializeOnPort: aPort
		handler: aValuableObject.
	anAddress ifNotNil: [self address: anAddress]! !

!TcpListener methodsFor: 'initialize-release' stamp: 'gc 8/29/2008 15:01'!
initializeOnPort: aNumber handler: aValuableObject 
	portNumber := aNumber.
	handler := aValuableObject
! !

!TcpListener methodsFor: 'private' stamp: 'svp 1/17/2003 13:45'!
listen
	"This is the listening loop.  It runs forever accepting
	inbound sockect connections."

	self listenWhile: [true]! !

!TcpListener methodsFor: 'private' stamp: 'svp 4/25/2003 18:08'!
listenWhile: aBlock
	"This is the listening loop.  It runs while aBlock evaluates
	to true.  When the loop terminates or when the process running
	the loop is terminated, any listening sockets will be destroyed."

	self socketClass initializeNetwork.
	[self pvtListenLoop: aBlock] ensure: [self destroySockets]
! !

!TcpListener methodsFor: 'accessing' stamp: 'svp 5/7/2003 03:29'!
listenerDestroyDelay

	^self class listenerDestroyDelay! !

!TcpListener methodsFor: 'private' stamp: 'svp 4/15/2003 23:25'!
newListener: backlogSize
	"Create a new socket that listens on our port.  The backlog is how many simultaneous 
	connections to accept at the same time"

	[^self pvtNewListener: backlogSize] on: Error do: [].

	"Try one more time after initializing the network"
	Socket initializeNetwork.
	^self pvtNewListener: backlogSize.! !

!TcpListener methodsFor: 'accessing' stamp: 'svp 1/17/2003 13:39'!
portNumber

	^portNumber! !

!TcpListener methodsFor: 'printing' stamp: 'svp 1/17/2003 11:29'!
printOn: aStream

	aStream nextPutAll: (self class name asString, ' port: ', self portNumber asString).
! !

!TcpListener methodsFor: 'private' stamp: 'svp 8/19/2003 23:48'!
pvtListenLoop: aBlock
	| socket listener |

	listener := self newListener: self backlogSize.

	"If the listener is not valid then the we cannot use the
	BSD style accept() mechanism."
	listener isValid ifFalse: [^self pvtOldListenLoop: aBlock].

	aBlock whileTrue: 
		[Process terminationOkDuring: 
			[[socket := listener waitForAcceptFor: self acceptTimeout ifTimedOut: [nil]]
				ifCurtailed: [listener destroy]].
		socket ifNotNil:
			[socket isConnected
				ifTrue: [handler value: socket]
				ifFalse: [socket destroy].
			socket := nil].
		listener isValid ifFalse: 
			[(Delay forMilliseconds: self listenerDestroyDelay) wait.
			listener destroy.
			listener := self newListener: self backlogSize]]! !

!TcpListener methodsFor: 'private' stamp: 'gc 8/29/2008 15:41'!
pvtNewListener: backlogSize 
	"Create a new socket that listens on our port.  The backlog is how many simultaneous 
	connections to accept at the same time"
	| listener |
	listener := self socketClass newTCP.
	self socketsToDestroy add: listener.
	self 
		bind: listener
		withBacklogSize: backlogSize.
	^ listener! !

!TcpListener methodsFor: 'private' stamp: 'gc 8/30/2008 14:29'!
pvtOldListenLoop: aBlock
	"see comment on ConnectionQueue>>oldStyleListenLoop"
	| socket |
	socket := nil.
	aBlock whileTrue:
		[socket ifNil:
			["try to create a new socket for listening"
			socket := Socket createIfFail: [nil]].
		socket 
			ifNil: [Process terminationOkDuring: [(Delay forMilliseconds: 100) wait]]
			ifNotNil:
				[socket isUnconnected ifTrue: 
					[self bind: socket withBacklogSize: self backlogSize.
					self socketsToDestroy add: socket].
				Process terminationOkDuring: 
					[[socket waitForConnectionUntil: (Socket deadlineSecs: 10)]
						ensure: [socket destroy]].
				socket isConnected
					ifTrue: 
						["connection established"
						handler value: socket.
						socket := nil]
					ifFalse:
						[socket isWaitingForConnection
							ifFalse: [socket destroy. socket := nil]]]]! !

!TcpListener methodsFor: 'accessing' stamp: 'svp 1/17/2003 11:32'!
socketClass

	^Socket! !

!TcpListener methodsFor: 'accessing' stamp: 'svp 5/6/2003 14:08'!
socketsToDestroy

	^socketsToDestroy ifNil: 
		[socketsToDestroy := OrderedCollection new].
! !

!TcpListener class methodsFor: 'preferences' stamp: 'svp 5/7/2003 02:44'!
acceptTimeout

	^#'TcpListener-acceptTimeout' binding ifNil: [10]! !

!TcpListener class methodsFor: 'preferences' stamp: 'svp 5/7/2003 03:26'!
acceptTimeout: seconds

	^#'TcpListener-acceptTimeout' binding: seconds! !

!TcpListener class methodsFor: 'preferences' stamp: 'svp 5/7/2003 02:46'!
backlogSize

	^#'TcpListener-backlogSize' binding ifNil: [10]! !

!TcpListener class methodsFor: 'preferences' stamp: 'svp 5/7/2003 03:26'!
backlogSize: anInteger

	^#'TcpListener-backlogSize' binding: anInteger! !

!TcpListener class methodsFor: 'preferences' stamp: 'svp 5/7/2003 03:29'!
listenerDestroyDelay

	^#'TcpListener-listenerDestroyDelay' binding ifNil: [10]! !

!TcpListener class methodsFor: 'preferences' stamp: 'svp 5/7/2003 03:30'!
listenerDestroyDelay: milliseconds

	^#'TcpListener-listenerDestroyDelay' binding: milliseconds! !

!TcpListener class methodsFor: 'instance creation' stamp: 'gc 8/29/2008 15:47'!
on: aPort address: anAddress handler: aBlock

	^self new initializeOnPort: aPort address: anAddress handler: aBlock 

! !

!TcpListener class methodsFor: 'instance creation' stamp: 'svp 1/17/2003 14:26'!
on: portNumber handler: aValuable

	^self new
		initializeOnPort: portNumber
		handler: aValuable
! !
ApplicationService initialize!
TcpService initialize!
