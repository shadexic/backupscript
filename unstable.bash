#!/bin/bash


# superbackup.bash
# Purpose: powerful backup script
# Not Working Use backupall.bash
# 
#
# Author: *** shadeunicorns ***
# Date: *** 10 July 2019***
# Revised: *** 111 october 2019 ***

####### declare color variable for color coding the text
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
ORANGE='\033[0;33m'
NC='\033[0m'
BLUE='\033[0;34m'

echo "what type of file would you like to backup? enter the number coresponding to the desired filetype"
echo "#--------------#"
echo "1. .qcow2 (KVM vm filetypes)"
echo "2. /home/$user/ (user file directory)"
echo "3. other"
echo "q quit"
read -p "chose a response:" resp

	if [ "$resp" = "1" ]
	then 
	if [ -d /var/lib/libvirt/images ] ; then
		echo "/var/lib/libvirt/images contains"
		for file in /var/lib/libvirt/images/*.qcow2 #loops through all the file names ending in .qcow2
do
	name=$(basename $file | cut -d. -f1) #take the path and extension off the vm to save space on screen
printf "${ORANGE}$name ${NC}\n"
done
	else	"echo not there"
	fi
	fi
	
 

