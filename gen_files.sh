#!/bin/bash
# Генератор файлов ~10-20Mbyte
echo "count of files"
var=5
while [ $var -ge 1 ]; do

    echo $var
    #vx= shuf -i 10-20 -n 1 как то должно заработать
    echo $vx
    #    x=$(($vx)) при передачи в count что-то идёт не так
    dd if=/dev/urandom of=/root/usr/$var bs=1M count=$((RANDOM%15+5))
    #$((RANDOM%20+10)) только так, 
    
#    if
#    [[ du /root/usr/1  | tr -cd "[:digit:]\n"" " -le 11000]];
#    then
#    var=$(($var+1))
#    rm /root/usr/$var 
#    fi
    var=$(($var-1))

done