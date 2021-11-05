#!/bin/bash

function file_count()
{
	local directory=$1
	COUNT_FILE=$(ls $directory | wc -l)
	echo "$directory"
	echo "$COUNT_FILE"
}

file_count /etc
file_count /var
file_count /usr/bin
