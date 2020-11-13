#!/bin/bash
# Program:
#	This program shows the user's choice
# History:
# 2017/02/22	nate	First release

read -p "Please input (Y/N): " choice

if [ "$choice" == "Y" ] || [ "$choice" == "y" ]; then
	 echo "OK, contine"
	 exit 0
elif [ "$choice" == "N" ] || [ "$choice" == "n" ]; then

	echo "Oh, interrupt"
	exit 0

else 
	echo "I don't know what your choice is"
fi
