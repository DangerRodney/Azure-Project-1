#!/bin/bash
name='Todd'
date='04/13/2021'
uname='Linux'
ipaddress='10.0.2.15'
Hostname='UbuntuDesktop'
echo "Hello $name. Welcome to scripting!"
echo "$date"
echo "$uname"
echo "$ipaddress"
echo "$Hostname"
echo -e "\nThis is my uname $uname.\n"
echo -e "The files in $PWD are : \n$(ls)"
echo -e "\nCopying the passwd file to your current directory. /n"
cp /etc/passwd $PWD
echo "Have and amazing day and do the bonus questiong on 6.1!"



#!/bin/bash
#Check if script was run as root. Exit if false.
if [ ! -d $HOME/research ]
  echo "Directory exists'
else
    mkdir ~/reserch 2>/dev/null
fi

#Define Variables
output=#HOME/research/sys_info.txt
ip=$(ip addr|

#Check for research directory. Create if needed.
if [ ! -d $HOME/research]
then
 mkdire $HOME/research
fi

#Check for output file. Clear it if needed. 
if [ -f $output]
then
  rm $output 
fi




output=$HOME/research/sysinfo.txt

echo "A Quick System Audit Script' >$output
date >>
echo ''>> $output
echo "MACHTYPE /n" >> $output
echo -e





#Practice but not right

#!bin/bash/sh
#if [<x+y=z>]
#then
#[<z+y=x>]
#fi


#!bin/bash/sh

#if [-d /path_to/reseach] if this directory doesnt exist...
#then
#<mkdir ~/research>
#fi


#!bin/bash/sh
# if [-d /path_to ~/research/sys_info.txt'] if this file does not exist then, do nothing.
#then
#<touch <research/sys_info.txt
#
#
#

