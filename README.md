Cuis-KomHttpServer
==================

*** CAUTION: This is work in progress ***

First port, taken from http://www.squeaksource.com/KomHttpServer.html

At the time being, February 12, 2013, I ported (as I read on ConfigurationOfKomHttpServer-JohanBrichau.28.mcz)

DynamicBindings-lr.13

KomServices-lr.21

KomHttpServer-pmm.66 (Squeak Version)


Installation Script (For Cuis pre 4.2):

     | slash  |
     slash := FileDirectory slash.
     {
     '..', slash, 'Cuis-Smalltalk-Cryptography', slash, 'Cuis-System-Hashing.pck.st' .
     '..', slash, 'Cuis-Smalltalk-CompatibilityWithOtherSmalltalks', slash, 'Cuis-CompatibilityWithOtherSmalltalks.pck.st' .
     '..', slash, 'Cuis-Smalltalk-Pharo14CompatibilityLayer', slash, 'Cuis-Network-MIME.pck.st' .
     '..', slash, 'Cuis-Smalltalk-KomHttpServer', slash, 'DynamicBindings.pck.st' .
     '..', slash, 'Cuis-Smalltalk-KomHttpServer', slash, 'KomServices.pck.st' .
     '..', slash, 'Cuis-Smalltalk-KomHttpServer', slash, 'KomHttpServer.pck.st' .
     }
     do:
     [ :fileName | CodePackageFile installPackageStream:
     (FileStream concreteStream readOnlyFileNamed: fileName)
    ].


Installation for Cuis 4.2

To load the package
````Smalltalk
	Feature require: 'KomHttpServer'
````
This take care of all the prerequisites of KomHttpServer, but you must have cloned the next repos:

	Cuis-Smalltalk-Cryptography (The needed prereq package is: Cuis-System-Hashing.pck.st)
	Cuis-Smalltalk-CompatibilityWithOtherSmalltalks (The needed prereq package is: Cuis-CompatibilityWithOtherSmalltalks.pck.st)
	Cuis-Smalltalk-Pharo14CompatibilityLayer (The needed prereq package is: Cuis-Network-MIME.pck.st)


Notes:

-HTTPService >>platform (adapted for Cuis)

-KomLogger >>attachTranscript (used Transcript instead TranscriptStream that not exist in Cuis)

-Added >>isTranscriptStream 
		^true
		to Transcript class, *KomHttpServer clategory (Instead of Transcript that not exist in Cuis)


ToDo List:

-Class TCPListener of KomServices, method pvtOldListenLoop: aBlock I need to implement #waitForConnectionUntil: (Seems that is for Socket class).

-In Cuis not exist TextFontChange (*KomHttpServer have 2 instance methods for this class:)
	
    printHtmlCloseTagOn: strm
    strm
        nextPutAll: '</FONT>'

    printHtmlOpenTagOn: strm
    strm
        nextPutAll: '<FONT SIZE="';
        nextPutAll: (self fontNumber + 2) asString;
        nextPutAll: '">'

-In Cuis not exist TextMorph (*KomHttpServer have 1 instance method for this class:)

    asHttpResponseTo: request
        ^self asText asHttpResponseTo: request
 
