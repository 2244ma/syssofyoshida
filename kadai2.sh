#!/bin/sh

you=0
n=$1
m=$2
if [ $# -lt 2 ]; then
 echo "kazu,tarinai"
 exit 1
fi

if [ $# -ne 2 ]; then
 echo "requiared 2 numbers"
 exit 1
fi

if [ $1 -eq 0 -o $2 -eq 0 ]; then
 echo "Don't input 0"
 exit 1
fi

until [ $m -eq 0 ]
do
 you=`expr "$n" % "$m"`
 temp=$n
 n=$m
 m=$you
done
 echo "$n"
 exit 0
