#!/bin/bash
# Пробный Генератор паролей
cd /root/usr/
#fold  длина пароля, head кол-во

npwd=10
cat /dev/urandom | tr -d -c 'a-zA-Z0-9' | fold -w 8 | head -$npwd >  pwd.txt
#echo pwd


