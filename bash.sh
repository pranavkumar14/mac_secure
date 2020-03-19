#!/bin/sh
while true; do
arp> mac.txt
arp >>history.txt
for i in `cat eclub_database.txt`;

 do
  if grep -q $i  mac.txt; then
python servo.py

fi
done
done
