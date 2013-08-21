'From Cuis 4.2 of 25 July 2013 [latest update: #1803] on 21 August 2013 at 10:43:14.372686 am'!
'Description Please enter a description for this package '!
!provides: 'KomHttpServer' 1 0!
!requires: 'Cuis-System-Hashing' 1 0!
!requires: 'Cuis-CompatibilityWithOtherSmalltalks' 1 0!
!requires: 'Cuis-Network-MIME' 1 0!
!requires: 'DynamicBindings' 1 0!
!requires: 'KomServices' 1 0!
!classDefinition: #HttpService category: #'KomHttpServer-Kernel'!
TcpService subclass: #HttpService
	instanceVariableNames: 'plug mode'
	classVariableNames: 'ServerHostName ServerType'
	poolDictionaries: ''
	category: 'KomHttpServer-Kernel'!
!classDefinition: 'HttpService class' category: #'KomHttpServer-Kernel'!
HttpService class
	instanceVariableNames: ''!

!classDefinition: #HttpFormDictionary category: #'KomHttpServer-Protocol'!
Dictionary subclass: #HttpFormDictionary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Protocol'!
!classDefinition: 'HttpFormDictionary class' category: #'KomHttpServer-Protocol'!
HttpFormDictionary class
	instanceVariableNames: ''!

!classDefinition: #ComancheModule category: #'KomHttpServer-Modules'!
Object subclass: #ComancheModule
	instanceVariableNames: 'subModules'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'ComancheModule class' category: #'KomHttpServer-Modules'!
ComancheModule class
	instanceVariableNames: ''!

!classDefinition: #ModAlias category: #'KomHttpServer-Modules'!
ComancheModule subclass: #ModAlias
	instanceVariableNames: 'pathPrefix'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'ModAlias class' category: #'KomHttpServer-Modules'!
ModAlias class
	instanceVariableNames: ''!

!classDefinition: #ModAuth category: #'KomHttpServer-Modules'!
ComancheModule subclass: #ModAuth
	instanceVariableNames: 'realm authDb'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'ModAuth class' category: #'KomHttpServer-Modules'!
ModAuth class
	instanceVariableNames: ''!

!classDefinition: #ModAutoIndex category: #'KomHttpServer-Modules'!
ComancheModule subclass: #ModAutoIndex
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'ModAutoIndex class' category: #'KomHttpServer-Modules'!
ModAutoIndex class
	instanceVariableNames: ''!

!classDefinition: #ModCore category: #'KomHttpServer-Modules'!
ComancheModule subclass: #ModCore
	instanceVariableNames: 'serverRoot'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'ModCore class' category: #'KomHttpServer-Modules'!
ModCore class
	instanceVariableNames: ''!

!classDefinition: #ModDir category: #'KomHttpServer-Modules'!
ComancheModule subclass: #ModDir
	instanceVariableNames: 'directoryIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'ModDir class' category: #'KomHttpServer-Modules'!
ModDir class
	instanceVariableNames: ''!

!classDefinition: #ModDoc category: #'KomHttpServer-Modules'!
ComancheModule subclass: #ModDoc
	instanceVariableNames: 'documentRoot'
	classVariableNames: 'DelimiterTranslation'
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'ModDoc class' category: #'KomHttpServer-Modules'!
ModDoc class
	instanceVariableNames: ''!

!classDefinition: #ModVhostDoc category: #'KomHttpServer-Modules'!
ModDoc subclass: #ModVhostDoc
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'ModVhostDoc class' category: #'KomHttpServer-Modules'!
ModVhostDoc class
	instanceVariableNames: ''!

!classDefinition: #ModFile category: #'KomHttpServer-Modules'!
ComancheModule subclass: #ModFile
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'ModFile class' category: #'KomHttpServer-Modules'!
ModFile class
	instanceVariableNames: ''!

!classDefinition: #ModLog category: #'KomHttpServer-Modules'!
ComancheModule subclass: #ModLog
	instanceVariableNames: 'logger'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'ModLog class' category: #'KomHttpServer-Modules'!
ModLog class
	instanceVariableNames: ''!

!classDefinition: #ModMulti category: #'KomHttpServer-Modules'!
ComancheModule subclass: #ModMulti
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'ModMulti class' category: #'KomHttpServer-Modules'!
ModMulti class
	instanceVariableNames: ''!

!classDefinition: #ModNotFound category: #'KomHttpServer-Modules'!
ComancheModule subclass: #ModNotFound
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'ModNotFound class' category: #'KomHttpServer-Modules'!
ModNotFound class
	instanceVariableNames: ''!

!classDefinition: #ModSession category: #'KomHttpServer-Modules'!
ComancheModule subclass: #ModSession
	instanceVariableNames: 'sessions mutex lastCleanup secondsToLive'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'ModSession class' category: #'KomHttpServer-Modules'!
ModSession class
	instanceVariableNames: ''!

!classDefinition: #ModVhost category: #'KomHttpServer-Modules'!
ComancheModule subclass: #ModVhost
	instanceVariableNames: 'template'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'ModVhost class' category: #'KomHttpServer-Modules'!
ModVhost class
	instanceVariableNames: ''!

!classDefinition: #ModVhostAlias category: #'KomHttpServer-Modules'!
ComancheModule subclass: #ModVhostAlias
	instanceVariableNames: 'host'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'ModVhostAlias class' category: #'KomHttpServer-Modules'!
ModVhostAlias class
	instanceVariableNames: ''!

!classDefinition: #HttpAdaptor category: #'KomHttpServer-Protocol'!
Object subclass: #HttpAdaptor
	instanceVariableNames: 'stream httpService postProcessors'
	classVariableNames: 'LastTimeStamp LastTimeStampTime'
	poolDictionaries: ''
	category: 'KomHttpServer-Protocol'!
!classDefinition: 'HttpAdaptor class' category: #'KomHttpServer-Protocol'!
HttpAdaptor class
	instanceVariableNames: ''!

!classDefinition: #HttpRequest category: #'KomHttpServer-Protocol'!
Object subclass: #HttpRequest
	instanceVariableNames: 'url stream header rawUrl properties'
	classVariableNames: 'EndOfRequestHeaderMarker'
	poolDictionaries: ''
	category: 'KomHttpServer-Protocol'!
!classDefinition: 'HttpRequest class' category: #'KomHttpServer-Protocol'!
HttpRequest class
	instanceVariableNames: ''!

!classDefinition: #HttpResponse category: #'KomHttpServer-Protocol'!
Object subclass: #HttpResponse
	instanceVariableNames: 'status contents contentType contentLength fields cookies'
	classVariableNames: 'StatusCodes StatusSymbols'
	poolDictionaries: ''
	category: 'KomHttpServer-Protocol'!
!classDefinition: 'HttpResponse class' category: #'KomHttpServer-Protocol'!
HttpResponse class
	instanceVariableNames: ''!

!classDefinition: #HttpPartialResponse category: #'KomHttpServer-Protocol'!
HttpResponse subclass: #HttpPartialResponse
	instanceVariableNames: 'producerBlock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Protocol'!
!classDefinition: 'HttpPartialResponse class' category: #'KomHttpServer-Protocol'!
HttpPartialResponse class
	instanceVariableNames: ''!

!classDefinition: #KomAuthDb category: #'KomHttpServer-Modules'!
Object subclass: #KomAuthDb
	instanceVariableNames: 'passwords'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'KomAuthDb class' category: #'KomHttpServer-Modules'!
KomAuthDb class
	instanceVariableNames: ''!

!classDefinition: #KomModuleVisitor category: #'KomHttpServer-Modules'!
Object subclass: #KomModuleVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'KomModuleVisitor class' category: #'KomHttpServer-Modules'!
KomModuleVisitor class
	instanceVariableNames: ''!

!classDefinition: #KomModuleValidator category: #'KomHttpServer-Modules'!
KomModuleVisitor subclass: #KomModuleValidator
	instanceVariableNames: 'problems'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'KomModuleValidator class' category: #'KomHttpServer-Modules'!
KomModuleValidator class
	instanceVariableNames: ''!

!classDefinition: #KomSession category: #'KomHttpServer-Modules'!
Object subclass: #KomSession
	instanceVariableNames: 'id attributes lastAccess'
	classVariableNames: 'LastSessionID'
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'KomSession class' category: #'KomHttpServer-Modules'!
KomSession class
	instanceVariableNames: ''!

!classDefinition: #ModuleAssembly category: #'KomHttpServer-Modules'!
Object subclass: #ModuleAssembly
	instanceVariableNames: 'moduleStack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'ModuleAssembly class' category: #'KomHttpServer-Modules'!
ModuleAssembly class
	instanceVariableNames: ''!

!classDefinition: #MultipartChunk category: #'KomHttpServer-Protocol'!
Object subclass: #MultipartChunk
	instanceVariableNames: 'properties multipartBoundary stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Protocol'!
!classDefinition: 'MultipartChunk class' category: #'KomHttpServer-Protocol'!
MultipartChunk class
	instanceVariableNames: ''!

!classDefinition: #NetworkHost category: #'KomHttpServer-Kernel'!
Object subclass: #NetworkHost
	instanceVariableNames: 'fullName port name type'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Kernel'!
!classDefinition: 'NetworkHost class' category: #'KomHttpServer-Kernel'!
NetworkHost class
	instanceVariableNames: ''!

!classDefinition: #KomLogger category: #'KomHttpServer-Modules'!
Stream subclass: #KomLogger
	instanceVariableNames: 'streams'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'KomLogger class' category: #'KomHttpServer-Modules'!
KomLogger class
	instanceVariableNames: ''!

!classDefinition: #KomTracer category: #'KomHttpServer-Modules'!
KomLogger subclass: #KomTracer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'KomHttpServer-Modules'!
!classDefinition: 'KomTracer class' category: #'KomHttpServer-Modules'!
KomTracer class
	instanceVariableNames: ''!


!HttpService commentStamp: '<historical>' prior: 0!
I am a comanche service that listens for inbound HTTP connectinos on a given port.

Usage:

Subclasses should override the #processHttpRequest: method to process incoming HTTP requests (an HttpRequest is passed as the sole argument to this method).  The #processHttpRequest: method should always answer an instance of an HttpResponse.  Starting and stopping instances of this class will start and stop listening on the given port number.  You may also use instances of this class in a pluggable manner rather than subclassing (see examples below).

Instance Variables:

plug - An object that responds to the message #threadSafeValue: (typically a BlockContext or a MessageSend).  If this variable is not nil, then the default implementation of #processHttpRequest: will send #threadSafeValue: to this object and answer the result.  This enables ComancheHttpService to be used in a pluggable manner.  

Pluggable Examples (MessageSend):

	(HttpService on: 8080 named: 'Example Http Service')
		onRequestDispatch: #processRequest: to: SomeGlobal;
		start

Pluggable Examples (BlockContext):

	(HttpService on: 8080 named: 'Example Http Service')
		onRequestDo: [ :httpRequest | SomeGlobal processRequest: httpRequest ];
		start
!

!HttpFormDictionary commentStamp: '<historical>' prior: 0!
kom/4.10 (Comanche beta 4.10)
HttpFormDictionary
bolot 6/22/2001 12:09

- use this instead of plain Dictionary for GET and POST forms
- maintains multiple values for the same field
-- but is backwards compatible, #at: returns the first value (?)
-- so do #booleanAt:, #numberAt:
- to access the actual value at key, use #rawAt:
-- returns an OrderedCollection

TODO:
- file upload support
-- idea: first value is file name, second is FileStream?

Koubo 3/19/2002 12:25
fixed #at: and #at:ifAbsent: returns a String when the value had only one item. however, they returns a copied Collection of the value when it had multiple items.
!

!ComancheModule commentStamp: '<historical>' prior: 0!
Comanche modules response to the message #processHttp and are responsible for examining the http serving environment and possibly altering that environment.  They can act a filters on both the inbound request and the outbound response.  They may also produce content (and even filter content).  Modules for any given server are arranged in a hierarchy that is formed by following the path of subModules.  Any given module may or may not process its subModules.  The method #processHttp answers a boolean to indicate whether or not a response has been made available.  It is up to the parent module to decide whether or not to continue processing other modules if a response is available.  The default behavior is to stop processing and return once a response is made available.!

!ModAlias commentStamp: '<historical>' prior: 0!
This module will attempt to match a prefix to the URL of a request.  If a match is made, its subModules will be processed.  If not, then its subModules are not processed.  The following is an example:

	| ma |
	ma _ ModuleAssembly core.
	ma alias: '/hello' to: 
		[ma addPlug: 
			[ :request |
			HttpResponse fromString: 'This is the aliased content']].
	ma addPlug: 
		[ :request |
		HttpResponse fromString: 'This is the default content'].
	(HttpService startOn: 8080 named: 'Example') plug: ma rootModule

In this example, the urls http://localhost:8080/hello and http://localhost:8080/hello/some/more/path will show the aliased content while any url where the path does not begin with '/hello' will show the default content.!

!ModAuth commentStamp: '<historical>' prior: 0!
This module, when present, requires that a request has user authentication info.  It does not authenticate the supplied user id and password.  I send the message #verifyPassword:forUser: to my authDb instance variable to validate user ids and passwords.  You may supply your own user management object.  A very simple authentication database is provided by the KomAuthDb class.  Currently, this module only supports Basic authentication.

Here is an example of a simple configuration that authentications users:

	| ma authdb |
	authdb := KomAuthDb new.
	authdb addUser: 'admin' withPassword: 'password'.
	ma := ModuleAssembly core.
	ma authenticate: authdb realm: 'Demo'.
	ma addPlug:
		[ :request |
		HttpResponse fromString: 'Hello world!!'].
	(HttpService startOn: 8080 named: 'Example') plug: ma rootModule. 

Future enhancement ideas:

- add support for more types of authentication!

!ModAutoIndex commentStamp: '<historical>' prior: 0!
This module provides automatically generated listings of directory contents.

Required Bindings:

	HttpRequest current
	ModDir serverDirectory

Exported Bindings:

	<none>

The following is an example:

	| ma |
	ma := ModuleAssembly core.
	ma documentRoot: FileDirectory default fullName.
	ma directoryIndex: 'index.html index.htm'.
	ma serveFiles.
	(HttpService startOn: 8080 named: 'Example') plug: ma rootModule

This example just starts a file server on your default directory.  Any directories (that don't have an index file) will be rendered as listings by ModAutoIndex.!

!ModCore commentStamp: '<historical>' prior: 0!
The is the Core module.  It extracts a few things from a request and can establish a server root directory (which is not required).  It will also process TRACE and OPTIONS requests.!

!ModDir commentStamp: '<historical>' prior: 0!
This module provides basic directory handling (including redirects to handle the trailing slash problem).

Required Bindings:

	HttpRequest current
	ModDoc fullFilePath

Exported Bindings:

	ModDir serverDirectory

The following is an example:

	| ma |
	ma := ModuleAssembly core.
	ma documentRoot: FileDirectory default fullName.
	ma directoryIndex: 'index.html index.htm'.
	ma serveFiles.
	(HttpService startOn: 8080 named: 'Example') plug: ma rootModule

This example just starts a file server on your default directory.  Any directories (that don't have an index file) will be rendered as listings by ModAutoIndex.!

!ModDoc commentStamp: '<historical>' prior: 0!
The core module for handling traditional web server duties

Required Bindings: 

	ModCore path

Exported Bindings:

	ModDoc documentRoot
	ModDoc relativeFilePath

The following is an example:

	| ma |
	ma := ModuleAssembly core.
	ma documentRoot: FileDirectory default fullName.
	ma directoryIndex: 'index.html index.htm'.
	ma serveFiles.
	(HttpService startOn: 8080 named: 'Example') plug: ma rootModule

This example just starts a file server on your default directory.  Any directories (that don't have an index file) will be rendered as listings by ModAutoIndex.
!

!ModVhostDoc commentStamp: '<historical>' prior: 0!
Used for determining the document root for mass virtual hosting (where the virtual server name is incorporated into the document root).  See the class comments for ModVhost for an example of virtual hosting.!

!ModFile commentStamp: '<historical>' prior: 0!
This module serves a file based on the setting of ModCore fullFilePath.

Required Bindings:

	ModDoc documentRoot
	ModDoc relativeFilePath

Exported Bindings:

	<none>

The following is an example:

	| ma |
	ma := ModuleAssembly core.
	ma documentRoot: FileDirectory default fullName.
	ma directoryIndex: 'index.html index.htm'.
	ma serveFiles.
	(HttpService startOn: 8080 named: 'Example') plug: ma rootModule

This example just starts a file server on your default directory.  Any directories (that don't have an index file) will be rendered as listings by ModAutoIndex.!

!ModLog commentStamp: '<historical>' prior: 0!
Instance Variable:

logger <Stream> - a stream for writing out request/response pairs 

Examples:

The following example will log requests to the Transcript:

	| ma |
	ma _ ModuleAssembly core.
	ma logTo: (KomLogger on: Transcript).
	ma addPlug: [ :request | HttpResponse fromString: 'Hello World!!'].
	(HttpService startOn: 8080 named: 'Example') plug: ma rootModule

It is possible to segregate logging by inserting #logTo: messages a different places in the module assembly...one example using ModAlias follows:

	| ma |
	Smalltalk at: #MyHttpLog put: (WriteStream on: '').
	ma _ ModuleAssembly core.
	ma alias: '/log1' to: [ma logTo: (KomLogger on: Transcript)].
	ma alias: '/log2' to: [ma logTo: (KomLogger on: (Smalltalk at: #MyHttpLog))].
	ma addPlug: [ :request | HttpResponse fromString: 'Hello World!!'].
	(HttpService startOn: 8080 named: 'Example') plug: ma rootModule

In this example, all requests will respond with 'Hello World!!', but requests whose url begins with '/log1' will be logged to the transcript and requests whose url begins with '/log2' will be logged to MyHttpLog.  Other requests will not be logged.

In the next example, we illustrate how to start enable logging, and also how to open a transcript window on that log.  Output sent to the logger will be concurrently written to the WriteStream "MyHttpLog" and to the TranscriptStream opened by the #openTranscript message.

	| ma logger |
	Smalltalk at: #MyHttpLog put: (WriteStream on: '').
	ma _ ModuleAssembly core.
	ma logTo: (logger := KomLogger on: (Smalltalk at: #MyHttpLog)).
	ma addPlug: [ :request | HttpResponse fromString: 'Hello World!!'].
	(HttpService startOn: 8080 named: 'Example') plug: ma rootModule.
	logger openTranscript.

Tip: With the SharedStreams package (on SqueakMap), a number of asynchronous logging configurations can be constructed.!

!ModMulti commentStamp: '<historical>' prior: 0!
This module simply processes its subModules.  It is handy when you'd like to wrap some modules together a work with them as a unit.

Example:

In the following example, a ModuleAssembly instantiated with #new will have a ModMulti instance as the root of the module stack.  Adding further modules to the assembly results in those modules being added to the ModMulti instance.  In this example, we create an assembly that could be used as the standard document server in a number of places in our main module assembly.  In this manner, we can reuse module assemblies.  Changes to our standard document server assembly would affect the behavior every where we refer to that assembly (also, direct manipulation of the module instances after construction will affect the behavior everywhere an assembly is refered...this may even eliminate the need to rebuild your module assembly).

	| stdDocs ma |

	"Create a stdDocs assembly"
	stdDocs := ModuleAssembly new.
	stdDocs directoryIndex: 'index.html index.htm'.
	stdDocs serveFiles.
	stdDocs notFound.

	"Now create our main assembly"
	ma := ModuleAssembly core.
	ma alias: '/one' to: 
		[ma documentRoot: (FileDirectory default directoryNamed: 'one').
		ma addAssembly: stdDocs].
	ma alias: '/two' to:
		[ma documentRoot: (FileDirectory default directoryNamed: 'two').
		ma addAssembly: stdDocs].
	ma addPlug: 
		[:request | HttpResponse fromString: 
			'<a href="one">go to one</a> <a href="two">go to two</a>'].
	(HttpService startOn: 8080 named: 'Example') module: ma rootModule.

!

!ModNotFound commentStamp: '<historical>' prior: 0!
I am a simple module that if reached will generate a not found response.  This is useful if you do not wish to continue processing modules add some point in your module assembly.

The following is a simple example using the #notFound message of ModuleAssembly:

	| ma |
	ma := ModuleAssembly core.
	ma alias: '/one' to: 
		[ma documentRoot: (FileDirectory default directoryNamed: 'one').
		ma directoryIndex: 'index.html index.htm'.
		ma serveFiles.
		ma notFound].
	ma addPlug: 
		[:request | HttpResponse fromString: 
			('<a href="one">go to one</a> If the path begins with',
			' "/one" we should never end up here')].
	(HttpService startOn: 8080 named: 'Example') module: ma rootModule.

By contrast, the following example will end up in our default response if no matching file is found.

	| ma |
	ma := ModuleAssembly core.
	ma alias: '/one' to: 
		[ma documentRoot: (FileDirectory default directoryNamed: 'one').
		ma directoryIndex: 'index.html index.htm'.
		ma serveFiles].
	ma addPlug: 
		[:request | HttpResponse fromString: '<a href="one">go to one</a>'].
	(HttpService startOn: 8080 named: 'Example') module: ma rootModule.
!

!ModSession commentStamp: '<historical>' prior: 0!
I add provide a session context to sub modules.  To access the current session, use "KomSession current"...all requests passing through this module will be assigned a session, and responses from its subModules (if any) will be given a cookie to assign the session id.

Notes:  This is basically a straight translation of the old Comanche session handling.  Ideas for the future include:

- add the ability to use post/query fields instead of cookies
- add methods to assist in building Urls with session query parameters added
- be able to specify the cookie/field name that is used to store the session
- be able to tie sessions to a specific IP address (to minimize risk of man in the middle attacks)

Required Bindings:

	HttpRequest current

Exported Bindings:

	KomSession current

Example:

In the following example, we enable session tracking, set the session timeout to 30 minutes, and show the session id in the web browser.

	| ma |
	ma _ ModuleAssembly core.
	ma trackSessions.
	ma sessionTimeout: 30.  "Sets the session timeout to 30 minutes"
	ma addPlug:
		[:request | 
		HttpResponse fromString: 
			('Your session id is: ', KomSession current id)].
	(HttpService startOn: 8080 named: 'Example') plug: ma rootModule.


!

!ModVhost commentStamp: '<historical>' prior: 0!
This module exports a string that is created based on a template.  Other modules may access and use the resulting string as they see fit (using "ModVhost string").  ModVhostDoc uses the ModVhost string to establish a document root based on the virtual host name.  ModVhostAlias uses the ModVhost string to look for a match when deciding whether or not to process its subModules.  See the examples below for more details.

The format of the template string is designed to be compatible with Apache's virtual hosting support.  The following is adapted from the Apache documentation:

-----
%% inserts a percent
%p inserts the socket port number (as it is known to the client)
%N.M inserts parts of the fully qualified domain name (FQDN, as it is know to the client)

N and M are used to specify substrings of the FQDN. N selects from the dot-separated components of the FQDN, and M selects characters within whatever N has selected. M is optional and defaults to zero if it isn't present; the dot must be present if and only if M  is present. The interpretation is as follows:

0 	the whole name
1 	the first part
2 	the second part
-1 	the last part
-2 	the penultimate part
2+ 	the second and all subsequent parts
-2+ 	the penultimate and all preceding parts
1+ and -1+ 	the same as 0

If N or M is greater than the number of parts available a single underscore is interpolated.
-----

The following is an example configuration for mass virtual hosting of file based content (it uses ModVhostDoc to interpret the host string produced by ModVhost):

	| ma |
	ma _ ModuleAssembly core.
	ma virtualDocumentRoot: (FileDirectory default fullNameFor: '%0') do:
		[ma directoryIndex: 'index.html index.htm'.
		ma serveFiles].
	(HttpService startOn: 8080 named: 'Example') module: ma rootModule.

In this example, the document root for the web server will be determined using the entire FQDN as the final element in the document root.

Of course, virtual hosting does not need to be restricted to file serving.  Similar to ModAlias, you can use the virtual host name to control which modules get processed.  The following is another example (it uses makes use of ModVhostAlias):

	| ma |
	ma _ ModuleAssembly core.
	ma virtualHost: 'localhost' do:
		[ma addPlug: 
			[ :request |
			HttpResponse fromString: 'You are seeing content for localhost']].
	ma addPlug:
		[ :request |
		HttpResponse fromString: 'You are seeing default content'].
	(HttpService startOn: 8080 named: 'Example') module: ma rootModule.

In this example, you will see different content depending on whether you access the server using http://localhost:8080 or http://127.0.0.1:8080.  Another example might be hosting Seaside (see http://www.beta4.com/seaside2 for information) applications on a separate host name.
!

!ModVhostAlias commentStamp: '<historical>' prior: 0!
See the class comments for ModVhost for using Comanche's virtual hosting features.!

!HttpAdaptor commentStamp: '<historical>' prior: 0!
kom/4.12 (Comanche/4.12)

HTTPAdaptor (kom/4.8; bolot 4/2/2001 18:48)
- logging is removed from kom46 core
- so is Process>>contextAt:ifAbsent:
- kom48 adds rudimentary persistent connections
-- see keepAliveConnection senders (also in Preferences)

Comment from kom46:
I encapsulate the HTTP protocol from my clients (who must support the HttpPlug interface).  I use an HttpRequest to pick apart a request and I use an HttpResponse to formulate a response.  Mainly, I broker the conversation, turning a request into a message send (to an HttpPlug) and converting the answer to an HttpResponse.  Thus, my clients must simply implement a message based protocol (eliminating the need for them to be concerned with HTTP syntax).

Instance Variables:

stream <Stream> - A bidirectional stream for reading and writing request (note: previously Comanche separated the readStream and writeStream, if you need to separate the read stream from the write stream you can create a new bidirectional stream class that uses two separate streams for reading and writing)

httpService <HttpService> - an instance of an HttpService or a protocol compatible substitute; this object is used as the error handler and the target of http request dispatching

postProcessors <OrderedCollection | nil> - this is a list of objects that are sent post processing messages (after the response has been written); this enables objects to request that they get called after the HttpAdaptor has actually written the response onto the write stream
!

!HttpRequest commentStamp: '<historical>' prior: 0!
kom/4.12 (Comanche/4.12)
bolot 2/20/2002 13:53
- rawUrl = the entire request string
- url = rawUrl up to ?
- queryString = rawUrl after the first ?
- rawUrl == url?queryString

HttpRequest (bolot 4/2/2001 18:51)
- HTTP request object wrapper
- handles details of HTTP
-- headers, formats, etc.
- as of kom47, handles multipart posts
- in kom49 (or kom50) a minor refactoring will happen!

!HttpResponse commentStamp: '<historical>' prior: 0!
kom/4.12 (Comanche/4.12)
bolot 2/20/2002 13:55
- cookies support
- defaultChunkSize delegates to Kom5Preferences

HttpResponse (bolot 4/2/2001 18:52)

Comment from kom46:
I am a response to an HttpRequest.  I can formulate an HTTP response and send it out over a socket.  An HttpAdapter will accept an HttpRequest, dispatch a method call to an HttpPlug (which will result in a stream or an error), and then formulat an instance of me to deliver the response to the client.!

!HttpPartialResponse commentStamp: '<historical>' prior: 0!
kom/4.12 (Comanche/4.12)

HttpPartialResponse (bolot 4/2/2001 18:49)
- not a very accurate name
- a subclass of HttpResponse
-- allows for long-execution modules to write directly to the client
!

!KomAuthDb commentStamp: '<historical>' prior: 0!
I am a very basic authentication database.  My passwords instvar is a dictionary whose keys are user names and values are hexadecimal encodings of passwords.  Subclasses could override the encode: and decode:using: methods to provide a better "encryption" of the passwords.  That wasn't done in this class because it would add a dependency on the cryptography package.  I am designed to be used with ModAuth, which sends us the message #verifyPassword:forUser: to validate user ids and passwords.!

!KomSession commentStamp: '<historical>' prior: 0!
I am a session and am used by ModSession to associate sessions with incoming http requests.  After a period of inactivity, sessions are expired.

Notes: This class is a hold over from the old HttpSession class.  This class was renamed because it is not part of the HTTP protocol.  See ModSession for details on how to establish sessions.  You may use the attributes instance variable to hold additional state (such as user object for your application).  Alternatively, other modules may use the session to assign additional dynamic bindings.

For examples see the class comments for ModSession.!

!ModuleAssembly commentStamp: '<historical>' prior: 0!
I am a module assembly.  I provide a convienient mechanism for assembling modules into a module hierarchy for use by an HttpService.  The following is a very simple example of how to use a ModuleAssembly:

	| ma |
	ma _ ModuleAssembly core.
	ma addPlug:
		[ :request |
		HttpResponse fromString: 'Hello World!!!!!!'].
	(HttpService startOn: 8080 named: 'Example') module: ma rootModule.!

!MultipartChunk commentStamp: '<historical>' prior: 0!
kom/4.12 (Comanche/4.12)

MultipartChunkHeader (kom/4.8; bolot 4/2/2001 18:52)
- in kom49 (or kom50) this will be used only for internal purposes
-- applications will access multipart form fields through regular fieldAt: technique

Comment from kom46:
- this is a hack (bolot 10/25/2000 17:17)
- store a part's (from a multipart message) header information:
-- header (raw)
-- properties (extracted and converted info, such as file-name, content-length, etc.)!

!NetworkHost commentStamp: '<historical>' prior: 0!
I am an abstaction of a network host (in DNS parlance) and port number.  I can abstract named or numbered host names (as allowed in a URI for example).

	NetworkHost fromString: 'www.yahoo.com:8080'
	NetworkHost fromString: '192.168.1.1:80'!

!KomLogger commentStamp: '<historical>' prior: 0!
I am a very simple http logging facility.  I implement a writable stream interface and expect to recieve arrays containing an HttpRequest (first element) and an HttpResponse (second element).  I then translate the request and response pair into a textual log format and write that onto each stream in my streams instance variable.  Other loggers may choose to write different log formats, or they could simply store the HttpRequest and HttpResponse objects (in an object DB for example).  For convenience, a transcript window can be opened on a logger using #openTranscript.  You Can also use the method #attachTheTranscript to copy the log entries onto the system Transcript.  Use #detachTranscripts to remove all instances of TranscriptStream from the set of streams.

Currently I only support the Commog Log Format (CLF), which many log analysis tools can interpret.  For more information on this format, see:

  http://www.w3.org/Daemon/User/Config/Logging.html#common-logfile-format

For examples, see the class comments for ModLog.


Enhancement ideas:

- support a flexible logging format that uses some type of template string (ala Apache's logging facility) for producing each line in the log file 
- implement a "multi-streamer" that implements a writable stream interface and will copy the output to multiple output streams
- implement a unix like tail tool that implement a writable stream interface and will "follow" everything that's written to it (similar to the Transcript, but designed to only show the most recent N number of lines or characters)!

!KomTracer commentStamp: '<historical>' prior: 0!
I am a KomLogger, but instead of writing a log file format, I write out a detailed trace of the http request and response pairs.  The following example will dump a trace on the transcript.

	| ma |
	ma _ ModuleAssembly core.
	ma logTo: (KomTracer on: Transcript).
	ma addPlug: [ :request | HttpResponse fromString: 'Hello World!!'].
	(HttpService startOn: 8080 named: 'Example') plug: ma rootModule!

!Object methodsFor: '*KomHttpServer' stamp: 'SVP 8/23/1999 19:17'!
asHtmlDocumentForRequest: aNetworkRequest

	self error: 
		('The requested object (', 
		self asString, 
		'), could not be converted into HTML for your browser.')! !

!Object methodsFor: '*KomHttpServer' stamp: 'SVP 8/23/1999 19:23'!
asHttpResponseTo: anHttpRequest

	^(self asHtmlDocumentForRequest: anHttpRequest) 
		asHttpResponseTo: anHttpRequest
! !

!Object methodsFor: '*KomHttpServer' stamp: 'gc 3/4/2009 00:34'!
contentType

	^MIMEDocument defaultContentType! !

!Object methodsFor: '*KomHttpServer' stamp: 'svp 5/16/2003 12:47'!
isComancheModule

	^false! !

!BlockClosure methodsFor: '*KomHttpServer' stamp: 'damiencassou 4/5/2009 18:58'!
doPostProcessingFor: request response: response
	"The method is to provide compatibility with HttpAdaptor's post processing.
	The receiver is expected to accept two arguments."

	^self value: request value: response! !

!BlockClosure methodsFor: '*KomHttpServer' stamp: 'pmm 2/7/2011 20:33'!
processHttp
	"<Boolean> The receiver should answer a boolean to indicate whether 
	there is an HttpResponse available (accessed by HttpResponse current).
	If the receiver takes no arguments, then assume that it answers a Boolean
	and uses dyanmic bindings to access the current request/response, otherwise
	pass in the current request and set the current response."

	| response |
	self numArgs = 0
		ifTrue: [ ^self value ].
	self numArgs = 1
		ifTrue: 
			[response := self value: HttpRequest current.
			response ifNotNil:
				[HttpResponse current: response.
				^true].
			^false].! !

!BlockClosure methodsFor: '*KomHttpServer' stamp: 'pmm 9/21/2010 14:07'!
processHttpRequest: request
	"<HttpResponse> The receiver should answer an HttpResponse for sending 
	to the client."

	self numArgs = 1
		ifTrue: [^self value: request].
	self numArgs = 0
		ifTrue: [^self value].
! !

!BlockClosure methodsFor: '*KomHttpServer' stamp: 'damiencassou 4/5/2009 18:58'!
processVisitor: aKomModuleVisitor

	^aKomModuleVisitor doBlock: self! !

!BlockClosure methodsFor: '*KomHttpServer' stamp: 'damiencassou 4/5/2009 18:58'!
validateForStack: anArray
	"Do nothing, provided to provide compatibility with ComancheModule"! !

!BlockClosure methodsFor: '*KomHttpServer' stamp: 'damiencassou 4/5/2009 18:58'!
visitWithValuable: aMonadicValuable

	aMonadicValuable value: self.

! !

!ByteArray methodsFor: '*KomHttpServer' stamp: 'svp 5/15/2003 12:23'!
asIpString

	^String streamContents: 
		[ :strm |
		self do: 
			[ :ea |
			strm nextPutAll: ea asString.
			strm nextPut: $.].
		strm skip: -1]
! !

!Color methodsFor: '*KomHttpServer' stamp: 'cwp 6/10/2004 21:53'!
hex
	^ (rgb hex allButFirst: 3) asLowercase! !

!Form methodsFor: '*KomHttpServer' stamp: 'bolot 2/14/2000 15:59'!
asHttpResponseTo: request
	^HttpResponse fromMIMEDocument: self asWebImage! !

!Form methodsFor: '*KomHttpServer' stamp: 'gc 10/24/2007 10:06'!
asWebImage
	"return a MIMEDocument"
	| aStream |
	aStream := (RWBinaryOrTextStream on: String new).
	GIFReadWriter putForm: (self asFormOfDepth: 8) onStream: aStream.
	aStream reset.
	^MIMEDocument contentType: MIMEDocument contentTypeGif content: aStream! !

!BlockContext methodsFor: '*KomHttpServer' stamp: 'svp 5/15/2003 10:10'!
doPostProcessingFor: request response: response
	"The method is to provide compatibility with HttpAdaptor's post processing.
	The receiver is expected to accept two arguments."

	^self value: request value: response! !

!BlockContext methodsFor: '*KomHttpServer' stamp: 'svp 5/13/2003 09:53'!
processHttp
	"<Boolean> The receiver should answer a boolean to indicate whether 
	there is an HttpResponse available (accessed by HttpResponse current).
	If the receiver takes no arguments, then assume that it answers a Boolean
	and uses dyanmic bindings to access the current request/response, otherwise
	pass in the current request and set the current response."

	| response |
	self numArgs = 0
		ifTrue: [^self copy fixTemps value].
	self numArgs = 1
		ifTrue: 
			[response := self copy fixTemps value: HttpRequest current.
			response ifNotNil:
				[HttpResponse current: response.
				^true].
			^false].! !

!BlockContext methodsFor: '*KomHttpServer' stamp: 'svp 4/17/2003 09:00'!
processHttpRequest: request
	"<HttpResponse> The receiver should answer an HttpResponse for sending 
	to the client."

	self numArgs = 1
		ifTrue: [^self copy fixTemps value: request].
	self numArgs = 0
		ifTrue: [^self copy fixTemps value].
! !

!BlockContext methodsFor: '*KomHttpServer' stamp: 'svp 5/16/2003 12:34'!
processVisitor: aKomModuleVisitor

	^aKomModuleVisitor doBlock: self! !

!BlockContext methodsFor: '*KomHttpServer' stamp: 'svp 5/16/2003 23:44'!
validateForStack: anArray
	"Do nothing, provided to provide compatibility with ComancheModule"! !

!BlockContext methodsFor: '*KomHttpServer' stamp: 'svp 5/16/2003 13:22'!
visitWithValuable: aMonadicValuable

	aMonadicValuable value: self.

! !

!MessageSend methodsFor: '*KomHttpServer' stamp: 'svp 5/15/2003 10:10'!
doPostProcessingFor: request response: response
	"The method is to provide compatibility with HttpAdaptor's post processing.
	The receiver is expected to accept two arguments."

	^self value: request value: response! !

!MessageSend methodsFor: '*KomHttpServer' stamp: 'svp 5/13/2003 09:53'!
processHttp
	"<Boolean> The receiver should answer a boolean to indicate whether 
	there is an HttpResponse available (accessed by HttpResponse current).
	If the receiver takes no arguments, then assume that it answers a Boolean
	and uses dyanmic bindings to access the current request/response, otherwise
	pass in the current request and set the current response."

	| response |
	arguments size = 0
		ifTrue: [^self value].
	arguments size = 1
		ifTrue: 
			[response := self value: HttpRequest current.
			response ifNotNil:
				[HttpResponse current: response.
				^true].
			^false]

	! !

!MessageSend methodsFor: '*KomHttpServer' stamp: 'svp 4/17/2003 09:00'!
processHttpRequest: request
	"<HttpResponse> The receiver should answer an HttpResponse for sending 
	to the client."

	arguments size = 1
		ifTrue: [^self value: HttpRequest current].
	arguments size = 0
		ifTrue: [^self value].

	! !

!MessageSend methodsFor: '*KomHttpServer' stamp: 'svp 5/16/2003 12:34'!
processVisitor: aKomModuleVisitor

	^aKomModuleVisitor doMessageSend: self! !

!MessageSend methodsFor: '*KomHttpServer' stamp: 'svp 5/16/2003 23:44'!
validateForStack: anArray
	"Do nothing, provided to provide compatibility with ComancheModule"! !

!MessageSend methodsFor: '*KomHttpServer' stamp: 'svp 5/16/2003 13:22'!
visitWithValuable: aMonadicValuable

	aMonadicValuable value: self.

! !

!Morph methodsFor: '*KomHttpServer' stamp: 'bolot 10/16/2001 21:33'!
asHttpResponseTo: request
	^self imageForm asHttpResponseTo: request! !

!ReadWriteStream methodsFor: '*KomHttpServer' stamp: 'SVP 8/23/1999 19:07'!
asHttpResponseTo: request

	^HttpResponse fromStream: self! !

!UndefinedObject methodsFor: '*KomHttpServer' stamp: 'svp 12/16/1999 10:35'!
contentTypeGif
	^'image/gif'! !

!UndefinedObject methodsFor: '*KomHttpServer' stamp: 'gh 8/30/2002 10:21'!
contentTypeTextCSS
	^'text/css'! !

!HttpService methodsFor: 'error handling' stamp: 'brp 10/2/2004 15:51'!
detailedErrorResponseStatus: aSymbol exception: anException 
	^self errorResponseStatus: aSymbol
		description: '<pre><b>' , anException description , '</b><br><br>' 
				, anException signalerContext longStack , '</pre>'! !

!HttpService methodsFor: 'error handling' stamp: 'svp 5/16/2003 23:08'!
errorResponseStatus: aSymbol description: aString

	^HttpResponse
		status: aSymbol
		contents: 
'<!!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>', (HttpResponse statusCodeFor: aSymbol), ' ', (HttpResponse statusDescriptionFor: aSymbol), '</title>
</head><body>
<h1>', (HttpResponse statusDescriptionFor: aSymbol),'</h1>
', aString, '<p>
<hr>
<address>', self serverDescription,'</address>
</body></html>'! !

!HttpService methodsFor: 'error handling' stamp: 'svp 5/12/2003 16:27'!
handleDispatchErrorsIn: aBlock
	"Note: We could break the error handling out into a separate
	object to allow more sophisticated error handling scenarios, however
	you can achieve the same result by writing a module that traps 
	errors and provides special handling.  So, here, we just provide three
	simple and common possibilities for handling dispatch errors."

	"Debug mode doesn't handle the error (you'll get a walkbalk)"
	self isDebugMode ifTrue: [^aBlock value].

	"Verbose mode will send a long stack dump to the browser"
	self isVerboseMode ifTrue: 
		[^aBlock on: Error do: 
			[ :ex | 
			self
				detailedErrorResponseStatus: #serverError
				exception: ex]].

	"By default, operate in deployment mode (just the exception description is
	displayed in the browser)"
	^aBlock on: Error do: 
		[ :ex | 
		self
			errorResponseStatus: #serverError
			description: ex description]! !

!HttpService methodsFor: 'error handling' stamp: 'svp 5/12/2003 16:45'!
handleResponseWritingError: anException
	"Handle errors that occur when trying to write out a response."

	"Debug mode doesn't handle the error (you'll get a walkbalk)"
	self isDebugMode ifTrue: [^anException pass].

	"Verbose mode will send a long stack dump to the browser"
	self isVerboseMode ifTrue: 
		[^self
			detailedErrorResponseStatus: #serverError
			exception: anException].

	"By default, operate in deployment mode (just the exception description is
	displayed in the browser)"
	^self
		errorResponseStatus: #serverError
		description: anException description! !

!HttpService methodsFor: 'initialize-release' stamp: 'svp 5/7/2003 04:18'!
initialize

	super initialize.
	mode := #deployment.! !

!HttpService methodsFor: 'error handling' stamp: 'svp 5/7/2003 04:18'!
isDebugMode

	^self mode == #debug! !

!HttpService methodsFor: 'error handling' stamp: 'svp 4/15/2003 22:36'!
isDeploymentMode

	^self isVerboseMode not and: [self isDebugMode not]! !

!HttpService methodsFor: 'error handling' stamp: 'svp 5/7/2003 04:18'!
isVerboseMode

	^self mode == #verbose! !

!HttpService methodsFor: 'configuration' stamp: 'svp 5/7/2003 04:56'!
keepAlive

	^self withBindingsDo: [HttpAdaptor keepAlive]! !

!HttpService methodsFor: 'configuration' stamp: 'svp 5/7/2003 04:56'!
keepAlive: aBool

	self withBindingsDo: [HttpAdaptor keepAlive: aBool]! !

!HttpService methodsFor: 'error handling' stamp: 'svp 5/7/2003 04:21'!
mode
	"<#deployment | #debug | #verbose > - Answers the debugging
	mode of the receiver."

	^mode! !

!HttpService methodsFor: 'error handling' stamp: 'svp 5/7/2003 04:21'!
mode: aSymbol
	"aSymbol <#deployment | #debug | #verbose > - Sets the debugging
	mode of the receiver."

	mode := aSymbol! !

!HttpService methodsFor: 'pluggable' stamp: 'svp 5/15/2003 16:49'!
module: aComancheModule
	"This message is useful if you wish to 
	validate your module."

	aComancheModule validate.
	self plug: aComancheModule! !

!HttpService methodsFor: 'pluggable' stamp: 'svp 4/9/2003 00:20'!
onRequestDispatch: aSelector to: anObject

	self plug: 
		(MessageSend 
			receiver: anObject 
			selector: aSelector 
			arguments: #(nil))! !

!HttpService methodsFor: 'pluggable' stamp: 'svp 4/9/2003 00:32'!
onRequestDo: plugBlock

	self plug: plugBlock
! !

!HttpService methodsFor: 'configuration' stamp: 'svp 4/16/2003 13:46'!
perceivedHostName

	"Answer the host name as perceived by the client.  If there
	is no current HttpRequest, fall back on the name as determined
	on the server."

	| request |
	(request := HttpRequest current) ifNotNil: 
		[^request networkHost nameString].

	^self serverHostName
! !

!HttpService methodsFor: 'configuration' stamp: 'svp 4/16/2003 13:48'!
perceivedPortNumber

	"Answer the port number as it is perceived by the client (which could
	be different from the port we are listening on if for example you are 
	using port forwarding rules to reach your server).  If there is no 
	current http request, fall back on the real port number that we are 
	listening on."

	| request |
	(request := HttpRequest current) ifNotNil: 
		[^request networkHost port].

	^self portNumber
! !

!HttpService methodsFor: 'pluggable' stamp: 'svp 4/9/2003 00:21'!
plug

	^plug! !

!HttpService methodsFor: 'pluggable' stamp: 'svp 4/9/2003 00:21'!
plug: aMonadicValuable

	plug := aMonadicValuable! !

!HttpService methodsFor: 'startup and shutdown' stamp: 'lr 10/27/2010 18:27'!
prepareForStartup
	super prepareForStartup.
	ServerHostName := nil.
	self class initializeServerType.
	"this is necessary to make it start on cog images"
	process ifNotNil: [ :p |
		| list |
		list := p suspendingList.
		(list isKindOf: Semaphore)
			ifTrue: [ list signal ] ]! !

!HttpService methodsFor: 'serving' stamp: 'svp 5/12/2003 17:26'!
processHttpRequest: anHttpRequest
	"Subclasses can override this method and answer an instance of an 
	HttpResponse.  Alternatively, if we have a plug (typically a BlockContext
	or a MessageSend), then invoke it."

	plug ifNotNil: [^plug processHttpRequest: anHttpRequest].
	^self subclassResponsibility
! !

!HttpService methodsFor: 'serving' stamp: 'brp 10/2/2004 15:17'!
serve: aSocket 
	self class current: self.
	HttpAdaptor readAndWriteToSocket: aSocket service: self! !

!HttpService methodsFor: 'configuration' stamp: 'svp 4/15/2003 09:38'!
serverDescription

	^String streamContents: [ :strm | self serverDescriptionOn: strm]! !

!HttpService methodsFor: 'configuration' stamp: 'svp 4/16/2003 13:44'!
serverDescriptionOn: strm

	strm nextPutAll: self serverType.
	strm nextPutAll: ' Server at '.
	strm nextPutAll: self perceivedHostName.
	strm nextPutAll: ' Port '.
	strm nextPutAll: self perceivedPortNumber asString.
! !

!HttpService methodsFor: 'configuration' stamp: 'svp 4/16/2003 13:45'!
serverHostName

	"Cache the host name (it can take several milliseconds to make this call
	on some platforms.  The cache value will be reset every time the image
	is started"

	^ServerHostName ifNil:
		[ServerHostName := NetNameResolver 
								nameForAddress: NetNameResolver localHostAddress 
								timeout: 5]
! !

!HttpService methodsFor: 'configuration' stamp: 'svp 4/22/2003 09:57'!
serverType

	^self class serverType! !

!HttpService methodsFor: 'error handling' stamp: 'svp 5/7/2003 04:18'!
setDebugMode

	self mode: #debug! !

!HttpService methodsFor: 'error handling' stamp: 'svp 5/7/2003 04:19'!
setDeploymentMode

	self mode: #deployment! !

!HttpService methodsFor: 'error handling' stamp: 'svp 5/7/2003 04:19'!
setVerboseMode

	self mode: #verbose! !

!HttpService methodsFor: 'starting and stopping' stamp: 'svp 4/22/2003 10:00'!
start

	self class initializeServerType.
	^super start! !

!HttpService class methodsFor: 'bindings' stamp: 'svp 4/15/2003 15:00'!
current

	^#'ComancheHttpService-Current' binding! !

!HttpService class methodsFor: 'bindings' stamp: 'svp 4/15/2003 15:00'!
current: anInstance

	#'ComancheHttpService-Current' binding: anInstance! !

!HttpService class methodsFor: 'accessing' stamp: 'svp 4/22/2003 09:58'!
initialize

	self initializeServerType! !

!HttpService class methodsFor: 'accessing' stamp: 'gc 8/23/2008 17:57'!
initializeServerType
	"self initializeServerType"

	ServerType := String streamContents: 
					[:s | 
					s nextPutAll: self serviceName.
					s nextPutAll: '/'.
					s nextPutAll: self version.
					s nextPutAll: ' ('.
					s nextPutAll: self platform.
					s nextPutAll: ') '.
					ComancheModule withAllSubclassesDo: 
							[:modClass | 
							modClass version isEmpty 
								ifFalse: 
									[s nextPutAll: modClass version.
									s nextPut: $ ]]]! !

!HttpService class methodsFor: 'accessing' stamp: 'gsa 2/12/2013 15:59'!
platform

	"^Smalltalk os platformName"
	"Cuis specific"
	^Smalltalk platformName! !

!HttpService class methodsFor: 'accessing' stamp: 'svp 4/22/2003 09:53'!
serverType

	^ServerType! !

!HttpService class methodsFor: 'accessing' stamp: 'gc 8/23/2008 17:56'!
serviceName
	^ 'KomHttpServer'! !

!HttpService class methodsFor: 'accessing' stamp: 'GiovanniCorriga 7/17/2010 14:24'!
version

	^'7.1.3'! !

!HttpFormDictionary methodsFor: 'accessing' stamp: 'gc 10/24/2007 10:09'!
at: key
	^ self at: key ifAbsent: [self errorKeyNotFound]
! !

!HttpFormDictionary methodsFor: 'accessing' stamp: 'brp 10/2/2004 14:53'!
at: key ifAbsent: aBlock 
	| value valueSize |
	value := super at: key ifAbsent: [^aBlock value].
	valueSize := value size.
	0 = valueSize 
		ifTrue: 
			["is this not absent?"

			value := aBlock value].
	value := (1 = valueSize) ifTrue: [value first] ifFalse: [value copy].
	^value! !

!HttpFormDictionary methodsFor: 'accessing' stamp: 'Koubo 3/17/2002 11:55'!
at: key put: value
	(self includesKey: key)
		ifFalse: [super at: key put: (OrderedCollection new)].

	(self rawAt: key) add: value.

	^value! !

!HttpFormDictionary methodsFor: 'accessing' stamp: 'Koubo 3/17/2002 11:55'!
booleanAt: key
	^(self rawAt: key) first = 'true'! !

!HttpFormDictionary methodsFor: 'accessing' stamp: 'bolot 6/22/2001 12:34'!
booleansAt: key
	^(self rawAt: key) collect: [:value | value == 'true']! !

!HttpFormDictionary methodsFor: 'accessing' stamp: 'Koubo 3/17/2002 11:55'!
numberAt: key
	^[(self rawAt: key) first asNumber]
		ifError: [:err :rcvr | Float nan]! !

!HttpFormDictionary methodsFor: 'accessing' stamp: 'bolot 6/22/2001 12:34'!
numbersAt: key
	^(self rawAt: key) collect: [:value |
		[value asNumber] ifError: [:err :rcvr | Float nan]]! !

!HttpFormDictionary methodsFor: 'printing' stamp: 'Koubo 3/17/2002 11:55'!
printElementsOn: aStream
	aStream nextPut: $(.
	self keysSortedSafely do:
		[:key | aStream print: key; nextPutAll: '->'; print: (self rawAt: key); space].
	aStream nextPut: $)! !

!HttpFormDictionary methodsFor: 'accessing' stamp: 'Koubo 3/17/2002 11:55'!
rawAt: key
	^super at: key ifAbsent: [self errorKeyNotFound]! !

!HttpFormDictionary methodsFor: 'accessing' stamp: 'bolot 5/2/2002 17:46'!
rawAt: key ifAbsent: aBlock
	^super at: key ifAbsent: aBlock! !

!HttpFormDictionary methodsFor: 'accessing' stamp: 'Koubo 3/17/2002 11:55'!
stringAt: key
	^(self rawAt: key) first! !

!HttpFormDictionary methodsFor: 'accessing' stamp: 'bolot 6/22/2001 12:35'!
stringsAt: key
	^(self rawAt: key) copy! !

!ComancheModule methodsFor: 'accessing' stamp: 'svp 4/15/2003 15:56'!
addSubModule: aComancheModule

	^self subModules add: aComancheModule! !

!ComancheModule methodsFor: 'logging' stamp: 'svp 5/16/2003 13:30'!
attachAllLoggersToTheTranscript

	self loggers do: [ :ea | ea attachTheTranscript ]! !

!ComancheModule methodsFor: 'logging' stamp: 'svp 5/16/2003 13:28'!
detachAllLoggersFromTranscripts

	self loggers do: [ :ea | ea detachTranscripts]! !

!ComancheModule methodsFor: 'error handling' stamp: 'svp 5/2/2003 23:09'!
errorResponseStatus: aSymbol description: aString

	^HttpService current
		errorResponseStatus: aSymbol
		description: aString.
! !

!ComancheModule methodsFor: 'testing' stamp: 'svp 5/16/2003 12:47'!
isComancheModule

	^true! !

!ComancheModule methodsFor: 'testing' stamp: 'svp 4/18/2003 11:58'!
isCore

	^false! !

!ComancheModule methodsFor: 'testing' stamp: 'svp 5/15/2003 17:27'!
isDir

	^false! !

!ComancheModule methodsFor: 'testing' stamp: 'svp 5/15/2003 15:54'!
isDoc

	^false! !

!ComancheModule methodsFor: 'testing' stamp: 'svp 5/16/2003 12:10'!
isLog

	^false! !

!ComancheModule methodsFor: 'testing' stamp: 'svp 5/15/2003 16:13'!
isSession

	^false! !

!ComancheModule methodsFor: 'testing' stamp: 'svp 5/15/2003 17:24'!
isVhost

	^false! !

!ComancheModule methodsFor: 'logging' stamp: 'svp 5/16/2003 13:23'!
loggers

	| answer |
	answer := OrderedCollection new.
	self visitWithValuable: 
		[ :mod |
		(mod isComancheModule and: [mod isLog]) 
			ifTrue: [answer add: mod logger]].
	^answer! !

!ComancheModule methodsFor: 'validation' stamp: 'svp 5/16/2003 12:57'!
modulesOnStack

	| tmp answer |
	answer := OrderedCollection new.
	tmp := thisContext.
	[tmp notNil] whileTrue:
		[tmp receiver isComancheModule
			ifTrue: [answer add: tmp receiver].
		tmp := tmp sender].
	^answer asArray
! !

!ComancheModule methodsFor: 'logging' stamp: 'svp 5/16/2003 13:25'!
openTranscriptsOnAllLoggers

	self loggers do: [ :ea | ea openTranscript]! !

!ComancheModule methodsFor: 'accessing' stamp: 'svp 4/23/2003 21:57'!
options

	^'GET,HEAD,POST,OPTIONS,TRACE'! !

!ComancheModule methodsFor: 'processing' stamp: 'svp 4/15/2003 17:57'!
processHttp
	"<Boolean> Subclasses should override this method to process
	the current http request (accessed via HttpRequest current).
	Answer true if a response has been made available (via 
	HttpResponse current:) and false if no response was generated."

	self subclassResponsibility! !

!ComancheModule methodsFor: 'processing' stamp: 'svp 4/17/2003 08:45'!
processHttpRequest: request
	"<HttpResponse>"

	self processHttp.
	^HttpResponse current! !

!ComancheModule methodsFor: 'processing' stamp: 'svp 4/15/2003 15:58'!
processSubModules

	self subModulesDo: 
		[ :module |
		module processHttp ifTrue: [^true]].
	^false! !

!ComancheModule methodsFor: 'visitor' stamp: 'svp 5/16/2003 12:25'!
processVisitor: aKomModuleVisitor

	^aKomModuleVisitor doComancheModule: self! !

!ComancheModule methodsFor: 'accessing' stamp: 'svp 4/15/2003 15:58'!
subModules

	^subModules ifNil: [subModules := OrderedCollection new]! !

!ComancheModule methodsFor: 'processing' stamp: 'svp 4/15/2003 15:57'!
subModulesDo: aBlock

	subModules ifNotNil: 
		[subModules do: aBlock]
! !

!ComancheModule methodsFor: 'validation' stamp: 'svp 5/16/2003 12:52'!
validate

	| validator |
	validator := KomModuleValidator new.
	self visitModules: validator.
	validator problems isEmpty 
		ifFalse: [self error: 'validate of the module hierarchy failed']
	! !

!ComancheModule methodsFor: 'validation' stamp: 'svp 5/16/2003 13:08'!
validateContext: problems
	"Validation is successful by default, subclass to check the 
	context stack for the the presence of required modules and add
	to the list of problems"

	self validateForStack: self modulesOnStack problems: problems
! !

!ComancheModule methodsFor: 'validation' stamp: 'svp 5/16/2003 15:41'!
validateForStack: anArray
	| probs |
	probs := OrderedCollection new.
	self validateForStack: anArray problems: probs.
	probs isEmpty ifFalse: [self error: 'invalid context for module']
! !

!ComancheModule methodsFor: 'validation' stamp: 'svp 5/16/2003 12:58'!
validateForStack: anArray problems: problems

	"Subclasses may wish to override this method to check that
	prerequisite modules are on the stack above them"
! !

!ComancheModule methodsFor: 'visitor' stamp: 'svp 5/16/2003 13:21'!
visitModules: aKomModuleVisitor

	self visitWithValuable: [ :ea | ea processVisitor: aKomModuleVisitor ].
! !

!ComancheModule methodsFor: 'visitor' stamp: 'svp 5/16/2003 13:21'!
visitWithValuable: aMonadicValuable

	aMonadicValuable value: self.
	self subModules do: [ :ea | ea visitWithValuable: aMonadicValuable]
! !

!ComancheModule class methodsFor: 'as yet unclassified' stamp: 'svp 4/16/2003 12:39'!
new

	^super new initialize! !

!ComancheModule class methodsFor: 'accessing' stamp: 'svp 4/22/2003 09:49'!
version
	"Answer a version string...subclasses that override this method will
	have their answers appended to the 'Server' header in HTTP responses."

	^''! !

!ModAlias methodsFor: 'as yet unclassified' stamp: 'svp 4/16/2003 21:22'!
pathPrefix

	^pathPrefix! !

!ModAlias methodsFor: 'as yet unclassified' stamp: 'svp 4/16/2003 21:22'!
pathPrefix: aString

	pathPrefix := aString! !

!ModAlias methodsFor: 'as yet unclassified' stamp: 'svp 5/15/2003 17:05'!
processHttp

	| path |
	path := ModCore path.
	"check if our prefix matches"
	((path beginsWith: pathPrefix) and: 
	[path size = pathPrefix size or: [(path at: (pathPrefix size + 1)) = $/]])
		ifTrue: 
			[ModCore path: (path copyFrom: pathPrefix size + 1 to: path size).
			self processSubModules ifTrue: 
				[ModCore path: path.
				^true]].

	"otherwise, reset the path to it's original setting and indicate 
	to the caller that we have no response and ."
	ModCore path: path.
	^false! !

!ModAuth methodsFor: 'accessing' stamp: 'svp 5/14/2003 17:37'!
authDb

	^authDb! !

!ModAuth methodsFor: 'accessing' stamp: 'svp 5/14/2003 17:39'!
authDb: anAuthDb

	authDb := anAuthDb! !

!ModAuth methodsFor: 'accessing' stamp: 'svp 5/16/2003 23:08'!
authorizationResponse

	| answer |
	answer := HttpResponse
		status: #unauthorized
		contents: 'Authentication Required'.
	answer fieldAt: 'WWW-Authenticate' put: 'Basic realm="', self realm,'"'.
	^answer! !

!ModAuth methodsFor: 'processing' stamp: 'svp 4/18/2003 09:22'!
decodeAuthorization: aString

	^(Base64MimeConverter mimeDecodeToChars:
		(ReadStream on: (aString findTokens: ' ') last))
			contents! !

!ModAuth methodsFor: 'processing' stamp: 'svp 4/18/2003 09:34'!
extractAuthInfo: request andDo: aBlock 

	| authHeader user pass |
	(authHeader := self extractAuthorization: request) ifNil: [^self].
	user := self extractUser: authHeader.
	pass := self extractPassword: authHeader.
	(user isNil or: [pass isNil]) ifTrue: [^self].
	^aBlock value: user value: pass

! !

!ModAuth methodsFor: 'processing' stamp: 'svp 4/18/2003 10:46'!
extractAuthorization: request

	^(request headerAt: 'Authorization' ifAbsent: [request headerAt: 'authorization' ifAbsent: []])
		ifNotNilDo: [:auth | self decodeAuthorization: auth]! !

!ModAuth methodsFor: 'processing' stamp: 'svp 4/18/2003 09:29'!
extractPassword: auth

	^auth ifNotNil: [auth copyAfter: $:]! !

!ModAuth methodsFor: 'processing' stamp: 'svp 4/18/2003 09:28'!
extractUser: auth

	^auth ifNotNil: [auth copyUpTo: $:]! !

!ModAuth methodsFor: 'processing' stamp: 'brp 10/2/2004 15:21'!
processHttp
	| request |
	request := HttpRequest current.
	self extractAuthInfo: request
		andDo: 
			[:user :password | 
			(self verifyPassword: password forUser: user) 
				ifTrue: 
					[self class user: user.
					^self processSubModules]].
	HttpResponse current: self authorizationResponse.
	^true! !

!ModAuth methodsFor: 'accessing' stamp: 'svp 5/14/2003 23:08'!
realm

	^realm ifNil: ['/']! !

!ModAuth methodsFor: 'accessing' stamp: 'svp 4/18/2003 09:45'!
realm: aString

	realm := aString! !

!ModAuth methodsFor: 'as yet unclassified' stamp: 'svp 5/14/2003 17:37'!
verifyPassword: aPassword forUser: userName

	^self authDb verifyPassword: aPassword forUser: userName
! !

!ModAuth class methodsFor: 'bindings' stamp: 'svp 5/15/2003 12:32'!
user

	^#'ModAuth-user' binding! !

!ModAuth class methodsFor: 'bindings' stamp: 'svp 5/15/2003 12:33'!
user: userName

	^#'ModAuth-user' binding: userName! !

!ModAutoIndex methodsFor: 'directory listing' stamp: 'svp 4/16/2003 08:38'!
dirEntries: entries request: request on: strm padNamesTo: namePad padSizesTo: sizePad

	request url ~= '/' ifTrue: [self parentEntry: request on: strm].
	entries do: 
		[ :entry |
		self entry: entry on: strm padNamesTo: namePad padSizesTo: sizePad].! !

!ModAutoIndex methodsFor: 'directory listing' stamp: 'svp 5/2/2003 23:09'!
directoryListing: request directory: dir

	| entries namePad sizePad |
	entries := dir entries.
	(request fields includesKey: 'S') ifTrue: 
		[entries := entries sortBy: [ :a :b | a fileSize <= b fileSize ]].
	(request fields includesKey: 'M') ifTrue: 
		[entries := entries sortBy: [ :a :b | a modificationTime <= b modificationTime ]].
	(request fields includesKey: 'N') ifTrue: 
		[entries := entries sortBy: [ :a :b | a name <= b name ]].

	namePad := (entries inject: 16 into: [ :max :ea | ea name size max: max ]) + 1.
	sizePad := (entries inject: 4 into: [ :max :ea | ea fileSize printString size max: max ]) + 1.

	^String streamContents: [ :strm |
		strm nextPutAll: '<!!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">'.
		strm nextPutAll: '<html><head><title>Index of '.
		strm nextPutAll: request url.
		strm nextPutAll: '</title></head><body><h1>Index of '.
		strm nextPutAll: request url.
		strm nextPutAll: '</h1><pre>      <a HREF="?N=A">Name</a>'.
		strm nextPutAll: ((String new: (namePad - 4)) atAllPut: $ ; yourself).
		strm nextPutAll: '<a HREF="?M=A">Last modified</a>    '.
		strm nextPutAll: ((String new: (sizePad - 4)) atAllPut: $ ; yourself).
		strm nextPutAll: '<a HREF="?S=A">Size</a><hr><br>'.
		self 
			dirEntries: entries 
			request: request 
			on: strm 
			padNamesTo: namePad 
			padSizesTo: sizePad.
		strm nextPutAll: '</pre><hr><address>'.
		strm nextPutAll: HttpService current serverDescription.
		strm nextPutAll: '</address></body></html>'].! !

!ModAutoIndex methodsFor: 'directory listing' stamp: 'svp 6/27/2003 16:39'!
entry: entry on: strm padNamesTo: namePad padSizesTo: sizePad

	| sizeString |
	sizeString := entry fileSize printString.
	entry isDirectory 
		ifTrue: [strm nextPutAll: '[DIR]']
		ifFalse: [strm nextPutAll: '     '].
	strm nextPutAll: ' <a HREF="'.
	strm nextPutAll: entry name.
	entry isDirectory ifTrue: [strm nextPut: $/].
	strm nextPutAll: '">'.
	strm nextPutAll: entry name.
	strm nextPutAll: '</a>'.
	strm nextPutAll: ((String new: (namePad - entry name size)) atAllPut: $ ; yourself).
	(Date fromSeconds: (entry modificationTime))
		printOn: strm format: #(1 2 3 $- 2 1 2).
	strm nextPut: $ .
	(Time fromSeconds: (entry modificationTime))
		print24: true showSeconds: false on: strm.
	strm nextPutAll: ((String new: (sizePad - sizeString size)) atAllPut: $ ; yourself).
	strm nextPutAll: sizeString.
	strm nextPutAll: String crlf.
! !

!ModAutoIndex methodsFor: 'directory listing' stamp: 'svp 6/27/2003 16:48'!
parentEntry: request on: strm

	| tmp parentPath |
	tmp := request url copyFrom: 1 to: (request url size - 1).
	parentPath := self class splitPath: tmp to: [ :path :nm | path].
	parentPath last = $/ ifFalse: [parentPath := parentPath, '/'].

	strm nextPutAll: '[DIR] <a HREF="'.
	strm nextPutAll: parentPath.
	strm nextPutAll: '">Parent Directory</a>'.
	strm nextPutAll: '<br>'.
! !

!ModAutoIndex methodsFor: 'processing' stamp: 'brp 10/2/2004 14:44'!
processHttp
	| dir request |
	request := HttpRequest current.
	(#(#GET #POST) includes: request method) ifFalse: [^false].
	dir := ModDir serverDirectory.
	HttpResponse current: (HttpResponse 
				fromString: (self directoryListing: request directory: dir)).
	^true! !

!ModAutoIndex methodsFor: 'validation' stamp: 'svp 5/16/2003 13:01'!
validateForStack: anArray problems: problems

	super validateForStack: anArray problems: problems.
	anArray 
		detect: [ :ea | ea isDir ] 
		ifNone: [problems add: 'AutoIndex module requires Dir module']! !

!ModAutoIndex class methodsFor: 'as yet unclassified' stamp: 'svp 6/27/2003 16:43'!
splitPath: fullName to: pathAndNameBlock
	"Take the file name and convert it to the path name of a directory and a local file name within that directory. FileName must be of the form: <dirPath><delimiter><localName>, where <dirPath><delimiter> is optional. The <dirPath> part may contain delimiters."

	| delimiter i dirName localName tmpName |
	fullName last = $/
		ifTrue: [tmpName := fullName copyFrom: 1 to: fullName size - 1]
		ifFalse: [tmpName := fullName].
	delimiter := $/.
	(i := tmpName findLast: [:c | c = delimiter]) = 0
		ifTrue:
			[dirName := String new.
			localName := tmpName]
		ifFalse:
			[dirName := tmpName copyFrom: 1 to: (i - 1 max: 1).
			localName := tmpName copyFrom: i + 1 to: tmpName size].

	^ pathAndNameBlock value: dirName value: localName! !

!ModCore methodsFor: 'as yet unclassified' stamp: 'svp 4/18/2003 11:58'!
isCore

	^true! !

!ModCore methodsFor: 'as yet unclassified' stamp: 'brp 10/2/2004 15:18'!
optionsResponse
	| opts |
	opts := self class options ifNil: ['GET,HEAD,POST,OPTIONS,TRACE'].
	^(HttpResponse fromString: '')
		fieldAt: 'Allow' put: opts;
		yourself! !

!ModCore methodsFor: 'as yet unclassified' stamp: 'brp 10/2/2004 16:08'!
processHttp
	| request method |
	request := HttpRequest current.
	self class
		method: (method := request method);
		path: request url;
		host: request networkHost;
		serverRoot: self serverRoot.
	method = 'TRACE' 
		ifTrue: 
			[HttpResponse current: (self traceResponse: request).
			^true].
	self processSubModules ifTrue: [^true].
	method = 'OPTIONS' 
		ifTrue: 
			[HttpResponse current: self optionsResponse.
			^true].
	^false! !

!ModCore methodsFor: 'as yet unclassified' stamp: 'svp 4/18/2003 11:49'!
serverRoot

	^serverRoot
! !

!ModCore methodsFor: 'as yet unclassified' stamp: 'brp 10/2/2004 14:53'!
serverRoot: aDirOrString 
	serverRoot := aDirOrString isString 
		ifTrue: [FileDirectory on: aDirOrString]
		ifFalse: [aDirOrString]! !

!ModCore methodsFor: 'as yet unclassified' stamp: 'svp 4/23/2003 22:33'!
traceResponse: request

	^HttpResponse fromString:
		(String streamContents: [ :strm | request writeOn: strm ])! !

!ModCore class methodsFor: 'bindings' stamp: 'svp 4/16/2003 13:28'!
host

	^#'ModCore-Host' binding! !

!ModCore class methodsFor: 'bindings' stamp: 'svp 4/16/2003 13:28'!
host: aString

	^#'ModCore-Host' binding: aString! !

!ModCore class methodsFor: 'bindings' stamp: 'svp 4/23/2003 21:39'!
method

	^#'ModCore-Method' binding! !

!ModCore class methodsFor: 'bindings' stamp: 'svp 4/23/2003 21:40'!
method: methodString

	#'ModCore-Method' binding: methodString! !

!ModCore class methodsFor: 'bindings' stamp: 'svp 4/23/2003 22:22'!
options

	^#'ModCore-Options' binding! !

!ModCore class methodsFor: 'bindings' stamp: 'svp 4/23/2003 22:22'!
options: methodsString

	^#'ModCore-Options' binding: methodsString! !

!ModCore class methodsFor: 'bindings' stamp: 'svp 4/16/2003 11:28'!
path

	^#'ModCore-Path' binding! !

!ModCore class methodsFor: 'bindings' stamp: 'svp 4/16/2003 11:28'!
path: aString

	^#'ModCore-Path' binding: aString! !

!ModCore class methodsFor: 'bindings' stamp: 'svp 4/18/2003 11:51'!
serverRoot

	^#'ModCore-ServerRoot' binding! !

!ModCore class methodsFor: 'bindings' stamp: 'svp 4/18/2003 11:51'!
serverRoot: aFileDirectory

	^#'ModCore-ServerRoot' binding: aFileDirectory! !

!ModDir methodsFor: 'as yet unclassified' stamp: 'svp 4/15/2003 17:06'!
directoryIndex

	^directoryIndex ifNil: [directoryIndex := OrderedCollection new]! !

!ModDir methodsFor: 'as yet unclassified' stamp: 'brp 10/2/2004 14:52'!
directoryIndex: aCollectionOrString 
	directoryIndex := aCollectionOrString isString 
		ifTrue: [aCollectionOrString findTokens: ' ']
		ifFalse: [aCollectionOrString]! !

!ModDir methodsFor: 'as yet unclassified' stamp: 'brp 10/2/2004 15:45'!
directoryIndexExists: dir 
	| fname |
	
	fname := self directoryIndex detect: [:ea | dir fileExists: ea]
				ifNone: [^false].

	"Our directory exists, set the full file name so that
	ModFile will detect and serve the index file (note, if no ModFile
	gets processed after this module, then a doc not found will be returned)"
	
	ModDoc relativeFilePath: ModDoc relativeFilePath , fname.
	^true! !

!ModDir methodsFor: 'testing' stamp: 'svp 5/15/2003 17:27'!
isDir

	^true! !

!ModDir methodsFor: 'as yet unclassified' stamp: 'brp 10/2/2004 15:30'!
processHttp
	| filePath dir request |
	request := HttpRequest current.
	filePath := self class fullFilePath.
	(self class directoryExists: (dir := FileDirectory on: filePath)) 
		ifFalse: [^false].

	"If the url does not end in a slash, then redirect to add the slash"
	request url last ~= $/ 
		ifTrue: 
			[self redirectWithTrailingSlash: request.
			^true].
	(self directoryIndexExists: dir) ifTrue: [^false].
	self class serverDirectory: dir.
	^ self processSubModules ! !

!ModDir methodsFor: 'as yet unclassified' stamp: 'svp 5/16/2003 23:09'!
redirectWithTrailingSlash: request

	| location |
	location := request url, '/'.
	HttpResponse current: 
		((HttpResponse
			status: #tempMoved
			contents: 'Temporarily moved to: <A HREF="', location, '">', location, '</A>')
		fieldAt: 'Location' put: location;
		fieldAt: 'URI' put: location;
		yourself)! !

!ModDir methodsFor: 'validation' stamp: 'svp 5/16/2003 13:02'!
validateForStack: anArray problems: problems

	super validateForStack: anArray problems: problems.
	anArray 
		detect: [ :ea | ea isDoc ] 
		ifNone: [problems add: 'Dir module requires a Doc module']! !

!ModDir class methodsFor: 'tests' stamp: 'GuillermoPolito 10/6/2010 18:10'!
directoryExists: aFileDirectory
	"The Mac implementation of FileDirectory>>exists answers true,
	even when the path specified is a file (not a directory) (as of
	22 May 2003)...this differs from the Unix and Windows VMs...so 
	this is a little hack that should work on all platforms...when the
	Mac VM is correct, we should change this code to simply use
	FileDirectory>>exists"

	"Ordinarily, just do:"
	Smalltalk os platformName ~= 'Mac OS' ifTrue: [^aFileDirectory exists].

	"But!! Because of Mac idiosyncracies, do:"
	^aFileDirectory exists and: 
		[aFileDirectory containingDirectory directoryNames 
			includes: aFileDirectory localName].

	! !

!ModDir class methodsFor: 'accessing' stamp: 'tbn 11/10/2004 11:38'!
fullFilePath
	^ModDoc fullFilePath! !

!ModDir class methodsFor: 'bindings' stamp: 'svp 4/15/2003 15:42'!
serverDirectory

	^#'ModDir-ServerDirectory' binding! !

!ModDir class methodsFor: 'bindings' stamp: 'svp 4/15/2003 15:42'!
serverDirectory: aFileDirectory

	#'ModDir-ServerDirectory' binding: aFileDirectory! !

!ModDoc methodsFor: 'accessing' stamp: 'svp 4/15/2003 16:00'!
documentRoot

	^documentRoot! !

!ModDoc methodsFor: 'accessing' stamp: 'brp 10/2/2004 14:52'!
documentRoot: aDirectoryOrString 
	documentRoot := aDirectoryOrString isString 
		ifTrue: [FileDirectory on: aDirectoryOrString]
		ifFalse: [aDirectoryOrString]! !

!ModDoc methodsFor: 'testing' stamp: 'svp 5/15/2003 15:54'!
isDoc

	^true! !

!ModDoc methodsFor: 'error handling' stamp: 'svp 4/15/2003 16:32'!
notFoundResponseFor: request

	^self
		errorResponseStatus: #notFound
		description: ('The requested URL ', request url, ' was not found on this server').
! !

!ModDoc methodsFor: 'printing' stamp: 'svp 4/15/2003 16:27'!
printOn: strm

	super printOn: strm.
	strm nextPut: $(.
	self documentRoot pathName printOn: strm.
	strm nextPut: $).! !

!ModDoc methodsFor: 'accessing' stamp: 'brp 10/2/2004 15:21'!
processHttp
	"Examine the path from ModCore and set the bindings for
	document root and relative file path"

	| relativeFilePath path |
	path := ModCore path.
	relativeFilePath := self relativeFilePathFrom: path.
	self class
		documentRoot: self documentRoot;
		relativeFilePath: relativeFilePath.
	^ self processSubModules.! !

!ModDoc methodsFor: 'accessing' stamp: 'brp 10/2/2004 15:40'!
relativeFilePathFrom: path 
	^((path notEmpty and: [path first = $/]) 
		ifTrue: [path copyFrom: 2 to: path size]
		ifFalse: ['']) translateWith: DelimiterTranslation! !

!ModDoc methodsFor: 'validation' stamp: 'svp 5/16/2003 13:02'!
validateForStack: anArray problems: problems

	super validateForStack: anArray problems: problems.
	anArray 
		detect: [ :module | module isCore ]
		ifNone: [problems add: 'Doc module requires a Core module']! !

!ModDoc class methodsFor: 'bindings' stamp: 'svp 4/15/2003 18:02'!
documentRoot
	"<FileDirectory> The root of the document tree for the current request"

	^#'ModCore-DocumentRoot' binding! !

!ModDoc class methodsFor: 'bindings' stamp: 'svp 4/15/2003 16:02'!
documentRoot: aFileDirectory

	#'ModCore-DocumentRoot' binding: aFileDirectory! !

!ModDoc class methodsFor: 'bindings' stamp: 'GuillermoPolito 10/6/2010 18:10'!
fullFilePath
	"<String> The full path name to the file or directory on the server
	indicated by the current HttpRequest."

	"Ordinarily, just use the following:"
	(Smalltalk os platformName ~= 'Mac OS')
		ifTrue: [^self documentRoot fullNameFor: self relativeFilePath].

	"But!! Because of Mac idiosyncracies, we must do:"
	^((self relativeFilePath findTokens: FileDirectory pathNameDelimiter asString)
		inject: self documentRoot into: 
			[ :dir :pathPart |
			FileDirectory on: (dir fullNameFor: pathPart)]) fullName
			! !

!ModDoc class methodsFor: 'initialization' stamp: 'svp 4/15/2003 16:19'!
initialize
	"self initialize"

	DelimiterTranslation := (0 to: 255) as: ByteArray.
	DelimiterTranslation 
		at: ($/ asciiValue + 1) 
		put: FileDirectory pathNameDelimiter asciiValue.

	"Register this class for startUp notification (in case we are started on a
	platform with a differen path name delimiter"
	Smalltalk addToStartUpList: self.
! !

!ModDoc class methodsFor: 'bindings' stamp: 'svp 4/16/2003 11:12'!
relativeFilePath
	"<String> The relative path name to the file or directory on the server
	indicated by the current HttpRequest"

	^#'ModCore-RelativeFilePath' binding ! !

!ModDoc class methodsFor: 'bindings' stamp: 'svp 4/16/2003 11:13'!
relativeFilePath: aPathName

	^#'ModCore-RelativeFilePath' binding: aPathName! !

!ModDoc class methodsFor: 'initialization' stamp: 'svp 4/15/2003 16:19'!
startUp
	"When we start up, force the rebuilding of the DelimiterTranslation
	array (in case we are started on a platform with a different delimiter)."

	self initialize! !

!ModVhostDoc methodsFor: 'as yet unclassified' stamp: 'svp 4/17/2003 16:53'!
documentRoot

	^super documentRoot directoryNamed: ModVhost string! !

!ModVhostDoc methodsFor: 'validation' stamp: 'svp 5/16/2003 13:04'!
validateForStack: anArray problems: problems

	super validateForStack: anArray problems: problems.
	anArray 
		detect: [ :module | module isVhost ]
		ifNone: [self error: 'VhostDoc module requires a Vhost module']! !

!ModFile methodsFor: 'processing' stamp: 'gk 8/17/2005 23:52'!
processHttp
	"This method uses StandardFileStream explicitly instead
	of relying on FileStream class>>concreteStream, since in this
	case we just need to return the file 'as is' binary."

	| fullFilePath method |
	method := ModCore method.
	(#(#GET #POST) includes: method) ifFalse: [^false].
	fullFilePath := ModDoc fullFilePath.
	(FileStream isAFileNamed: fullFilePath) ifFalse: [^false].
	self processSubModules ifTrue: [^true].
	HttpResponse current: (HttpResponse 
				fromStream: (StandardFileStream readOnlyFileNamed: fullFilePath)).
	^true! !

!ModFile methodsFor: 'validation' stamp: 'svp 5/16/2003 13:03'!
validateForStack: anArray problems: problems

	super validateForStack: anArray problems: problems.
	anArray 
		detect: [ :ea | ea isDoc ] 
		ifNone: [problems add: 'File module requires a Doc module']! !

!ModLog methodsFor: 'as yet unclassified' stamp: 'svp 5/15/2003 10:30'!
doPostProcessingFor: request response: response
	"This method is called after the response has been written, we need 
	to log the request/response pair"

	self logger nextPut: (Array with: request with: response)! !

!ModLog methodsFor: 'testing' stamp: 'svp 5/16/2003 12:10'!
isLog

	^true! !

!ModLog methodsFor: 'as yet unclassified' stamp: 'svp 5/15/2003 10:30'!
logger

	^logger! !

!ModLog methodsFor: 'as yet unclassified' stamp: 'svp 5/15/2003 10:30'!
logger: aStream

	logger := aStream! !

!ModLog methodsFor: 'as yet unclassified' stamp: 'svp 5/15/2003 10:15'!
processHttp

	HttpAdaptor current addPostProcessor: self.
	^self processSubModules! !

!ModMulti methodsFor: 'processing' stamp: 'svp 4/16/2003 21:10'!
processHttp

	^self processSubModules! !

!ModNotFound methodsFor: 'as yet unclassified' stamp: 'svp 5/15/2003 17:08'!
processHttp

	HttpResponse current: 
		(HttpAdaptor current notFoundResponseFor: HttpRequest current).
	^true! !

!ModSession methodsFor: 'private' stamp: 'svp 5/14/2003 01:11'!
basicExtractSession: aRequest ifAbsent: absentBlock
	"PRIVATE: answer the current session based on the 'SessionID' cookie"

	aRequest cookies
		at: #SessionID
		ifPresent: [ :sid | ^sessions at: sid ifAbsent: absentBlock].
	^absentBlock value
! !

!ModSession methodsFor: 'private' stamp: 'svp 5/14/2003 01:18'!
checkForCleanup
	"PRIVATE: run the cleanup if the last cleanup was more than
	1 minute ago"

	lastCleanup + 60 < Time totalSeconds
		ifTrue: [self cleanup]! !

!ModSession methodsFor: 'private' stamp: 'svp 5/14/2003 01:05'!
cleanup
	"PRIVATE: iterate over all sessions and remove stale ones"

	| session cutoff |
	lastCleanup := Time totalSeconds.
	cutoff := lastCleanup - secondsToLive.
	sessions keys do: 
		[:key | 
		session := sessions at: key.
		(session lastAccess < cutoff) ifTrue: 
			[sessions removeKey: key]]! !

!ModSession methodsFor: 'private' stamp: 'svp 5/14/2003 01:10'!
extractSession: aRequest 
	"<KomSession> extract or create a session for aRequest"
	| session |
	mutex critical: 
		[self checkForCleanup.
		session := self 
					basicExtractSession: aRequest 
					ifAbsent: [self newSession].
		session touch].
	^ session! !

!ModSession methodsFor: 'initialization' stamp: 'brp 10/2/2004 14:34'!
initialize
	super initialize.
	
	sessions := Dictionary new.
	mutex := Semaphore forMutualExclusion.
	lastCleanup := Time totalSeconds.
	"30 minutes"
	secondsToLive := 30 * 60! !

!ModSession methodsFor: 'testing' stamp: 'svp 5/15/2003 16:05'!
isSession

	^true! !

!ModSession methodsFor: 'private' stamp: 'svp 5/14/2003 01:11'!
newSession
	"PRIVATE: creates a new Session and stores it"
	| session |
	session := KomSession new.
	sessions at: session id put: session.
	^ session! !

!ModSession methodsFor: 'processing' stamp: 'svp 5/14/2003 01:14'!
processHttp

	| session |
	session := self extractSession: HttpRequest current.
	KomSession current: session.
	self processSubModules ifFalse: [^false].
	HttpResponse current
		setCookieName: #SessionID
		value: session id
		path: '/'.
	^ true! !

!ModSession methodsFor: 'accessing' stamp: 'svp 5/14/2003 01:12'!
secondsToLive: anInteger

	secondsToLive := anInteger! !

!ModSession methodsFor: 'enumeration' stamp: 'gk 11/6/2003 17:12'!
sessionsDo: aBlock
	"Iterate over sessions."

	^ sessions valuesDo: aBlock! !

!ModVhost methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2010 08:52'!
getOffsetAt: pos

	| temp end val |
	temp := self template.
	end := pos.
	(temp at: end) == $- ifTrue: [end := end + 1].
	[val := temp at: end.
	((val >= $0) and: [val <= $9 and: [temp size > end]])] whileTrue: [end := end + 1].
	((val >= $0) and: [val <= $9]) ifTrue: [end := end + 1].
	((end <= temp size) and: [(temp at: end) = $+])
		ifTrue: [^temp copyFrom: pos to: end]
		ifFalse: [^temp copyFrom: pos to: (end - 1)]
! !

!ModVhost methodsFor: 'as yet unclassified' stamp: 'svp 4/17/2003 16:50'!
getSubstituteAt: percentPosition host: aHost andDo: aBlock

	| temp nameIndex nextPos letterIndex sub |
	temp := self template.

	temp size <= percentPosition ifTrue: 
		[aBlock value: '%'. 
		^percentPosition + 1].

	(temp at: (percentPosition + 1)) = $% ifTrue: 
		[aBlock value: '%'. 
		^percentPosition + 2].

	(temp at: (percentPosition + 1)) = $p ifTrue: 
		[aBlock value: aHost port asString. 
		^percentPosition + 2].

	nameIndex := self getOffsetAt: (percentPosition + 1).
	nextPos := percentPosition + 1 + nameIndex size.

	((temp size >= nextPos) and: [(temp at: nextPos) = $.])
		ifTrue: 
			[letterIndex := self getOffsetAt: (nextPos + 1).
			nextPos := nextPos + letterIndex size + 1]
		ifFalse: 
			[letterIndex := '0'].

	[sub := aHost vhostName: nameIndex letter: letterIndex]
		on: Error do: [ :ex | aBlock value: '%'. ^percentPosition + 1].

	aBlock value: sub.
	^nextPos
! !

!ModVhost methodsFor: 'testing' stamp: 'svp 5/15/2003 17:24'!
isVhost

	^true! !

!ModVhost methodsFor: 'as yet unclassified' stamp: 'brp 10/2/2004 15:17'!
processHttp
	self class string: (self stringFromHost: ModCore host).
	^self processSubModules! !

!ModVhost methodsFor: 'as yet unclassified' stamp: 'svp 4/17/2003 16:50'!
stringFromHost: aHost

	| pos temp done nextPercent |
	pos := 1.
	temp := self template.
	done := false.

	^String streamContents: [ :strm |
		[done] whileFalse: 
			[nextPercent := temp indexOf: $% startingAt: pos.
			nextPercent = 0 
				ifTrue:
					[strm nextPutAll: (temp copyFrom: pos to: temp size).
					done := true.]
				ifFalse: 
					[strm nextPutAll: (temp copyFrom: pos to: (nextPercent - 1)).
					pos := self 
						getSubstituteAt: nextPercent 
						host: aHost
						andDo: [ :sub | strm nextPutAll: sub ].
					pos > temp size ifTrue: [done := true]]]].! !

!ModVhost methodsFor: 'as yet unclassified' stamp: 'svp 4/17/2003 16:48'!
template

	^template ifNil: [template := '%0']! !

!ModVhost methodsFor: 'as yet unclassified' stamp: 'svp 4/17/2003 16:49'!
template: aString

	template := aString! !

!ModVhost methodsFor: 'validation' stamp: 'svp 5/16/2003 13:03'!
validateForStack: anArray problems: problems

	super validateForStack: anArray problems: problems.
	anArray 
		detect: [ :module | module isCore ]
		ifNone: [problems add: 'Vhost module requires a Core module']! !

!ModVhost class methodsFor: 'instance creation' stamp: 'svp 4/16/2003 21:06'!
pathTemplate: aString

	^self new 
		pathTemplate: aString; 
		yourself! !

!ModVhost class methodsFor: 'bindings' stamp: 'svp 4/17/2003 16:51'!
string

	^#'ModVhost-String' binding! !

!ModVhost class methodsFor: 'bindings' stamp: 'svp 4/17/2003 16:51'!
string: aString

	#'ModVhost-String' binding: aString! !

!ModVhostAlias methodsFor: 'accessing' stamp: 'svp 5/15/2003 00:44'!
host

	^host! !

!ModVhostAlias methodsFor: 'accessing' stamp: 'svp 5/15/2003 00:44'!
host: aString

	host := aString! !

!ModVhostAlias methodsFor: 'accessing' stamp: 'svp 5/15/2003 00:47'!
processHttp
	"Get the host string and if we match, then process
	our subModules."

	| hostString |
	hostString := ModVhost string.
	host = hostString ifTrue:
		[self processSubModules ifTrue: [^true]].
	^false
! !

!ModVhostAlias methodsFor: 'accessing' stamp: 'svp 5/16/2003 13:04'!
validateForStack: anArray problems: problems

	super validateForStack: anArray problems: problems.
	anArray 
		detect: [ :module | module isVhost ]
		ifNone: [self error: 'VhostAlias module requires a Vhost module']! !

!HttpAdaptor methodsFor: 'processing' stamp: 'svp 4/23/2003 00:13'!
addConnectionHeaders: response request: request count: count

	response fieldAt: 'Server' put: self serverType.
	response fieldAt: 'Date' put: self timeStamp.
	(request isPersistent and: [self keepAlive])
		ifTrue: 
			[response fieldAt: 'Connection' put: 'Keep-Alive'.
			response fieldAt: 'Keep-Alive' put: 
				(String streamContents: 
					[ :s |
					s nextPutAll: 'timeout='.
					s nextPutAll: self dataTimeout asString.
					s nextPutAll: ', max='.
					s nextPutAll: (self maxKeepAliveRequests - count) asString])]
		ifFalse: 
			[response fieldAt: 'Connection' put: 'close'].
! !

!HttpAdaptor methodsFor: 'post processing' stamp: 'svp 5/15/2003 10:13'!
addPostProcessor: anObject
	"Add anObject to my list of postProcessor, anObject must respond to
	the message #doPostProcessingFor:response:"

	(postProcessors ifNil: [postProcessors := OrderedCollection new])
		add: anObject! !

!HttpAdaptor methodsFor: 'processing' stamp: 'jf 2/20/2009 14:15'!
beginConversation

	| response request count limit continue |
	"note: there is a lot of effort in this method to ensure that we don't have
	and explicit method returns.  For some reason (bugs in exception handling?) we
	can get errors if we have explicit returns...this behavior seems to
	only happen when Seaside is also loaded (though it doesn't look like Seaside code
	is being invoked when the problems happen."

	count := 0.
	continue := true.
	limit := self maxKeepAliveRequests.
	[[
		[request := self readRequest] on: Error do: [ :ex | continue := false].
		continue ifTrue:		
			[Bindings clamp:
				[response := self dispatchRequest: request.
				self addConnectionHeaders: response request: request count: count.
				(self writeResponse: response for: request) ifFalse: [^self].
				self doPostProcessingFor: request response: response].
			count := count + 1.
			continue := response isPersistent and: [count < limit]].
		continue.
	] whileTrue]
		ensure: [self destroy]! !

!HttpAdaptor methodsFor: 'accessing' stamp: 'svp 5/7/2003 02:55'!
dataTimeout

	^self class dataTimeout! !

!HttpAdaptor methodsFor: 'processing' stamp: 'svp 5/15/2003 17:07'!
destroy

	[self stream close] 
		on: Error do: [ :ex | "ignore" ].
! !

!HttpAdaptor methodsFor: 'dispatching' stamp: 'brp 10/2/2004 15:18'!
dispatchRequest: request 
	"<HttpResponse> Dispatches an HttpRequest as a method to the target and
	answers an HttpResponse to be transferred to the client"

	| response |
	response := self errorHandler handleDispatchErrorsIn: 
					[self class current: self.
					HttpRequest current: request.
					self target processHttpRequest: request].
	response ifNil: [response := self notFoundResponseFor: request].
	response addCookies: request responseCookies.
	^response! !

!HttpAdaptor methodsFor: 'post processing' stamp: 'svp 5/15/2003 10:14'!
doPostProcessingFor: request response: response
	"Do the post processing for the given request/response pair and
	then reset our list of post processors."

	self postProcessorsDo: 
		[ :ea |
		ea doPostProcessingFor: request response: response].
	postProcessors := nil.! !

!HttpAdaptor methodsFor: 'accessing' stamp: 'svp 4/22/2003 10:09'!
errorHandler

	^self httpService! !

!HttpAdaptor methodsFor: 'accessing' stamp: 'svp 4/22/2003 10:09'!
httpService

	^httpService! !

!HttpAdaptor methodsFor: 'accessing' stamp: 'svp 4/22/2003 10:04'!
httpService: aComancheHttpService

	httpService := aComancheHttpService! !

!HttpAdaptor methodsFor: 'initialize-release' stamp: 'svp 5/15/2003 10:21'!
initializeOn: aStream httpService: anHttpService
 
	stream := aStream.
	httpService := anHttpService.! !

!HttpAdaptor methodsFor: 'accessing' stamp: 'svp 5/6/2003 17:09'!
keepAlive

	^self class keepAlive! !

!HttpAdaptor methodsFor: 'accessing' stamp: 'svp 5/7/2003 02:57'!
maxKeepAliveRequests

	^self class maxKeepAliveRequests! !

!HttpAdaptor methodsFor: 'dispatching' stamp: 'svp 4/22/2003 10:03'!
notFoundResponseFor: request

	^self httpService
		errorResponseStatus: #notFound
		description: ('The requested URL ', request url, ' was not found on this server').! !

!HttpAdaptor methodsFor: 'post processing' stamp: 'svp 5/15/2003 10:04'!
postProcessorsDo: aBlock

	postProcessors ifNotNil: [postProcessors do: aBlock]! !

!HttpAdaptor methodsFor: 'processing' stamp: 'svp 4/17/2003 08:49'!
readRequest

	^HttpRequest readFromStream: self readStream.

! !

!HttpAdaptor methodsFor: 'accessing' stamp: 'svp 5/15/2003 10:22'!
readStream

	^self stream! !

!HttpAdaptor methodsFor: 'accessing' stamp: 'svp 4/22/2003 10:14'!
serverType

	^self httpService serverType! !

!HttpAdaptor methodsFor: 'accessing' stamp: 'svp 5/15/2003 10:22'!
stream

	^stream! !

!HttpAdaptor methodsFor: 'accessing' stamp: 'svp 4/22/2003 10:05'!
target

	^self httpService! !

!HttpAdaptor methodsFor: 'accessing' stamp: 'svp 5/7/2003 02:58'!
timeStamp

	^self class timeStamp! !

!HttpAdaptor methodsFor: 'processing' stamp: 'svp 5/12/2003 17:13'!
writeResponse: response for: request
	"<Boolean> Answer whether or not we succeeded in writing out the
	response.  If we did not, the caller may want to shut down this Http
	conversation.  We try to handle errors in writing the response by 
	getting and writing another response (note: this might not always work
	since the error could have occurred after some data has been written
	on the response stream).  For debugging, the method #handleResponseWritingError:
	can #pass on the exception to allow a walkback to appear."

	| errorResponse |
	[[request method = 'HEAD'
		ifTrue: [response writeHeadersOn: self writeStream]
		ifFalse: [response writeOn: self writeStream]]
			on: Error
			do: 
				[ :ex |
				errorResponse := self errorHandler handleResponseWritingError: ex.
				[errorResponse writeOn: self writeStream] on: Error do: [^false]].
	] ensure: [response destroy].
	^true
! !

!HttpAdaptor methodsFor: 'accessing' stamp: 'svp 5/15/2003 10:22'!
writeStream

	^self stream! !

!HttpAdaptor class methodsFor: 'timestamp' stamp: 'pmm 8/22/2010 15:42'!
buildTimeStamp: seconds

	^((TimeStamp fromSeconds: seconds) - self timezoneOffset) printHttpFormat! !

!HttpAdaptor class methodsFor: 'bindings' stamp: 'svp 5/15/2003 10:15'!
current

	^#'HttpAdaptor-current' binding! !

!HttpAdaptor class methodsFor: 'bindings' stamp: 'svp 5/15/2003 10:15'!
current: anInstance

	^#'HttpAdaptor-current' binding: anInstance! !

!HttpAdaptor class methodsFor: 'preferences' stamp: 'svp 5/7/2003 02:43'!
dataTimeout
	"The number of seconds to wait for data to be received on a
	given socket."

	^#'HttpAdaptor-dataTimeout' binding ifNil: [10]! !

!HttpAdaptor class methodsFor: 'preferences' stamp: 'svp 5/7/2003 02:42'!
dataTimeout: seconds

	^#'HttpAdaptor-dataTimeout' binding: seconds! !

!HttpAdaptor class methodsFor: 'preferences' stamp: 'RJT 6/15/2007 10:54'!
keepAlive

	^#'HttpAdaptor-keepAlive' binding ifNil: [false]! !

!HttpAdaptor class methodsFor: 'preferences' stamp: 'svp 5/7/2003 02:42'!
keepAlive: aBoolean

	^#'HttpAdaptor-keepAlive' binding: aBoolean! !

!HttpAdaptor class methodsFor: 'preferences' stamp: 'svp 5/7/2003 02:43'!
maxKeepAliveRequests
	"This is the maximum number of requests to allow
	during a persistent connection. (zero means unlimited)."

	^#'HttpAdaptor-maxKeepAliveRequests' binding ifNil: [100]! !

!HttpAdaptor class methodsFor: 'preferences' stamp: 'svp 5/7/2003 02:43'!
maxKeepAliveRequests: anInteger

	^#'HttpAdaptor-maxKeepAliveRequests' binding: anInteger! !

!HttpAdaptor class methodsFor: 'instance creation' stamp: 'svp 5/15/2003 10:22'!
readAndWriteTo: aStream service: httpService

	^self new
		initializeOn: aStream httpService: httpService;
		beginConversation;
		yourself! !

!HttpAdaptor class methodsFor: 'instance creation' stamp: 'gk 2/22/2006 17:01'!
readAndWriteToSocket: aSocket service: httpService
	"Wrap the socket in a suitable SocketStream implementation
	using appropriate options for timeout etc and start the conversation."

	^self 
		readAndWriteTo: 
			((self socketStream on: aSocket)
				timeout: self dataTimeout;
				autoFlush: false;
				yourself)
		service: httpService! !

!HttpAdaptor class methodsFor: 'socketstream' stamp: 'gk 2/23/2006 10:07'!
socketStream
	"Returns the correct class to use. If FastSocketStream is available we use it,
	otherwise we use SocketStream."

	^Smalltalk at: #FastSocketStream ifAbsent: [SocketStream] ! !

!HttpAdaptor class methodsFor: 'timestamp' stamp: 'svp 5/7/2003 03:00'!
timeStamp

	| seconds |
	seconds := Time totalSeconds.
	^seconds ~= LastTimeStampTime
		ifTrue: 
			[LastTimeStamp := self buildTimeStamp: (LastTimeStampTime := seconds)]
		ifFalse: 
			[LastTimeStamp]! !

!HttpAdaptor class methodsFor: 'preferences' stamp: 'pmm 8/22/2010 15:42'!
timezoneOffset
	"The offset (as Duration) of the server's timezone relative to GMT."

	^DateAndTime localOffset! !

!HttpRequest methodsFor: 'user authentication' stamp: 'bolot 3/11/2002 17:26'!
clearPassword
	self setCookieName: #ComanchePassword
		value: 'x'
		path: '/'! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 12/16/2000 01:03'!
contentLength

	^self propertyAt: #contentLength ifAbsentPut: [
		(header at: 'content-length' ifAbsent: [0]) asNumber
	]! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 1/4/2000 18:49'!
contentType
	| i contentType |
	^self propertyAt: #contentType ifAbsentPut: [
		contentType := self header at: 'content-type' ifAbsent: [self defaultContentType].
		contentType ifNotNil: [i := contentType indexOf: $;. "get rid of charset field"
			i > 0 ifTrue: [contentType := contentType copyFrom: 1 to: i-1]].
		contentType asLowercase]! !

!HttpRequest methodsFor: 'accessing' stamp: 'DGD 7/22/2001 23:41'!
cookies
	"answer a dictionary with the cookies in the request"
	^ self
		propertyAt: #cookies
		ifAbsentPut: [self
				parseCookies: (self header
						at: 'cookie'
						ifAbsent: [''])]! !

!HttpRequest methodsFor: 'defaults' stamp: 'SVP 8/12/1999 11:40'!
defaultContentType

	^self class defaultContentType! !

!HttpRequest methodsFor: 'defaults' stamp: 'SVP 8/11/1999 11:52'!
defaultMethod

	^self class defaultMethod! !

!HttpRequest methodsFor: 'defaults' stamp: 'SVP 8/11/1999 11:52'!
defaultProtocol

	^self class defaultProtocol! !

!HttpRequest methodsFor: 'defaults' stamp: 'SVP 8/12/1999 11:40'!
defaultUrl

	^self class defaultUrl! !

!HttpRequest methodsFor: 'initialize-release' stamp: 'bolot 12/16/2000 01:04'!
destroy
	stream close.
	stream := nil! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 12/16/2000 01:08'!
endOfRequestHeaderMarker
	^self class endOfRequestHeaderMarker! !

!HttpRequest methodsFor: 'accessing' stamp: 'svp 1/17/2003 10:36'!
fields
	"Answer the fields (post or get) for the given request"

	| tmp |
	^self propertyAt: #fields ifAbsentPut:
		[tmp := self getFields copy.
		self postFields associationsDo: [ :assn | tmp add: assn].
		tmp]
! !

!HttpRequest methodsFor: 'accessing' stamp: 'svp 5/15/2003 12:48'!
firstLineOn: strm

	strm nextPutAll: self method.
	strm nextPut: $ .
	strm nextPutAll: self rawUrl.
	strm nextPut: $ .
	strm nextPutAll: self protocol.
! !

!HttpRequest methodsFor: 'accessing' stamp: 'svp 5/13/2003 15:31'!
getFields
	"retrieve fields encoded in the URL: http://aha/ha?a=1&b=2"
	| in |
	^self propertyAt: #getFields ifAbsentPut: [
		((in := rawUrl indexOf: $?) > 0) ifTrue: [
			self class decodeUrlEncodedForm: 
				(rawUrl copyFrom: (in + 1) to: rawUrl size)
				multipleValues: self multiValueFormFields
		] ifFalse: [
			self multiValueFormFields
				ifTrue: [HttpFormDictionary new]
				ifFalse: [Dictionary new].
		].
	]! !

!HttpRequest methodsFor: 'user authentication' stamp: 'bolot 3/11/2002 14:19'!
getUsername
	^self cookies at: #ComancheUsername ifAbsent: []! !

!HttpRequest methodsFor: 'user authentication' stamp: 'brp 10/2/2004 14:21'!
hashPassword: aPassword 

	^ self class hashPassword: aPassword! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 12/16/2000 01:13'!
header
	^header! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 12/16/2000 09:18'!
header: aDict
	header := aDict! !

!HttpRequest methodsFor: 'accessing' stamp: 'svp 4/18/2003 09:27'!
headerAt: aKey

	^ header at: aKey! !

!HttpRequest methodsFor: 'accessing' stamp: 'svp 4/18/2003 09:27'!
headerAt: aKey ifAbsent: aBlock

	^ header at: aKey ifAbsent: aBlock! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 2/11/2001 01:23'!
host
	^self propertyAt: #host ifAbsentPut: [self header at: 'host' ifAbsent: []]! !

!HttpRequest methodsFor: 'initialize-release' stamp: 'pmm 5/29/2007 07:30'!
initStatusString: aString 
	| statusLine |
	statusLine := aString findTokens: ' '.
	(statusLine size between: 2 and: 3) 
		ifTrue: 
			[self method: statusLine first.
			rawUrl := statusLine second.
			url := (rawUrl copyUpTo: $?) unescapePercentsWithTextEncoding: nil.
			url size + 1 < rawUrl size 
				ifTrue: [self queryString: (rawUrl copyFrom: url size + 2 to: rawUrl size)].
			self protocol: statusLine third asUppercase]
		ifFalse: [^self error: 'invalid http status line']! !

!HttpRequest methodsFor: 'initialize-release' stamp: 'brp 10/2/2004 14:34'!
initialize
	super initialize.
	properties := IdentityDictionary new! !

!HttpRequest methodsFor: 'initialize-release' stamp: 'gc 8/24/2008 10:35'!
initializeFromStream: aStream
	stream := aStream.
	self timestamp: Time totalSeconds.
	self readRequestHeaderFrom: stream.! !

!HttpRequest methodsFor: 'testing' stamp: 'gc 10/22/2007 23:57'!
isDeleteRequest

	^self method = 'DELETE'! !

!HttpRequest methodsFor: 'testing' stamp: 'SVP 8/25/1999 08:55'!
isGetRequest

	^self method = 'GET'! !

!HttpRequest methodsFor: 'testing' stamp: 'SVP 8/25/1999 08:55'!
isHeaderRequest

	^self method = 'HEAD'! !

!HttpRequest methodsFor: 'testing' stamp: 'svp 4/15/2003 00:51'!
isPersistent
	| proto answer |

	self propertyAt: #persistentConnection ifPresent: [ :x | ^x ].
	proto := self protocol.

	"If we can't figure out the protocol, default to non-persistent connections"
	answer := false.

	"For HTTP/1.0, the default is non-persistent connections"
	proto = 'HTTP/1.0' ifTrue:
		[answer := (self header at: 'connection' ifAbsent: ['']) 
			asLowercase = 'keep-alive'].

	"For HTTP/1.1, the default is persistent connections"
	proto = 'HTTP/1.1' ifTrue:
		[answer := (self header at: 'connection' ifAbsent: ['']) 
			asLowercase ~= 'close'].

	self propertyAt: #persistentConnection put: answer.
	^answer
! !

!HttpRequest methodsFor: 'testing' stamp: 'gk 11/3/2003 13:14'!
isPostMultipart
	"Is this request a POST with multipart form data?"

	^self isPostRequest and: [self contentType = MIMEDocument contentTypeMultipart]! !

!HttpRequest methodsFor: 'testing' stamp: 'SVP 8/25/1999 08:55'!
isPostRequest

	^self method = 'POST'! !

!HttpRequest methodsFor: 'testing' stamp: 'gc 10/22/2007 23:57'!
isPutRequest

	^self method = 'PUT'! !

!HttpRequest methodsFor: 'user authentication' stamp: 'bolot 3/11/2002 17:46'!
isUsername: aUsername password: aPassword
	| pwHash cookieUsername cookiePassword |
	cookieUsername := self cookies at: #ComancheUsername ifAbsent: [^false].
	cookieUsername = aUsername ifFalse: [^false].

	cookiePassword := self cookies at: #ComanchePassword ifAbsent: [^false].
	pwHash := self hashPassword: aPassword.
	^cookiePassword = pwHash asString! !

!HttpRequest methodsFor: 'accessing' stamp: 'brp 10/2/2004 16:18'!
localAddress
	"Answer the address of the request originator"

	^self propertyAt: #localAddress
		ifAbsentPut: 
			[stream socket localAddress]
! !

!HttpRequest methodsFor: 'accessing' stamp: 'brp 10/2/2004 16:18'!
localPort
	"Answer the address of the request originator"

	^self propertyAt: #localPort
		ifAbsentPut: 
			[stream socket localPort]
! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 12/16/2000 01:14'!
method
	^self propertyAt: #method ifAbsent: ['GET']! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 12/19/2000 00:16'!
method: aString
	self propertyAt: #method put: aString! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 5/2/2002 17:30'!
multiValueFormFields
	^self propertyAt: #multiValueFormFields ifAbsent: [false]! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 5/2/2002 18:01'!
multiValueFormFieldsDisable
	"disable use of multi-value form fields"
	"thus, if the status changed, need to expunge GET/POST fields if already parsed"
	self multiValueFormFields
		ifTrue: [self propertyAt: #multiValueFormFields put: false.
			self removePropertyAt: #getFields ifAbsent: [].
			self removePropertyAt: #postFields ifAbsent: [].			
			]! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 5/2/2002 18:00'!
multiValueFormFieldsEnable
	"enable use of multi-value form fields"
	"thus, if the status changed, need to expunge GET/POST fields if already parsed"
	self multiValueFormFields
		ifFalse: [self propertyAt: #multiValueFormFields put: true.
			self removePropertyAt: #getFields ifAbsent: [].
			self removePropertyAt: #postFields ifAbsent: [].			
			]! !

!HttpRequest methodsFor: 'multipart forms' stamp: 'gc 8/24/2008 14:58'!
multipartBoundary
	| str idx boundary |
	"boundary specification in the HTTP header looks like:
	Content-Type: multipart/form-data; boundary=BOUNDARY "
	boundary := 'boundary='.
	^self propertyAt: #multipartBoundary ifAbsentPut:
		[(self contentType beginsWith: MIMEDocument contentTypeMultipart)
			ifTrue: ["contentType gets lowercased, so access the raw header"
				str := header at: 'content-type' ifAbsent: [ '' ].
				idx := str indexOfSubCollection: boundary.
				'--', (str copyFrom: idx + boundary size to: str size)]
			ifFalse: [ nil ]]! !

!HttpRequest methodsFor: 'multipart forms' stamp: 'gk 12/6/2005 21:56'!
multipartFormFieldsDo: aBlock
	"USAGE:
	request multipartFormFieldsDo: 
		[:chunk |
		chunk saveToStream: aStream]."
	"NOTE: if the chunk is not saved, save it after aBlock"

	| mChunk aFieldValue |
	(self method = 'POST' and: [self contentType = MIMEDocument contentTypeMultipart])
		ifFalse: [^nil].
	stream peekForAll: self multipartBoundary.
	[stream atEnd or: [stream peekForAll: '--']] whileFalse:
		[stream next: 2.  "Advance over CRLF"
		mChunk := self nextChunkHeader.
		aBlock value: mChunk.
		mChunk isSaved ifFalse: 
			[mChunk fileName isEmptyOrNil
			ifFalse: [mChunk saveToStream: (DummyStream on: String new)]
			ifTrue:
				[aFieldValue := String streamContents: 
					[:aStream |
					mChunk saveToStream: aStream].
				self postFields at: mChunk fieldName put: aFieldValue]]].
	stream next: 2 "Advance over CRLF"! !

!HttpRequest methodsFor: 'accessing' stamp: 'svp 1/21/2003 21:40'!
networkHost

	^self propertyAt: #networkHost ifAbsentPut: 
		[NetworkHost fromString: self host].

! !

!HttpRequest methodsFor: 'multipart forms' stamp: 'svp 10/28/2003 12:16'!
nextChunkHeader
	"Read the next multipart data chunk's header"

	| string dict mChunk |
	string := stream upToAll: self endOfRequestHeaderMarker.
	dict := self class parseHttpHeader: string.
	mChunk := MultipartChunk from: dict.
	mChunk stream: self stream.
	mChunk multipartBoundary: self multipartBoundary.
	^mChunk! !

!HttpRequest methodsFor: 'private' stamp: 'lr 5/9/2007 09:22'!
parseCookies: aString 
	"PRIVATE: Parse a string in the format:  
	Cookie: NAME1=OPAQUE_STRING1; NAME2=OPAQUE_STRING2 ..."

	| dict |
	dict := Dictionary new.
	(aString findTokens: ';') do: 
			[:pairStr | 
			| pair |
			pair := pairStr findTokens: '='.
			pair size > 0 
				ifTrue: 
					[| key value |
					key := pair first withBlanksTrimmed asSymbol.
					value := pair size > 1 
						ifTrue:
							[pair second withBlanksTrimmed]
						ifFalse:
							[nil].
					dict at: key put: value]
				ifFalse: 
					["self log: 'Cookie invalid pair format: ''' , pairStr , ''''"

					]].
	^dict! !

!HttpRequest methodsFor: 'accessing' stamp: 'svp 2/6/2003 22:38'!
pathParts

	^self url findTokens: '/'! !

!HttpRequest methodsFor: 'accessing' stamp: 'GiovanniCorriga 7/17/2010 14:15'!
postContents
	^ self postFields! !

!HttpRequest methodsFor: 'accessing' stamp: 'svp 5/13/2003 15:31'!
postFields
	"Answer the multipart fields for a post request (if in fact this is a
	POST request"

	^self propertyAt: #postFields ifAbsentPut: [
		" parse POST fields in the body of request, if it's standard form data "

		(self isPostRequest and: [ 
			self contentType = MIMEDocument contentTypeFormData 
		]) ifTrue: [
			self class
				decodeUrlEncodedForm: self rawPostFields
				multipleValues: true.
		] ifFalse: [
			Dictionary new
		].
	]! !

!HttpRequest methodsFor: 'printing' stamp: 'bolot 12/16/2000 02:09'!
printOn: printStream
	printStream nextPutAll: self class name;
		nextPutAll: ' (URL=', self url asString;
		nextPutAll: '; protocol=', self protocol asString;
		nextPutAll: '; header=', self header asString;
		nextPutAll: '; getFields=', self getFields asString;
		nextPutAll: '; postFields=', self postFields asString;
		nextPutAll: ')'! !

!HttpRequest methodsFor: 'properties' stamp: 'svp 4/15/2003 00:21'!
propertyAt: aSymbol

	^properties at: aSymbol! !

!HttpRequest methodsFor: 'properties' stamp: 'svp 4/15/2003 00:21'!
propertyAt: aSymbol ifAbsent: absentBlock

	^properties at: aSymbol ifAbsent: absentBlock! !

!HttpRequest methodsFor: 'properties' stamp: 'svp 4/15/2003 00:21'!
propertyAt: aSymbol ifAbsentPut: absentBlock

	^properties at: aSymbol ifAbsentPut: absentBlock! !

!HttpRequest methodsFor: 'properties' stamp: 'svp 4/15/2003 00:21'!
propertyAt: aSymbol ifPresent: presentBlock

	^properties at: aSymbol ifPresent: presentBlock! !

!HttpRequest methodsFor: 'properties' stamp: 'svp 4/15/2003 00:21'!
propertyAt: aSymbol put: anObject

	properties at: aSymbol put: anObject! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 12/16/2000 01:57'!
protocol
	^self propertyAt: #protocol ifAbsent: [self defaultProtocol]! !

!HttpRequest methodsFor: 'accessing' stamp: 'svp 4/14/2003 22:18'!
protocol: aString
	^self propertyAt: #protocol put: aString! !

!HttpRequest methodsFor: 'accessing' stamp: 'GiovanniCorriga 7/17/2010 14:21'!
putContents
	"For compatibility with #postContents"
	^ self rawPutContents ! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 2/20/2002 13:51'!
queryString

	^self propertyAt: #queryString ifAbsent: [ nil ]! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 2/20/2002 13:51'!
queryString: aString

	^self propertyAt: #queryString put: aString! !

!HttpRequest methodsFor: 'accessing' stamp: 'GiovanniCorriga 7/17/2010 14:14'!
rawPostContents
	^self rawPostFields
! !

!HttpRequest methodsFor: 'accessing' stamp: 'pmm 4/22/2011 23:07'!
rawPostFields
	"save the POST form fields as is, for future processing, see #postFields"
	"reasons: 1) lazy form processing;
		2) allow the app to specify whether it wants multiple values for fields"

	^self propertyAt: #rawPostFields ifAbsentPut: [

		(self isPostRequest and: [
			"multipart decoding does not use #rawPostFields so we must not fetch the data from the socket here"
			self contentType ~= MIMEDocument contentTypeMultipart 
		]) ifTrue: [
			stream next: self contentLength
		] ifFalse: [
			''
		].
	]! !

!HttpRequest methodsFor: 'accessing' stamp: 'GiovanniCorriga 7/17/2010 14:11'!
rawPutContents
	"save the PUT contents as is, for future processing"
	
	^self propertyAt: #rawPutFields ifAbsentPut: [

		self isPutRequest ifTrue: [
			stream next: self contentLength
		] ifFalse: [
			''
		].
	]! !

!HttpRequest methodsFor: 'accessing' stamp: 'GiovanniCorriga 7/17/2010 14:23'!
rawRequestContents
	self isPostRequest ifTrue: [^ self rawPostContents ].
	self isPutRequest ifTrue: [^ self rawPutContents].
	"We should never get here"
	^ ''! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 12/16/2000 01:58'!
rawUrl
	^rawUrl! !

!HttpRequest methodsFor: 'initialize-release' stamp: 'jf 3/6/2004 20:04'!
readRequestHeaderFrom: aStream
	| reqHeader |
	reqHeader := ReadStream on: 
		(aStream upToAll: self endOfRequestHeaderMarker).
	self initStatusString: (self readStatusStringFrom: reqHeader).
	self header: (self class parseHttpHeader: reqHeader upToEnd).
	self rawPostFields. "force reading/parsing post fields"! !

!HttpRequest methodsFor: 'initialize-release' stamp: 'jf 3/6/2004 20:09'!
readStatusStringFrom: aStream
	"RFC 2068 says in section 4.1 (Message Types) that 'In the interest of
	robustness, servers SHOULD ignore any empty line(s) received where
	a Request-Line is expected', so we ignore any leading CR/LF's"
	
	| status |
	status := ''.
	[status isEmpty and: [aStream atEnd not]]
		whileTrue: [status := aStream upToAll: String crlf].
		
	^ status! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 12/16/2000 01:57'!
referer
	^self propertyAt: #referer ifAbsentPut: [
		header at: 'referer' ifAbsent: [ nil ]
	]! !

!HttpRequest methodsFor: 'accessing' stamp: 'gc 8/24/2008 10:24'!
remoteAddress
	^self
		propertyAt: #remoteAddress
		ifAbsentPut:
			[[stream socket remoteAddress]
				on: MessageNotUnderstood
				do: [:exc | nil]]! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 12/16/2000 09:18'!
remoteAddress: aRemoteAddress
	self propertyAt: #remoteAddress put: aRemoteAddress! !

!HttpRequest methodsFor: 'properties' stamp: 'svp 4/15/2003 00:21'!
removePropertyAt: aSymbol

	properties removeKey: aSymbol! !

!HttpRequest methodsFor: 'properties' stamp: 'svp 4/15/2003 00:21'!
removePropertyAt: aSymbol ifAbsent: aBlock

	^properties removeKey: aSymbol ifAbsent: aBlock! !

!HttpRequest methodsFor: 'accessing' stamp: 'GiovanniCorriga 7/17/2010 14:23'!
requestContents
	self isPostRequest ifTrue: [^ self postContents ].
	self isPutRequest ifTrue: [^ self putContents].
	"We should never get here"
	^ ''! !

!HttpRequest methodsFor: 'response cookies' stamp: 'bolot 3/11/2002 14:39'!
responseCookies
	"cookies that need to be set"
	^self propertyAt: #responseCookies ifAbsentPut: [OrderedCollection new]! !

!HttpRequest methodsFor: 'user authentication' stamp: 'brp 10/2/2004 14:21'!
secretWord
	^ self class secretWord! !

!HttpRequest methodsFor: 'user authentication' stamp: 'brp 10/2/2004 17:02'!
session

	^ KomSession current! !

!HttpRequest methodsFor: 'response cookies' stamp: 'bolot 3/11/2002 14:39'!
setCookieName: nameString value: valueString expiresDate: expiresDate expiresTime: expiresTime path: pathString domain: domainString secure: secureBoolean 
	"set a cookie in the Response"
	| temp |
	temp := String new writeStream.
	"NAME=VALUE"
	temp nextPutAll: nameString;
		 nextPut: $=;
		 nextPutAll: valueString.
	"; expires=Wdy, DD-Mon-YYYY HH:MM:SS GMT"
	(expiresDate notNil and:[ expiresTime notNil])
		ifTrue: [temp nextPutAll: '; expires=';
				 nextPutAll: expiresDate weekday;
				 nextPutAll: ', '.
			expiresDate printOn: temp format: #(1 2 3 $- 2 2 2 ).
			temp nextPutAll: ' ';
				 nextPutAll: expiresTime print24;
				 nextPutAll: ' GMT'].
	"; path=PATH"
	pathString notNil
		ifTrue: [temp nextPutAll: '; path=';
				 nextPutAll: pathString].
	"; domain=DOMAIN"
	domainString notNil
		ifTrue: [temp nextPutAll: '; domain=';
				 nextPutAll: domainString].
	"; secure"
	(secureBoolean notNil
			and: [secureBoolean])
		ifTrue: [temp nextPutAll: '; secure'].
	""
	self responseCookies add: temp contents! !

!HttpRequest methodsFor: 'response cookies' stamp: 'bolot 3/11/2002 14:40'!
setCookieName: nameString value: valueString path: pathString 
	"set a cookie in the Response"
	self
		setCookieName: nameString
		value: valueString
		expiresDate: nil
		expiresTime: nil
		path: pathString
		domain: nil
		secure: nil! !

!HttpRequest methodsFor: 'user authentication' stamp: 'bolot 3/11/2002 17:35'!
setUsername: aUsername
	"save the username in a cookie"
	"make it expire very far into the future"
	self
		setCookieName: #ComancheUsername
		value: aUsername
		expiresDate: (Date today addDays: 1000)
		expiresTime: Time now
		path: '/'
		domain: nil
		secure: nil.

	self flag: #todo.
	"allow for multiple usernames"! !

!HttpRequest methodsFor: 'user authentication' stamp: 'bolot 3/11/2002 17:35'!
setUsername: aUsername password: aPassword
	"save the username/password in cookies"
	| pwHash |
	self setUsername: aUsername.
	pwHash := self hashPassword: aPassword.
	self
		setCookieName: #ComanchePassword
		value: pwHash asString
		expiresDate: (Date today addDays: 1000)
		expiresTime: Time now
		path: '/'
		domain: nil
		secure: nil.

	self flag: #todo.
	"allow for multiple usernames"! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 12/16/2000 01:59'!
stream
	^stream! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 12/16/2000 02:00'!
timestamp

	^self propertyAt: #timestamp ifAbsent: [ nil ]! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 12/16/2000 02:00'!
timestamp: aTimestamp

	self propertyAt: #timestamp put: aTimestamp! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 12/16/2000 01:58'!
url
	^url! !

!HttpRequest methodsFor: 'accessing' stamp: 'bolot 6/21/2001 04:03'!
url: aUrl
	url := aUrl! !

!HttpRequest methodsFor: 'accessing' stamp: 'brp 10/2/2004 14:56'!
user
	"currently, only basic authentication is supported"

	| userID i |
	userID := self header at: 'authorization' ifAbsent: [^nil].
	userID := (userID notNil and: [(i := userID findString: 'Basic ') > 0]) 
		ifTrue: [userID copyFrom: i + 6 to: userID size]
		ifFalse: [nil].
	^userID! !

!HttpRequest methodsFor: 'user authentication' stamp: 'bolot 2/18/2002 19:24'!
userObject: anObject
	^self session ifNotNil: [self session userObject: anObject]! !

!HttpRequest methodsFor: 'printing' stamp: 'lr 4/15/2010 08:56'!
writeOn: aStream
	"this can be used to form a client-side request and send it over network"
	aStream nextPutAll: self method; nextPut: $ ; nextPutAll: self url; nextPut: $ ; nextPutAll: self protocol; nextPutAll: String crlf.
	self header keysAndValuesDo: [:key :value |
		aStream nextPutAll: key, ': ', value, String crlf].
	aStream nextPutAll: String crlf.
	"aStream nextPutAll: self body asString"! !

!HttpRequest class methodsFor: 'parsing' stamp: 'pmm 10/23/2010 18:23'!
addKey: key value: value toForm: dict multipleValues: boolean
	boolean
		ifTrue: [dict at: key put: value]
		ifFalse: [(dict includesKey: key)
			ifFalse: [dict at: key put: value]
			ifTrue: [
				dict at: key put: (dict at: key), value]]! !

!HttpRequest class methodsFor: 'bindings' stamp: 'svp 4/15/2003 15:06'!
current

	^#'HttpRequest-Current' binding! !

!HttpRequest class methodsFor: 'bindings' stamp: 'svp 4/15/2003 15:06'!
current: anHttpRequest

	#'HttpRequest-Current' binding: anHttpRequest! !

!HttpRequest class methodsFor: 'parsing' stamp: 'svp 5/13/2003 15:29'!
decodeUrlEncodedForm: string
	^self decodeUrlEncodedForm: string multipleValues: false! !

!HttpRequest class methodsFor: 'parsing' stamp: 'pmm 5/29/2007 07:31'!
decodeUrlEncodedForm: string multipleValues: boolean
	| dict key value start end eqSignPos more |
	dict := boolean ifTrue: [HttpFormDictionary new] ifFalse: [Dictionary new].
	string isEmptyOrNil ifTrue: [^dict].
	more := true.
	start := 1.
	[end := string indexOf: $& startingAt: start.
	end == 0
		ifTrue: [end := string size. more := false]
		ifFalse: [end := end - 1].
	eqSignPos := string indexOf: $= startingAt: start.
	(eqSignPos > end or: [eqSignPos == 0])
		ifTrue: [key := (key := string copyFrom: start to: end) unescapePercentsWithTextEncoding: nil.
			value := '']
		ifFalse: [key := (key := string copyFrom: start to: eqSignPos-1) unescapePercentsWithTextEncoding: nil.
			value := (value := string copyFrom: eqSignPos+1 to: end) unescapePercentsWithTextEncoding: nil].
	self addKey: key value: value toForm: dict multipleValues: boolean.
	start := end + 2.
	more] whileTrue.

	^dict! !

!HttpRequest class methodsFor: 'defaults' stamp: 'SVP 8/12/1999 11:39'!
defaultContentType

	^MIMEDocument defaultContentType! !

!HttpRequest class methodsFor: 'defaults' stamp: 'SVP 8/11/1999 11:51'!
defaultMethod

	^'GET'! !

!HttpRequest class methodsFor: 'defaults' stamp: 'SVP 8/11/1999 11:50'!
defaultProtocol

	^'HTTP/1.0'! !

!HttpRequest class methodsFor: 'defaults' stamp: 'SVP 8/11/1999 11:51'!
defaultUrl

	^''! !

!HttpRequest class methodsFor: 'accessing' stamp: 'bolot 12/16/2000 03:23'!
endOfRequestHeaderMarker
	"This marks the end of an HTTP request (two consecutive CR-LFs)"

	^EndOfRequestHeaderMarker! !

!HttpRequest class methodsFor: 'authentication' stamp: 'bolot 3/11/2002 14:22'!
hashPassword: aPassword
	^SecureHashAlgorithm new hashMessage:
		(aPassword, ':', self secretWord)! !

!HttpRequest class methodsFor: 'initialize-release' stamp: 'bolot 12/16/2000 09:35'!
initialize
	EndOfRequestHeaderMarker := String crlf, String crlf! !

!HttpRequest class methodsFor: 'instance creation' stamp: 'gc 10/24/2007 10:11'!
new
	"Kept for backwards compatibility"
	^super new initialize! !

!HttpRequest class methodsFor: 'parsing' stamp: 'pmm 10/23/2010 18:25'!
parseHttpHeader: string
	| dict key value start end more colonPos fieldDelims lastKey keyValueDelim crlf |
	dict := Dictionary new.
	crlf := String crlf.
	string isEmptyOrNil ifTrue: [^dict].
	fieldDelims := crlf asCharacterSet.
	keyValueDelim := $:.
	more := true.
	start := end := 1.
	lastKey := ''.
	[end := string indexOfAnyOf: fieldDelims startingAt: start.
	end == 0
		ifTrue: [end := string size. more := false]
		ifFalse: [end := end - 1].
	(end >= start and: [start < string size])
		ifTrue: [
			(string at: start) isSeparator
				ifTrue:
					[dict
						at: lastKey
						put: (dict at: lastKey), (string copyFrom: start to: end)]
				ifFalse:
					[colonPos := string indexOf: keyValueDelim startingAt: start.
					(colonPos > end or: [colonPos == 0])
						ifTrue:
							[key := (string copyFrom: start to: end) translateToLowercase.
							value := '']
						ifFalse:
							[key := (string copyFrom: start to: colonPos-1) translateToLowercase.
							value := (string copyFrom: colonPos+1 to: end) withBlanksTrimmed]].
			key isEmpty
				ifFalse: [dict at: key put: value.
					lastKey := key.
					key := ''].
			start := string skipDelimiters: crlf startingAt: end+1].
	more] whileTrue.

	^dict! !

!HttpRequest class methodsFor: 'instance creation' stamp: 'bolot 12/16/2000 03:08'!
readFromStream: aStream

	^self new initializeFromStream: aStream! !

!HttpRequest class methodsFor: 'authentication' stamp: 'bolot 3/11/2002 14:21'!
secretWord
	"a string used in hashing passwords"
	^'ab74uihagAS'! !

!HttpResponse methodsFor: 'accessing-cookies' stamp: 'svp 4/15/2003 01:08'!
addCookies: newCookies
	
	self cookies addAll: newCookies.
! !

!HttpResponse methodsFor: 'comanche processing' stamp: 'bolot 1/11/2001 17:51'!
asHttpPartialResponseBlock: aBlock
	^(self as: HttpPartialResponse)
		producerBlock: aBlock;
		yourself! !

!HttpResponse methodsFor: 'comanche processing'!
asHttpResponseTo: aRequest
	^self! !

!HttpResponse methodsFor: 'accessing' stamp: 'svp 5/16/2003 23:54'!
contentLength

	^contentLength! !

!HttpResponse methodsFor: 'accessing' stamp: 'SVP 8/16/1999 11:54'!
contentType

	^contentType! !

!HttpResponse methodsFor: 'accessing' stamp: 'SVP 8/16/1999 11:54'!
contentType: aMimeType

	contentType := aMimeType! !

!HttpResponse methodsFor: 'accessing' stamp: 'SVP 8/16/1999 11:53'!
contents

	^contents! !

!HttpResponse methodsFor: 'accessing' stamp: 'svp 5/16/2003 23:54'!
contents: aStream

	contents := aStream.
	contentLength := aStream size.! !

!HttpResponse methodsFor: 'accessing-cookies' stamp: 'DGD 7/20/2001 00:25'!
cookies
^ cookies ifNil:[cookies := OrderedCollection new]! !

!HttpResponse methodsFor: 'defaults' stamp: 'SVP 8/12/1999 14:08'!
defaultContentType

	^MIMEDocument contentTypeHtml! !

!HttpResponse methodsFor: 'initialize-release' stamp: 'SVP 8/26/1999 08:06'!
destroy

	self contents close.
! !

!HttpResponse methodsFor: 'accessing' stamp: 'svp 11/17/1999 11:08'!
fieldAt: aString

	^self fields at: aString! !

!HttpResponse methodsFor: 'accessing' stamp: 'svp 11/17/1999 11:08'!
fieldAt: aString ifAbsent: absBlock

	^self fields at: aString ifAbsent: absBlock! !

!HttpResponse methodsFor: 'accessing' stamp: 'svp 11/17/1999 11:08'!
fieldAt: aString ifAbsentPut: absBlock

	^self fields at: aString ifAbsentPut: absBlock! !

!HttpResponse methodsFor: 'accessing' stamp: 'svp 11/17/1999 11:07'!
fieldAt: aString put: aValue

	self fields at: aString put: aValue! !

!HttpResponse methodsFor: 'accessing' stamp: 'svp 4/22/2003 00:12'!
fields

	^fields ifNil: [fields := Dictionary new]! !

!HttpResponse methodsFor: 'authentication' stamp: 'bolot 3/11/2002 14:22'!
hashPassword: aPassword
	^HttpRequest hashPassword: aPassword! !

!HttpResponse methodsFor: 'accessing' stamp: 'svp 12/16/1999 11:33'!
httpVersion

	^'HTTP/1.1'! !

!HttpResponse methodsFor: 'accessing' stamp: 'svp 4/15/2003 01:00'!
isPersistent

	^(self fieldAt: 'Connection') = 'Keep-Alive'! !

!HttpResponse methodsFor: 'responding' stamp: 'svp 5/16/2003 23:56'!
pvtWriteContentLengthOn: aStream

	self contentLength ifNotNilDo:
		[ :length |
		aStream
			nextPutAll: 'Content-length: ';
			nextPutAll: length asString;
			nextPutAll: String crlf]! !

!HttpResponse methodsFor: 'responding' stamp: 'francoisstephany 7/21/2009 23:28'!
pvtWriteContentTypeOn: aStream
	aStream
		nextPutAll: 'Content-type: ';
		nextPutAll: self contentType asString;
		nextPutAll: String crlf! !

!HttpResponse methodsFor: 'responding' stamp: 'pmm 5/20/2010 22:29'!
pvtWriteContentsOn: aStream
	| chunkSize cnts |
	chunkSize := self responseChunkSize.
	cnts := self contents.

	(contents isBinary and: [ aStream isBinary not ])
		ifTrue: [ aStream binary ].
	[cnts atEnd] whileFalse: 
		[aStream nextPutAll: (cnts next: chunkSize); flush]! !

!HttpResponse methodsFor: 'responding' stamp: 'svp 4/15/2003 01:10'!
pvtWriteCookiesOn: aStream 

	self cookies
		do: [:cookie | aStream nextPutAll: 'Set-Cookie: ';
				 nextPutAll: cookie;
				 nextPutAll: String crlf]! !

!HttpResponse methodsFor: 'responding' stamp: 'svp 4/22/2003 00:19'!
pvtWriteFieldsOn: aStream

	fields isEmptyOrNil ifTrue: [ ^self ].

	fields keysAndValuesDo: [ :k :v |
		aStream
			nextPutAll: k;
			nextPutAll: ': ';
			nextPutAll: v;
			nextPutAll: String crlf
	]! !

!HttpResponse methodsFor: 'responding' stamp: 'bolot 12/16/2000 09:29'!
pvtWriteStatusOn: aStream
	aStream
		nextPutAll: self httpVersion;
		nextPut: $ ;
		nextPutAll: self statusCodeAndReason;
		nextPutAll: String crlf! !

!HttpResponse methodsFor: 'accessing' stamp: 'svp 5/7/2003 04:13'!
responseChunkSize

	^self class responseChunkSize! !

!HttpResponse methodsFor: 'authentication' stamp: 'bolot 3/11/2002 14:22'!
secretWord
	^HttpRequest secretWord! !

!HttpResponse methodsFor: 'accessing-cookies' stamp: 'DGD 7/20/2001 00:30'!
setCookieName: nameString value: valueString expiresDate: expiresDate expiresTime: expiresTime path: pathString domain: domainString secure: secureBoolean 
	"set a cookie in the Response"
	| temp |
	temp := String new writeStream.
	"NAME=VALUE"
	temp nextPutAll: nameString;
		 nextPut: $=;
		 nextPutAll: valueString.
	"; expires=Wdy, DD-Mon-YYYY HH:MM:SS GMT"
	(expiresDate notNil and:[ expiresTime notNil])
		ifTrue: [temp nextPutAll: '; expires=';
				 nextPutAll: expiresDate weekday;
				 nextPutAll: ', '.
			expiresDate printOn: temp format: #(1 2 3 $- 2 2 2 ).
			temp nextPutAll: ' ';
				 nextPutAll: expiresTime print24;
				 nextPutAll: ' GMT'].
	"; path=PATH"
	pathString notNil
		ifTrue: [temp nextPutAll: '; path=';
				 nextPutAll: pathString].
	"; domain=DOMAIN"
	domainString notNil
		ifTrue: [temp nextPutAll: '; domain=';
				 nextPutAll: domainString].
	"; secure"
	(secureBoolean notNil
			and: [secureBoolean])
		ifTrue: [temp nextPutAll: '; secure'].
	""
	self cookies add: temp contents! !

!HttpResponse methodsFor: 'accessing-cookies' stamp: 'DGD 7/20/2001 00:24'!
setCookieName: nameString value: valueString path: pathString 
	"set a cookie in the Response"
	self
		setCookieName: nameString
		value: valueString
		expiresDate: nil
		expiresTime: nil
		path: pathString
		domain: nil
		secure: nil! !

!HttpResponse methodsFor: 'authentication' stamp: 'bolot 3/11/2002 14:12'!
setUsername: aUsername
	"save the username in a cookie"
	self
		setCookieName: #ComancheUsername
		value: aUsername
		path: '/'.

	self flag: #todo.
	"allow for multiple usernames"! !

!HttpResponse methodsFor: 'authentication' stamp: 'bolot 3/11/2002 17:30'!
setUsername: aUsername password: aPassword
	"save the username/password in cookies"
	| pwHash |
	self setUsername: aUsername.
	pwHash := self hashPassword: aPassword.
	self
		setCookieName: #ComanchePassword
		value: pwHash asString
		path: '/'.

	self flag: #todo.
	"allow for multiple usernames"! !

!HttpResponse methodsFor: 'accessing' stamp: 'SVP 8/16/1999 11:53'!
status

	^status! !

!HttpResponse methodsFor: 'accessing' stamp: 'gc 8/28/2008 14:29'!
status: aSymbol

	status := aSymbol! !

!HttpResponse methodsFor: 'accessing' stamp: 'svp 11/18/1999 13:03'!
statusCode

	^(StatusCodes at: self status) key.
! !

!HttpResponse methodsFor: 'accessing' stamp: 'SVP 8/26/1999 10:41'!
statusCodeAndReason
	| tmp |

	tmp := StatusCodes at: self status.
	^tmp key, ' ', tmp value.! !

!HttpResponse methodsFor: 'responding' stamp: 'svp 5/15/2003 12:50'!
writeHeadersOn: aStream

	| tmp |
	"Header"

	tmp := WriteStream on: ''.
	self pvtWriteStatusOn: tmp.
	self pvtWriteFieldsOn: tmp.
	self pvtWriteCookiesOn: tmp.
	self pvtWriteContentTypeOn: tmp.
	self pvtWriteContentLengthOn: tmp.
	tmp nextPutAll: String crlf.
	aStream nextPutAll: tmp contents; flush.

! !

!HttpResponse methodsFor: 'responding' stamp: 'gc 8/23/2008 17:54'!
writeOn: aStream
	self writeHeadersOn: aStream.
	self pvtWriteContentsOn: aStream.
! !

!HttpResponse class methodsFor: 'bindings' stamp: 'svp 4/15/2003 15:06'!
current

	^#'HttpResponse-Current' binding! !

!HttpResponse class methodsFor: 'bindings' stamp: 'svp 4/15/2003 15:07'!
current: anHttpResponse

	#'HttpResponse-Current' binding: anHttpResponse! !

!HttpResponse class methodsFor: 'instance creation' stamp: 'michael.rueger 2/25/2009 12:42'!
fromFileStream: aStream

	^self basicNew
		status: #ok;
		"fieldAt: 'Expires' put: 'Thu, 15 Apr 2010 20:00:00 GMT';"
		"fieldAt: 'Cache-Control' put: 'max-age=86400';"
		contentType: aStream contentType;
		contents: aStream;
		yourself

	! !

!HttpResponse class methodsFor: 'instance creation' stamp: 'francoisstephany 7/21/2009 23:26'!
fromMIMEDocument: aMIMEDoc
	| content |
	content := aMIMEDoc content.
	content isString ifTrue:
		[content := ReadStream on: content].
	^self basicNew
		status: #ok;
		"fieldAt: 'Cache-Control' put: 'max-age=86400';"
		contentType: aMIMEDoc contentType;
		contents: content;
		yourself

	! !

!HttpResponse class methodsFor: 'instance creation' stamp: 'francoisstephany 7/21/2009 23:24'!
fromStream: aStream

	^self basicNew
		status: #ok;
		"fieldAt: 'Expires' put: 'Thu, 15 Apr 2010 20:00:00 GMT';"
		"fieldAt: 'Cache-Control' put: 'max-age=86400';"
		contentType: aStream contentType;
		contents: aStream;
		yourself

	! !

!HttpResponse class methodsFor: 'instance creation' stamp: 'svp 5/13/2003 17:11'!
fromStream: aStream contentType: mimeTypeString

	^self basicNew
		status: #ok;
		"fieldAt: 'Expires' put: 'Thu, 15 Apr 2010 20:00:00 GMT';"
		"fieldAt: 'Cache-Control' put: 'max-age=86400';"
		contentType: mimeTypeString;
		contents: aStream;
		yourself

	! !

!HttpResponse class methodsFor: 'instance creation' stamp: 'svp 5/12/2003 16:10'!
fromString: aString

	^self basicNew
		status: #ok;
		"fieldAt: 'Cache-Control' put: 'max-age=86400';"
		contentType: MIMEDocument contentTypeHtml;
		contents: (ReadStream on: aString);
		yourself! !

!HttpResponse class methodsFor: 'instance creation' stamp: 'svp 5/13/2003 17:13'!
fromString: aString contentType: contentTypeString

	^self basicNew
		status: #ok;
		"fieldAt: 'Cache-Control' put: 'max-age=86400';"
		contentType: contentTypeString;
		contents: (ReadStream on: aString);
		yourself! !

!HttpResponse class methodsFor: 'instance creation' stamp: 'svp 5/12/2003 16:10'!
fromUrl: aUrl
	^self basicNew
		status: #tempMoved;
		fieldAt: 'Location' put: aUrl asString;
		contentType: MIMEDocument contentTypeHtml;
		contents: (ReadStream on: '<head><title>Object moved</title></head>
<body><h1>Object Moved</h1>This object may be found <a HREF="', aUrl asString,'">here</a>.</body>');
		yourself! !

!HttpResponse class methodsFor: 'initialization' stamp: 'SVP 8/16/1999 16:43'!
initialize
	"  HttpResponse initialize  "

	self initializeStatusCodes.! !

!HttpResponse class methodsFor: 'initialization' stamp: 'gc 8/28/2008 13:12'!
initializeStatusCodes
	"  HttpResponse initializeStatusCodes  "

	StatusCodes := IdentityDictionary new
		"1xx: Meta status codes"
		at: #continue				put: ('100' -> 'Continue');
		at: #switchingProtocols	put: ('101' -> 'Switching Protocols');
		at: #processing			put: ('102' -> 'Processing'); "WebDav RFC: 2518"
		"2xx: Success status codes"
		at: #ok								put: ('200' -> 'OK');
		at: #created							put: ('201' -> 'Created');
		at: #accepted							put: ('202' -> 'Accepted');
		at: #nonAuthoritativeInformation 	put: ('203' -> 'Non-Authoritative Information');
		at: #noContent						put: ('204' -> 'No Content');
		at: #resetContent	 					put: ('205' -> 'Reset Content');
		at: #partialContent					put: ('206' -> 'Partial Content');
		at: #multiStatus						put: ('207' -> 'Multi-Status'); "WebDav RFC: 2518"
		"3xx: Redirection status codes"
		at: #multipleChoices		put: ('300' -> 'Multiple Choices');
		at: #permMoved			put: ('301' -> 'Moved Permanently'); "kept for compatibility"
		at: #permanentlyMoved	put: ('301' -> 'Moved Permanently');
		at: #found					put: ('302' -> 'Found');
		at: #seeOther				put: ('303' -> 'See Other');								
		at: #notModified			put: ('304' -> 'Not Modified');
		at: #useProxy				put: ('305' -> 'Use Proxy');
		at: #temporaryRedirect	put: ('307' -> 'Temporary Redirect');
		at: #tempMoved			put: ('307' -> 'Temporary Redirect'); "kept for compatibility"
		"4xx: Client-Side Error status code"
		at: #badRequest				put: ('400' -> 'Bad Request');
		at: #unauthorized				put: ('401' -> 'Unauthorized');
		at: #payment					put: ('402' -> 'Payment Required');
		at: #forbidden				put: ('403' -> 'Forbidden');
		at: #notFound					put: ('404' -> 'Not Found');
		at: #notAllowed				put: ('405' -> 'Method Not Allowed');
		at: #notAcceptable			put: ('406' -> 'Not Acceptable');
		at: #proxyAuthRequired		put: ('407' -> 'Proxy Authentication Required');
		at: #requestTimeout			put: ('408' -> 'Request Timeout');
		at: #conflict					put: ('409' -> 'Conflict');
		at: #gone						put: ('410' -> 'Gone');
		at: #lenghtRequired			put: ('411' -> 'Lenght Required');
		at: #preconditionFailed		put: ('412' -> 'Precondition Failed');
		at: #entityTooLarge			put: ('413' -> 'Request Entity Too Large');
		at: #uriTooLong				put: ('414' -> 'Request-URI Too Long');
		at: #unsupportedMediaType	put: ('415' -> 'Unsupported Media Type');
		at: #rangeNotSatisfiable	put: ('416' -> 'Requested Range Not Satisfiable');
		at: #expectationFailed		put: ('417' -> 'Expectation Failed');
		at: #unprocessableEntity	put: ('422' -> 'Unprocessable Entity'); "WebDav RFC: 2518"
		at: #locked					put: ('423' -> 'Locked'); "WebDav RFC: 2518"
		at: #failedDependency		put: ('424' -> 'Failed Dependency'); "WebDav RFC: 2518"
		"5xx: Server-Side Error status codes"
		at: #serverError				put: ('500' -> 'Internal Server Error');
		at: #notImplemented			put: ('501' -> 'Not Implemented');
		at: #badGateway				put: ('502' -> 'Bad Gateway');
		at: #serviceUnavailable		put: ('503' -> 'Service Unavailable');
		at: #gatewayTimeout			put: ('504' -> 'Gateway Timeout');
		at: #versionNotSupported	put: ('505' -> 'HTTP Version Not Supported');
		at: #InsufficientStorage	put: ('507' -> 'Insufficient Storage'); 	"WebDav RFC: 2518"
 		yourself.

	"Initialize an inverse mapping to lookup a symbol based on the numeric code"
	StatusSymbols := Dictionary new.
	StatusCodes associationsDo: 
		[ :assn |
		StatusSymbols at: assn value key asNumber put: assn key].! !

!HttpResponse class methodsFor: 'instance creation' stamp: 'svp 5/12/2003 16:28'!
new

	^self basicNew
		status: #ok;
		"fieldAt: 'Cache-Control' put: 'max-age=86400';"
		contentType: MIMEDocument contentTypeHtml;
		contents: (ReadStream on: 'This is a simple HttpResponse');
		yourself! !

!HttpResponse class methodsFor: 'instance creation' stamp: 'gc 8/28/2008 14:28'!
redirectTo: url
	"Create a redirection response."

	^(HttpResponse
			status: #seeOther
			contents: 'Temporarily moved to: <A HREF="', url, '">', url, '</A>')
		fieldAt: 'Location' put: url;
		fieldAt: 'URI' put: url; yourself! !

!HttpResponse class methodsFor: 'preferences' stamp: 'svp 5/7/2003 04:13'!
responseChunkSize
	"This is the maximum number of bytes of the content stream that are written 
	to the output stream during each iteration of the writing loop."

	^#'HttpResponse-responseChunkSize' binding ifNil: [131072]! !

!HttpResponse class methodsFor: 'preferences' stamp: 'svp 5/7/2003 04:10'!
responseChunkSize: anInteger

	^#'HttpResponse-responseChunkSize' binding: anInteger! !

!HttpResponse class methodsFor: 'instance creation' stamp: 'svp 5/16/2003 23:08'!
status: aSymbol contents: aString

	^self basicNew
		status: aSymbol;
		contentType: MIMEDocument contentTypeHtml;
		contents: (ReadStream on: aString);
		yourself
! !

!HttpResponse class methodsFor: 'accessing' stamp: 'svp 4/15/2003 09:20'!
statusCodeFor: aSymbol

	^(StatusCodes at: aSymbol) key! !

!HttpResponse class methodsFor: 'accessing' stamp: 'svp 4/15/2003 09:21'!
statusDescriptionFor: aSymbol

	^(StatusCodes at: aSymbol) value! !

!HttpResponse class methodsFor: 'accessing' stamp: 'svp 10/28/2003 13:14'!
statusSymbolFor: aCode

	^StatusSymbols at: aCode asNumber ifAbsent: [#serverError]
! !

!HttpPartialResponse methodsFor: 'accessing' stamp: 'bolot 1/11/2001 17:49'!
producerBlock: aBlock
	producerBlock := aBlock! !

!HttpPartialResponse methodsFor: 'responding' stamp: 'bolot 1/11/2001 17:50'!
pvtWriteContentLengthOn: aStream
	"do nothing, since the length is not known yet"
	self flag: #todo. "in HTTP/1.1, can set chunking"! !

!HttpPartialResponse methodsFor: 'responding' stamp: 'bolot 1/11/2001 17:49'!
pvtWriteContentsOn: aStream
	producerBlock value: aStream! !

!KomAuthDb methodsFor: 'accessing' stamp: 'svp 5/14/2003 17:20'!
addUser: aString withPassword: password

	self passwords at: aString put: (self encode: password)! !

!KomAuthDb methodsFor: 'encode-decode' stamp: 'svp 5/14/2003 17:31'!
decode: encodedPassword using: aPassword

	^String streamContents: 
		[ :strm |
		1 to: encodedPassword size by: 2 do: 
			[ :in |
			strm nextPut: 
				(Character value: 
					(((('0123456789ABCDEF' indexOf: (encodedPassword at: in)) - 1) * 16) +
					(('0123456789ABCDEF' indexOf: (encodedPassword at: (in + 1))) - 1)))]]
! !

!KomAuthDb methodsFor: 'encode-decode' stamp: 'svp 5/14/2003 17:30'!
encode: password

	^String streamContents: 
		[ :strm |
		password do: [ :ea | strm nextPutAll: ea hex]]! !

!KomAuthDb methodsFor: 'accessing' stamp: 'svp 5/14/2003 17:36'!
includesUser: userName

	^self passwords includesKey: userName! !

!KomAuthDb methodsFor: 'initialize-release' stamp: 'brp 10/2/2004 14:34'!
initialize
	super initialize.
	passwords := Dictionary new! !

!KomAuthDb methodsFor: 'accessing' stamp: 'svp 5/14/2003 17:32'!
passwords

	^passwords! !

!KomAuthDb methodsFor: 'accessing' stamp: 'svp 5/14/2003 17:36'!
removeUser: userName

	^self passwords removeKey: userName! !

!KomAuthDb methodsFor: 'password verification' stamp: 'svp 5/14/2003 17:37'!
verifyPassword: aPassword forUser: userName

	(self includesUser: userName) ifFalse: [^false].
	^(self decode: (self passwords at: userName) using: aPassword) = aPassword
! !

!KomAuthDb class methodsFor: 'instance creation' stamp: 'svp 5/14/2003 17:35'!
new

	^super new initialize! !

!KomModuleVisitor methodsFor: 'as yet unclassified' stamp: 'svp 5/16/2003 12:30'!
doBlock: aBlock

	aBlock numArgs = 1 ifTrue: [self doMonadicValuable: aBlock].
	aBlock numArgs = 1 ifTrue: [self doDyadicValuable: aBlock]
! !

!KomModuleVisitor methodsFor: 'as yet unclassified' stamp: 'svp 5/16/2003 12:31'!
doComancheModule: aComancheModule
	"For visiting a module hierarchy"
! !

!KomModuleVisitor methodsFor: 'as yet unclassified' stamp: 'svp 5/16/2003 12:32'!
doDyadicValuable: aDyadicValuable
	"By default, do nothing since these aren't really modules"
! !

!KomModuleVisitor methodsFor: 'as yet unclassified' stamp: 'svp 5/16/2003 12:32'!
doMessageSend: aMessageSend

	aMessageSend arguments size = 1 ifTrue: [^self doMonadicValuable: aMessageSend].
	aMessageSend arguments size = 2 ifTrue: [^self doDyadicValuable: aMessageSend]! !

!KomModuleVisitor methodsFor: 'as yet unclassified' stamp: 'svp 5/16/2003 12:28'!
doMonadicValuable: aMonadicValuable
	"By default, do nothing since these aren't really modules"
! !

!KomModuleValidator methodsFor: 'as yet unclassified' stamp: 'svp 5/16/2003 13:10'!
doComancheModule: aComancheModule
	"This method assumes that module traversal happens in depth first order"

	aComancheModule validateContext: self problems! !

!KomModuleValidator methodsFor: 'as yet unclassified' stamp: 'svp 5/16/2003 12:50'!
problems

	^problems ifNil: [problems := OrderedCollection new]! !

!KomSession methodsFor: 'accessing' stamp: 'svp 5/14/2003 00:44'!
attributes
	"answer the attributes stored in Session"
	^ attributes! !

!KomSession methodsFor: 'accessing' stamp: 'svp 5/14/2003 00:44'!
id

	^id! !

!KomSession methodsFor: 'initialization' stamp: 'brp 10/2/2004 14:34'!
initialize
	super initialize.
	attributes := Dictionary new.
	id := self class nextSessionID! !

!KomSession methodsFor: 'accessing' stamp: 'svp 5/14/2003 01:01'!
lastAccess

	^lastAccess! !

!KomSession methodsFor: 'accessing' stamp: 'svp 5/14/2003 01:01'!
lastAccess: secondCount

	lastAccess := secondCount! !

!KomSession methodsFor: 'printing' stamp: 'svp 5/14/2003 01:01'!
printOn: aStream 
	aStream 
		nextPutAll: self class name;
		nextPutAll: ' id:';
		nextPutAll: id asString;
		nextPutAll: ' attributes:';
		nextPutAll: attributes asString;
		nextPutAll: ' lastAccess:';
		nextPutAll: lastAccess asString! !

!KomSession methodsFor: 'accessing' stamp: 'svp 5/14/2003 01:00'!
touch

	lastAccess := Time totalSeconds.! !

!KomSession class methodsFor: 'bindings' stamp: 'svp 5/14/2003 00:49'!
current

	^#'KomSession-current' binding! !

!KomSession class methodsFor: 'bindings' stamp: 'svp 5/14/2003 00:49'!
current: aKomSession

	^#'KomSession-current' binding: aKomSession! !

!KomSession class methodsFor: 'class initialization' stamp: 'svp 5/14/2003 00:44'!
initialize

	LastSessionID := Time totalSeconds.! !

!KomSession class methodsFor: 'instance creation' stamp: 'svp 5/14/2003 00:44'!
new

	^ super new initialize! !

!KomSession class methodsFor: 'session id' stamp: 'DGD 7/24/2001 20:59'!
nextSessionID
	self flag: #TODO.
	"more robust unique number"
	LastSessionID := LastSessionID + 1.
	^ (65535 atRandom hex allButFirst: 3)
		, (LastSessionID hex allButFirst: 3)
		, (65535 atRandom hex allButFirst: 3)! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 4/18/2003 10:03'!
addAssembly: aModuleAssembly

	self addModule: aModuleAssembly rootModule! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 5/16/2003 15:37'!
addModule: aComancheModule

	aComancheModule validateForStack: self moduleStack.
	self currentModule addSubModule: aComancheModule! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 5/13/2003 09:59'!
addPlug: aBlockOrMessageSend
	"Blocks and MessageSends are compatible with the ComancheModule
	protocol, so just add it as a module"

	self addModule: aBlockOrMessageSend! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 4/18/2003 10:22'!
alias: pathPrefix to: aBlock

	self 
		pushModule: (ModAlias new pathPrefix: pathPrefix; yourself)
		andDo: aBlock

! !

!ModuleAssembly methodsFor: 'construction' stamp: 'brp 10/2/2004 14:35'!
authenticate: anAuthDb realm: realmString 
	self addModule: ((ModAuth new)
				authDb: anAuthDb;
				realm: realmString; yourself)! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 4/18/2003 10:16'!
basicPushModule: aModule

	^self moduleStack addLast: aModule.
! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 4/17/2003 17:12'!
currentModule

	^self moduleStack last! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 5/16/2003 15:45'!
directoryIndex: indexFileString

	self 
		pushModule: (ModDir new directoryIndex: indexFileString; yourself)
		andDo: [self addModule: ModAutoIndex new].
! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 5/15/2003 16:29'!
documentRoot: docRoot

	self pushModule: (ModDoc new documentRoot: docRoot; yourself).
! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 4/18/2003 10:22'!
documentRoot: docRoot do: aBlock

	self 
		pushModule: (ModDoc new documentRoot: docRoot; yourself)
		andDo: aBlock
! !

!ModuleAssembly methodsFor: 'construction' stamp: 'brp 10/2/2004 14:34'!
initialize
	super initialize.
	
	moduleStack := OrderedCollection new! !

!ModuleAssembly methodsFor: 'error handling' stamp: 'svp 4/18/2003 12:00'!
invalidContext: message

	^self error: ('Invalid Context: ', message)! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 5/15/2003 11:41'!
logTo: aLogger

	self addModule: (ModLog new logger: aLogger; yourself)! !

!ModuleAssembly methodsFor: 'private' stamp: 'svp 4/18/2003 11:57'!
lookupMod: testBlock ifFound: foundBlock ifNotFound: notFoundBlock

	| thisMod |
	moduleStack size to: 1 by: -1 do: 
		[ :i |
		thisMod := moduleStack at: i.
		(testBlock value: thisMod)
			ifTrue: [^foundBlock value: thisMod]].
	^notFoundBlock value! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 4/17/2003 17:10'!
moduleStack

	^moduleStack! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 5/15/2003 16:59'!
notFound

	self addModule: (ModNotFound new)! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 4/18/2003 09:50'!
popModule

	self moduleStack removeLast
! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 4/18/2003 10:16'!
pushModule: aModule

	self addModule: aModule.
	^self basicPushModule: aModule.
! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 5/15/2003 16:10'!
pushModule: aModule andDo: aBlock
	"Push aModule on our stack and evaluate aBlock, note, this directive 
	protects against an unbalanced stack because certain directives just
	push a new module on the stack without popping it"

	| stackSize |
	stackSize := moduleStack size.
	self pushModule: aModule.
	aBlock value.
	moduleStack := moduleStack copyFrom: 1 to: stackSize.

! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 4/18/2003 10:03'!
rootModule

	^self moduleStack first! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 5/15/2003 16:45'!
serveFiles

	self addModule: ModFile new
! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 5/15/2003 15:52'!
serverRoot: aDirectoryPath

	self lookupMod: [ :mod | mod isCore ]
		ifFound: [ :mod | mod serverRoot: aDirectoryPath ]
		ifNotFound: [ self invalidContext: 'serverRoot directive requires ModCore' ]
! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 5/15/2003 16:07'!
sessionTimeout: minutes

	self lookupMod: [ :ea | ea isSession ]
		ifFound: [ :module | module secondsToLive: (minutes * 60)]
		ifNotFound: [ self invalidContext: 'sessionTimeout directive requires ModSession']! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 5/15/2003 16:07'!
sessionTimeoutSeconds: seconds

	self lookupMod: [ :ea | ea isSession ]
		ifFound: [ :module | module secondsToLive: seconds]
		ifNotFound: [ self invalidContext: 'sessionTimeout directive requires ModSession']! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 5/15/2003 16:03'!
trackSessions

	self pushModule: ModSession new! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 5/15/2003 16:10'!
trackSessions: aBlock

	self pushModule: ModSession new andDo: aBlock! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 4/18/2003 10:24'!
virtualDocumentRoot: aTemplateString do: aBlock

	self pushModule: (ModVhost new template: aTemplateString; yourself) andDo:
		[self pushModule: (ModVhostDoc new documentRoot: ''; yourself) andDo: aBlock]
! !

!ModuleAssembly methodsFor: 'construction' stamp: 'svp 5/15/2003 00:48'!
virtualHost: hostString do: aBlock

	self pushModule: (ModVhost new template: '%0'; yourself) andDo:
		[self pushModule: (ModVhostAlias new host: hostString; yourself) andDo: aBlock]
! !

!ModuleAssembly class methodsFor: 'as yet unclassified' stamp: 'svp 4/18/2003 10:16'!
core

	^super new 
		initialize;
		basicPushModule: ModCore new;
		yourself! !

!ModuleAssembly class methodsFor: 'as yet unclassified' stamp: 'svp 4/18/2003 10:16'!
new

	^super new 
		initialize;
		basicPushModule: ModMulti new;
		yourself! !

!MultipartChunk methodsFor: 'accessing' stamp: 'bolot 12/16/2000 02:36'!
contentType
	^properties at: #contentType! !

!MultipartChunk methodsFor: 'accessing' stamp: 'bolot 12/16/2000 02:36'!
fieldName
	^properties at: #fieldName! !

!MultipartChunk methodsFor: 'accessing' stamp: 'bolot 12/16/2000 02:36'!
fileName
	^properties at: #fileName! !

!MultipartChunk methodsFor: 'accessing' stamp: 'bolot 12/16/2000 02:36'!
fileName: aString
	properties at: #fileName put: aString! !

!MultipartChunk methodsFor: 'initialize-release' stamp: 'brp 10/2/2004 16:03'!
initializeFrom: aDictionary
	| header str fileName fieldName idx contentType |
	"PRE: all keys in aDictionary are low-case"
	header := aDictionary.
	properties := Dictionary new.
self flag: #todo.
	"parse the header, pick out: filename, etc."

	str := (header at: 'content-disposition' ifAbsent: ['']).
	fileName := fieldName := ''.

	idx := str findString: 'filename='.
	idx > 0 ifTrue:
		[fileName := str copyFrom: idx + 10 to: (str indexOf: $" startingAt: idx+10) - 1].
	properties at: #fileName put: fileName.

	idx := str findString: 'name='.
	idx > 0 ifTrue:
		[fieldName := str copyFrom: idx + 6 to: (str indexOf: $" startingAt: idx+6) - 1].
	properties at: #fieldName put: fieldName.

	contentType := header at: 'content-type' ifAbsent: [MIMEDocument defaultContentType].
	properties at: #contentType put: contentType.

"Transcript show: 'field=', fieldName; cr; show: 'file=', fileName; cr;
	show: 'content-type=', contentType; cr."
! !

!MultipartChunk methodsFor: 'testing' stamp: 'brp 10/2/2004 14:24'!
isSaved
	^(properties at: #isSaved ifAbsent: [false])! !

!MultipartChunk methodsFor: 'accessing' stamp: 'bolot 12/16/2000 02:38'!
multipartBoundary
	^multipartBoundary! !

!MultipartChunk methodsFor: 'initialize-release' stamp: 'bolot 12/16/2000 02:39'!
multipartBoundary: aString
	multipartBoundary := aString! !

!MultipartChunk methodsFor: 'accessing' stamp: 'gk 4/7/2008 01:19'!
saveToStream: outStream
	"This method is no longer dumb. It streams data chunk wise so it doesn't have to fit
	into memory all at once. Answers the number of bytes written to the stream.
	The logic for stripping 128 bytes from IE4/Mac is what makes it look complex."

	| boundary size firstBuffer origFileName |
	self setSavedFlag.
	origFileName := self fileName.
	boundary := String crlf, self multipartBoundary.
	size := 0.
	firstBuffer := ''.
	
	self stream 
		upToAll: boundary
		bufferSize: 1000000 do: [:buffer |
			firstBuffer
				ifNil: [
					size := size + buffer size.
					outStream nextPutAll: buffer]
				ifNotNil: [
					"IE4 for Mac appends 128 bytes of Mac file system info - must remove"
					firstBuffer := firstBuffer, buffer.
					firstBuffer size >= 128 ifTrue: [
						(firstBuffer first asciiValue = 0 and: 
							[firstBuffer second asciiValue = origFileName size 
								and: [(firstBuffer copyFrom: 3 to: origFileName size + 2) = origFileName]]) 
							ifTrue: [
								firstBuffer := firstBuffer copyFrom: 129 to: firstBuffer size].
						size := size + firstBuffer size.
						outStream nextPutAll: firstBuffer.
						firstBuffer := nil]]].

	firstBuffer ifNotNil: [
		size := size + firstBuffer size.
		outStream nextPutAll: firstBuffer].
	
	^ size! !

!MultipartChunk methodsFor: 'accessing' stamp: 'bolot 12/16/2000 02:37'!
setSavedFlag
	properties at: #isSaved put: true! !

!MultipartChunk methodsFor: 'accessing' stamp: 'svp 10/28/2003 12:18'!
stream

	^stream! !

!MultipartChunk methodsFor: 'accessing' stamp: 'svp 10/28/2003 12:19'!
stream: aReadableStream

	stream := aReadableStream! !

!MultipartChunk class methodsFor: 'instance creation' stamp: 'bolot 12/16/2000 02:41'!
from: aDictionary
	aDictionary isEmptyOrNil
		ifTrue: [^nil].
	^self new initializeFrom: aDictionary! !

!NetworkHost methodsFor: 'accessing' stamp: 'svp 11/18/1999 19:59'!
domainString

	| sz |
	^self isNamedHost ifTrue: [
		((sz := self name size) >= 2) ifTrue: [
			(self name at: (sz - 1)), '.', self name last.
		] ifFalse: [
			''
		]
	] ifFalse: [
		self nameString
	]! !

!NetworkHost methodsFor: 'accessing' stamp: 'svp 4/16/2003 13:50'!
fileSystemPath
	| delim |
	delim := FileDirectory pathNameDelimiter.

	^String streamContents: 
		[ :strm |
		self isNamedHost
			ifTrue: [strm nextPutAll: 'hostname']
			ifFalse: [strm nextPutAll: 'ipaddress'].
		strm nextPut: delim.
		self name reversed 
			do:
				[ :part | strm nextPutAll: part asString ]
			separatedBy: 
				[ strm nextPut: delim ]]! !

!NetworkHost methodsFor: 'accessing' stamp: 'svp 11/5/1999 13:43'!
fullName

	^fullName! !

!NetworkHost methodsFor: 'accessing' stamp: 'svp 12/9/1999 17:12'!
httpReference

	^'http://', self fullName! !

!NetworkHost methodsFor: 'initialization' stamp: 'svp 11/5/1999 13:32'!
initializeFromIPAddress: str

	| nums |
	((str occurrencesOf: $.) = 3) ifTrue: [
		nums := (str findTokens: '.') collect: [ :ea | 
			ea isPositiveInteger ifTrue: [
				ea asNumber
			] ifFalse: [ ^self ]
		].
		name := nums.
		type := #address.
	].	
	


	! !

!NetworkHost methodsFor: 'initialization' stamp: 'svp 9/11/2000 11:28'!
initializeFromNamePath: namePath

	name := namePath.
	type := #name.

	! !

!NetworkHost methodsFor: 'initialization' stamp: 'svp 11/5/1999 13:36'!
initializeFromString: aString

	^self initializeFromString: aString defaultPort: 80

	! !

!NetworkHost methodsFor: 'initialization' stamp: 'svp 11/5/1999 13:43'!
initializeFromString: aString defaultPort: dPort

	| tmp |
	fullName := aString.
	tmp := self initializePortFromString: aString defaultPort: dPort.
	self initializeFromIPAddress: tmp.
	name ifNil: [
		name := tmp findTokens: '.'.
		type := #name.
	].

	! !

!NetworkHost methodsFor: 'initialization' stamp: 'brp 10/2/2004 14:53'!
initializePortFromString: aString defaultPort: dPort 
	| in tmp |
	^(in := aString indexOf: $:) > 0 
		ifTrue: 
			[tmp := aString copyFrom: in + 1 to: aString size.
			port := tmp isPositiveInteger 
				ifTrue: [tmp asNumber]
				ifFalse: [dPort].
			aString copyFrom: 1 to: in - 1]
		ifFalse: 
			[port := dPort.
			aString]! !

!NetworkHost methodsFor: 'testing' stamp: 'svp 11/5/1999 13:37'!
isNamedHost

	^self type == #name! !

!NetworkHost methodsFor: 'accessing' stamp: 'brp 10/2/2004 14:39'!
machineName
	^(self isNamedHost and: [self name size >= 3]) 
		ifTrue: [self name first]
		ifFalse: [nil]! !

!NetworkHost methodsFor: 'accessing' stamp: 'svp 11/5/1999 13:37'!
name

	^name! !

!NetworkHost methodsFor: 'accessing' stamp: 'CdG 11/4/2005 23:43'!
nameString
	^ String streamContents: [ :str |
			self name do: [:nm | str nextPutAll: nm printString] separatedBy: [str nextPut: $.] ]
! !

!NetworkHost methodsFor: 'accessing' stamp: 'svp 11/5/1999 13:37'!
port

	^port! !

!NetworkHost methodsFor: 'accessing' stamp: 'svp 11/5/1999 13:37'!
type

	^type! !

!NetworkHost methodsFor: 'accessing' stamp: 'brp 10/2/2004 15:11'!
vhostName: nameIndex letter: letterIndex 
	"First get the name component"

	| ni word nStart nEnd li |
	ni := nameIndex asNumber.
	word := ni = 0 
				ifTrue: [self nameString]
				ifFalse: 
					[nStart := ni < 0 ifTrue: [name size + 1 + ni] ifFalse: [ni].
					nEnd := nStart.
					(nameIndex endsWith: '+') ifTrue: [nStart := 1].
					(nStart < 1 or: [nStart > name size]) 
						ifTrue: ['_']
						ifFalse: 
							[String streamContents: 
									[:strm | 
									(nStart to: nEnd) do: [:in | strm nextPutAll: (name at: in)]
										separatedBy: [strm nextPut: $.]]]].

	"Now get the letters"
	li := letterIndex asNumber.
	li = 0 
		ifTrue: [^word]
		ifFalse: 
			[li < 0 
				ifTrue: 
					[nStart := word size + 1 + li.
					nEnd := nStart.
					(letterIndex endsWith: '+') ifTrue: [nStart := 1]]
				ifFalse: 
					[nStart := li.
					nEnd := (letterIndex endsWith: '+') ifTrue: [word size] ifFalse: [nStart]].
			(nStart < 1 or: [nStart > name size]) 
				ifTrue: [^'_']
				ifFalse: [^word copyFrom: nStart to: nEnd]]! !

!NetworkHost class methodsFor: 'instance creation' stamp: 'svp 9/11/2000 11:28'!
fromNamePath: namePath

	^self new
		initializeFromNamePath: namePath;
		yourself! !

!NetworkHost class methodsFor: 'instance creation' stamp: 'svp 11/5/1999 13:15'!
fromString: aString

	^self new
		initializeFromString: aString;
		yourself! !

!KomLogger methodsFor: 'as yet unclassified' stamp: 'svp 5/16/2003 11:47'!
addStream: aStream
	"Add a new output stream to the logger"

	self streams add: aStream.
	^aStream! !

!KomLogger methodsFor: 'as yet unclassified' stamp: 'svp 5/16/2003 11:47'!
attachTheTranscript

	^self addStream: Transcript.
! !

!KomLogger methodsFor: 'as yet unclassified' stamp: 'gsa 2/12/2013 16:11'!
attachTranscript
	self detachTheTranscript.
	^(self streams detect: [:ea | ea isTranscriptStream] ifNone: [nil]) 
		"ifNil: [self addStream: TranscriptStream new]"
		"Cuis Specific code"
			ifNil: [self addStream: Transcript new]! !

!KomLogger methodsFor: 'as yet unclassified' stamp: 'svp 5/16/2003 11:49'!
detachTheTranscript

	self removeStream: Transcript.
	^Transcript! !

!KomLogger methodsFor: 'as yet unclassified' stamp: 'brp 10/2/2004 16:23'!
detachTranscripts
	(self streams select: [:ea | ea isTranscriptStream]) 
		do: [:ea | self removeStream: ea]! !

!KomLogger methodsFor: 'as yet unclassified' stamp: 'svp 5/16/2003 11:36'!
logEntryFor: request response: response
	"This is the Common Log Format (CLF)"

	^String streamContents: 
		[ :strm |
		strm
			nextPutAll: request remoteAddress asIpString;
			nextPutAll: ' - ';  "We don't bother with the ident string"
			nextPutAll: (ModAuth user ifNil: ['-']);
			nextPut: $ .
		(TimeStamp fromSeconds: request timestamp)
			printCLFFormatOn: strm.
		strm nextPutAll: ' "'.
		request firstLineOn: strm.
		strm nextPutAll: '" '.
		strm nextPutAll: response statusCode.
		strm nextPut: $ .
		strm nextPutAll: (response contentLength ifNil: ['-']) asString.
		strm nextPut: Character cr].


! !

!KomLogger methodsFor: 'as yet unclassified' stamp: 'svp 5/15/2003 11:57'!
next

	self shouldNotImplement! !

!KomLogger methodsFor: 'as yet unclassified' stamp: 'brp 10/2/2004 16:50'!
nextPut: anArray 
	| logEntry |
	logEntry := self logEntryFor: anArray first response: anArray second.
	self streams do: 	[:strm | strm nextPutAll: logEntry; endEntry]! !

!KomLogger methodsFor: 'as yet unclassified' stamp: 'svp 5/16/2003 11:50'!
openTranscript

	self attachTranscript openLabel: 'Comanche Logger'! !

!KomLogger methodsFor: 'as yet unclassified' stamp: 'svp 5/16/2003 11:49'!
removeStream: aStream
	"Remove an output stream to the logger"

	self streams remove: aStream ifAbsent: [].
	^aStream! !

!KomLogger methodsFor: 'as yet unclassified' stamp: 'svp 5/16/2003 11:35'!
streams

	^streams! !

!KomLogger methodsFor: 'as yet unclassified' stamp: 'svp 5/16/2003 11:35'!
streams: aStream

	streams := aStream! !

!KomLogger class methodsFor: 'as yet unclassified' stamp: 'svp 5/16/2003 11:35'!
on: aStream

	^self basicNew
		streams: (Set new add: aStream; yourself);
		yourself! !

!KomTracer methodsFor: 'as yet unclassified' stamp: 'brp 10/2/2004 16:58'!
logEntryFor: request response: response
	"This is the Common Log Format (CLF) - the stream is a TranscriptStream"

	| aStream |
	aStream := self streams anyOne.
	aStream
		nextPutAll: '-----';
		nextPut: Character cr.
	request writeOn: aStream.
	response writeHeadersOn: aStream.
	aStream endEntry.
! !
HttpService initialize!
ModDoc initialize!
HttpRequest initialize!
HttpResponse initialize!
KomSession initialize!
