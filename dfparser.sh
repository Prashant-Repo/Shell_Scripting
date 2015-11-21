#!/bin/bash
#To Calculate disk space left for root device
SUFFICIENTSPACE=`df / |egrep '% /' |awk '{print $4}'`
# To give human readable output 
let SUFFICIENTSPACE1="$SUFFICIENTSPACE/1000/1000"
if [ "$SUFFICIENTSPACE" -gt "10000000" ]
then
   echo "Sufficient storage: $SUFFICIENTSPACE1 left on device"
else
   echo "We are running out of disk space and only: $SUFFICIENTSPACE1 left"
fi
