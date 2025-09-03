#!/bin/bash

path_to_sourse=$1
path_to_final=$2
data=$(date +"%d-%m-%Y")

mkdir -p "$path_to_final"
touch "${USER}_${data}.txt"

cp "$path_to_sourse"/*.txt "$path_to_final"/

count=$(ls "$path_to_sourse"/*.txt 2>/dev/null | wc -l)

echo "Скрипт выполнен успешно. Скопировано $count файлов."
