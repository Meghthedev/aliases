#!/bin/bash

echo please enter folder name for rom

read folder

mkdir $folder
cd $folder

echo Please enter your rom repo url along with branch to sync it fast 

read url

repo init --depth=1 -u $url -g default,-notdefault,-mips,-darwin
echo repo initialized!

repo sync --force-sync --current-branch --no-tags --no-clone-bundle --optimized-fetch --prune -j8
echo repo synced!