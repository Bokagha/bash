#!/bin/bash
#Toggle All Files - 07/12/2017
#Toggles between showing/hiding hidden files in Finder application

#Adds color to output
RED='\033[0;31m'
GREEN='\033[1;32m'
#Color Reset
NC='\033[0m'

#Reads status of hidden files
STATUS=`defaults read com.apple.finder AppleShowAllFiles`
if [ $STATUS == 1 ]
#If STATUS == 1 hide hidden files
then
	defaults write com.apple.finder AppleShowAllFiles -boolean false
	echo -e "Hidden files are now: ${RED}HIDDEN${NC}"
	#If STATUS != 1 show hidden files
else
	defaults write com.apple.finder AppleShowAllFiles -boolean true
	echo -e "Hidden files are now: ${GREEN}DISPLAYED${NC}"
fi

#Kills Finder process
killall Finder