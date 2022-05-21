#!/bin/bash

if [ $UID -ne 0 ]
then
echo "please run with sudo"
fi

output=$HOME/research/sys_info.txt
ip=$(ip addr | head -9 | tail -1)
execs=$(find /home -type f -perm 777)

mkdir ~/research 2>/dev/null
if [ ! -d $HOME/research ]
then
mkdir $HOME/research
fi

echo $ip
echo -e "IP info:" >> $output
echo -e "$ip \n" >> $output

echo -e "\nexec File:" >> $output
echo $execs >> $output

if [ -f $output ]
then rm $output
fi 
