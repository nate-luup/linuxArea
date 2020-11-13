#!/bin/bash
# Program:
#	Repeat question until user input correct answer.
# History:
#	2017/02/24 nate First release

while [ "$yn" != "yes" -a "$yn" != "YES" ]
do
	read -p "Please input yes/YES to stop this program: " yn
done
echo "Ok! you input the correct answer."
