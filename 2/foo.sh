#!/bin/sh

COMP="c++"

rm app app.o probes.o probes.h || :
dtrace -h -s probes.d
${COMP} -c app.cc
dtrace -G -xnolibs -s probes.d app.o
${COMP} -o app probes.o app.o
sudo dtrace -s script.d -c ./app
md5 app.o probes.o app
