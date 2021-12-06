#!/bin/bash
#Author: Turky A. Saderaldin
#Create Date:06/12/21 14:21:10
#Update Date:06/12/21 14:21:16
#Signature:signed (dehum_num.sh.asc)
#Subject: Function Convert Human Readable Numbers (e.g. [kK](Kilo), [mM](Mega), [gG](Giga)) to Integers

function dhumnum(){
	dhnum=`echo $1 | awk '/[0-9]$/{print $1;next};/[gG]$/{printf "%u\n",$1*(1024*1024*1024);next};/[mM]$/{printf "%u\n",$1*(1024*1024);next};/[kK]$/{printf "%u\n",$1*(1024);next}'`
}

dhumnum $1
echo $dhnum
