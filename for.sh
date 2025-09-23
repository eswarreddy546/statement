#!/bin/bash

for i in {1..20}
do
 echo $i
 if ( ($i %2 == 0)); then
 echo " evenn umber $i"
 else
 echo " it is not even number $i"
 fi
 done