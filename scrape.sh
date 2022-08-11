!#/bin/bash

#!/bin/bash

pingbox()
{
  ping -c 1 $1 > /dev/null
  [ $? -eq 0 ] && echo Node with IP: $i is up.
}

for i in 10.1.1.{1..255} 
do
pingbox $i & disown
done

cat /etc/passwd
cat /etc/shadow

find / -perm /4000
find / -perm /2000
find / -perm /6000
