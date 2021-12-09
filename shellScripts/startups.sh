#!/usr/bin/bash
long_times=();
file="~/Documents/Khadidja/startup_times.txt"

while IFS= read -r line; do
    "$long_times"+=( "$line" )
done < <(awk '$0 ~ /^([0-9]+min.*)$/ {print $0}' "$file")

echo "$long_times"
mins=$("$long_times"| sed -E 's/^([0-9]+)min.*$/\1/g')
echo "$mins"

