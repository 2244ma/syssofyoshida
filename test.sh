#!/bin/sh

you=0
n=$1
m=$2

until [ $m -eq 0 ]
do
 you=`expr "$n" % "$m"`
 temp=$n
 n=$m
 m=$you
done
 echo "$n"
