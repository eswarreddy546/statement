#!/bin/bash

for i in {1..20}
do
 echo $i
 if ( ($i %2 == 0)); then
 echo " evennumber $i"
 fi
 done