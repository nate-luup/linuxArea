#!/bin/bash
# Program:
#	Use loop to calculate "1+2+3+...+100" result.
# History:
# 2017/02/24 nate First release

read -p "Please input a number that you want calculate to: " targetNum
function checkNum(){
	expr $1 + 0 &>/dev/null
	[ $? -ne 0 ] && { echo "Args must be integer!";exit 1; } 
}

if [ "$targetNum" == "" ]; then
	echo "You must input a number to calculate"
	exit 1
fi
checkNum $targetNum

s=0  # 这是加总的数值变量
i=0  # 这是累计的数值，亦即是 1, 2, 3....
while [ "$i" != "$targetNum" ]
do
	i=$(($i+1))   # 每次 i 都会添加 1 
	s=$(($s+$i))  # 每次都会加总一次！
done
echo "The result of '1+...+$targetNum' is ==> $s"
