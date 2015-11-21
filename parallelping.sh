#!/bin/bash
#Purpose: To Execute ping command in parallel
for ip in 192.168.0.{1..20}
do
(
ping -c1 $ip &> /dev/null

if [ $? -eq 0 ]
then
  echo "ip: $ip is alive"
fi
)&
done
wait
