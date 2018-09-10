#!/bin/bash

# Munkhtsogt Tsogbadrakh
# 09/10/2018
# Bash script listens current folder. Once new encrypted file came, decrypt it

echo 'Install inotify-tools'
sudo apt install inotify-tools

echo 'Start encryption...'

folder=./

cdate=$(date +"%Y-%m-%d-%H:%M")

inotifywait -m -q -e create -r --format '%:e %w%f' $folder | while read file

	filename=$(basename -- "$file")
	extension="${filename##*.}"
	filename="${filename%.*}" # .txt.pgp
	filename="${filename%.*}" # .txt
	do
		regex = "RF_*_DATAMART_*.txt.pgp" # prep regex
		if [[ $file =~ $regex ]]
		then
			# decrypt openPGP file	
			gpg -d --ignore-mdc-error RF_*_DATAMART_*.txt.pgp > "${filename}".txt
		fi
	done

echo 'done'
