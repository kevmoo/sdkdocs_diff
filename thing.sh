#!/usr/bin/env bash
for file in $(find . -name *.html)
do
	echo $file
	output=$(pup --file $file ".main-content")
	echo "$output" > "$file"
done
