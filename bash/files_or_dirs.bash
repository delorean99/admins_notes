#/bin/bash

#Find and create dirs
#If we need to find only folders and create it after, look not good but work

find . -type d > dirs.txt
xargs mkdir -p < dirs.txt

#Find some type files and copy it
#As example find some py files

find . -name "*.py" | cpio -p -dumv Documents/

#Show space from disks

df -h

#Show what size of files and folders

du -d 1 -h

