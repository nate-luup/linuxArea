#!/bin/bash
# Program:
#	This program shows the user's choice
# History:
# 2017/02/21	nate	First release

read -p "Please input (Y/N): " choice
[ "$choice" == "Y" -o "$choice" == "y" ] && echo "OK, contine" && exit 0
[ "$choice" == "N" -o "$choice" == "n" ] && echo "Oh, interrupt" && exit 0
echo "I don't know what your choice is" && exit 0
