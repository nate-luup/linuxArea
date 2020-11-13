#!/bin/bash
# Program:
#	This program shows the user's choice
# History:
# 2017/02/22	nate	First release

read -p "Please input (Y/N): " choice
if [ "$choice" == "Y" ] || [ "$choice" == "y" ]; then
	 echo "OK, contine"
	 exit 0
fi

if [ "$choice" == "N" ] || [ "$choice" == "n" ]; then
	echo "Oh, interrupt"
	exit 0
fi

echo "I don't know what your choice is" && exit 0
