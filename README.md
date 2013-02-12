Cuis-KomHttpServer
==================

*** CAUTION: This is work in progress ***

First port, taken from http://www.squeaksource.com/KomHttpServer.html

At the time being, February 12, 2013, I ported (as I read on ConfigurationOfKomHttpServer-JohanBrichau.28.mcz)

DynamicBindings-lr.13

KomServices-lr.21

KomHttpServer-pmm.66 (Squeak Version)

Installation Script:

  | slash  |
  slash := FileDirectory slash.
  {
  '..', slash, 'Cuis-Cryptography', slash, 'Cuis-System-Hashing.pck.st' .
  '..', slash, 'Cuis-CompatibilityWithOtherSmalltalks', slash, 'Cuis-CompatibilityWithOtherSmalltalks.pck.st' .
  '..', slash, 'Cuis-Pharo14CompatibilityLayer', slash, 'Cuis-Network-MIME.pck.st' .
  '..', slash, 'Cuis-KomHttpServer', slash, 'DynamicBindings.pck.st' .
  '..', slash, 'Cuis-KomHttpServer', slash, 'KomServices.pck.st' .
  '..', slash, 'Cuis-KomHttpServer', slash, 'KomHttpServer.pck.st' .
  }
  do:
  [ :fileName | CodePackageFile installPackageStream:
  (FileStream concreteStream readOnlyFileNamed: fileName)
  ].

