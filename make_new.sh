#!/bin/sh

document_class=$1
directory_name=$2

current_date=$(date +'%y%m%d')

if [ -z "$directory_name" ]; then
    directory_name=$current_date
fi

if [ -d "$directory_name" ]; then
    echo "Directory $directory_name/ already exists. Stop."
else
    make -C lualatex-template "$document_class" NAME="../$directory_name"
fi