#!/bin/bash
# Program:
#	Show "hello" from $1... by using case ... esac
# History:
# 2017/02/23 nate First release

case $1 in
	"hello")
		echo "Hello, how are you ?"
	;;
	"")
		echo "You MUST input parameters, ex> {$0 someworld}"
		;;
	*)
		echo "Usage $0 {hello}"
		;;
esac
