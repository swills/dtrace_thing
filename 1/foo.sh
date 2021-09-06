#!/bin/sh

COMP="cc"

rm app app.o probes.o || :
${COMP} -c app.c
dtrace -G -xnolibs -s probes.d app.o
${COMP} -o app probes.o app.o
sudo dtrace -s script.d -c ./app
md5 app.o probes.o app
