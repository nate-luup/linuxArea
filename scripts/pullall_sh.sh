#!/bin/bash

# define colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
END='\033[0m'

# save current folder
CUR_DIR=$(pwd)

# pull all repositories
for i in $(find . -name ".git" | cut -c 3-); do
	cd "$i"
    cd ..
    printf "${GREEN}Pull repository $(pwd)...${END}\n"
	time git pull
	cd "${CUR_DIR}"
done

# completed and print a fortune
printf "${RED}Cheers!\n${BLUE}"
if type fortune &> /dev/null; then
	fortune
fi
printf "${END}"
