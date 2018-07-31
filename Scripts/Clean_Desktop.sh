#!/bin/bash
#Clean Desktop - 12/20/2017
#Removes files older than 30days from the desktop

#Finds files on the desktop & deletes them if they are older than 30days
find ~/Desktop/ -type f -mtime +30 -delete