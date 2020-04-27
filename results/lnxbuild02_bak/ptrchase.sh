#!/bin/bash

CT=/Users/jleidel/dev/working/circustent/build/src/CircusTent/circustent
OPTS="-m 16488974000 -i 2000000"

BENCH="PTRCHASE_ADD PTRCHASE_CAS"
CORES="1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16"

#-- execute everything except stride-n
for B in $BENCH; do
  touch $B.txt
  for C in $CORES; do
    echo "RUNNING $B FOR $C CORES"
    touch tmp.txt
    $CT -b $B -p $C $OPTS >> tmp.txt 2>&1
    TIMING=`cat tmp.txt | grep Timing | awk '{print $4}'`
    GAMS=`cat tmp.txt | grep GAMS | awk '{print $5}'`
    echo "$C $TIMING $GAMS" >> $B.txt 2>&1
    rm tmp.txt
  done
done

