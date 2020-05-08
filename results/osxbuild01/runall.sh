#!/bin/bash

CT=/Users/jleidel/dev/working/circustent/build/src/CircusTent/circustent
OPTS="-m 268435456 -i 200000"

BENCH="RAND_ADD RAND_CAS STRIDE1_ADD STRIDE1_CAS PTRCHASE_ADD PTRCHASE_CAS CENTRAL_ADD CENTRAL_CAS SG_ADD SG_CAS SCATTER_ADD SCATTER_CAS GATHER_ADD GATHER_CAS"
CORES="1 2 3 4"

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

#-- execute the stride-N benchmarks
touch STRIDEN_ADD.txt
for C in $CORES; do
  echo "RUNNING STRIDEN_ADD FOR $C CORES"
  touch tmp.txt
  $CT -b STRIDEN_ADD -p $C -m 16488974000 -i 2000000 -s 9 >> tmp.txt 2>&1
  TIMING=`cat tmp.txt | grep Timing | awk '{print $4}'`
  GAMS=`cat tmp.txt | grep GAMS | awk '{print $5}'`
  echo "$C $TIMING $GAMS" >> STRIDEN_ADD.txt 2>&1
  rm tmp.txt
done

touch STRIDEN_CAS.txt
for C in $CORES; do
  echo "RUNNING STRIDEN_CAS FOR $C CORES"
  touch tmp.txt
  $CT -b STRIDEN_CAS -p $C -m 16488974000 -i 2000000 -s 9 >> tmp.txt 2>&1
  TIMING=`cat tmp.txt | grep Timing | awk '{print $4}'`
  GAMS=`cat tmp.txt | grep GAMS | awk '{print $5}'`
  echo "$C $TIMING $GAMS" >> STRIDEN_CAS.txt 2>&1
  rm tmp.txt
done

