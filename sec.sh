#!/bin/sh
while true; do
arp> mac.txt

for i in `cat eclub_database.txt`;

 do
 if ! grep -q $i  mac.txt ;then
    sed "/$i/d" check.txt > buffer.txt
    cat buffer.txt>check.txt
 fi

  if grep -q $i  mac.txt ; then #and not in check.txt
  if ! grep -q $i check.txt;then
      #grep -q $i data_name.txt >>history.txt
      # date >> history.txt
      # printf "\n"
      python chessboard.py
      arp>check.txt
      break
  fi
  fi
 done
done
