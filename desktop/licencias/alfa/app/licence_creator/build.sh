#!/bin/sh

javac -d class/ source/*.java
cd class
jar -cvmf MANIFEST.MF  ../bin/Licences.jar *.class

