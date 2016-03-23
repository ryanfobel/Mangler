#!/bin/sh

# will need to edit for your system
ARDUINO_HOME='C:/Program Files (x86)/Arduino'

# make sure the bin and tools directories exist
if [ ! -d 'bin' ]; then
  mkdir bin
fi

if [ ! -d 'tool' ]; then
  mkdir tool
fi

javac \
  -cp "$ARDUINO_HOME/lib/arduino-core.jar;$ARDUINO_HOME/lib/pde.jar" \
  -d bin \
  src/Mangler.java

# create the jar file
cd bin && zip -r ../tool/mangler.jar * && cd ..
