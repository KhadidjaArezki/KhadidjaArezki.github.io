#!/usr/bin/bash
echo 'atlanta' | perl -pe s"/^((?:[^a\s]*a){3,}[^a'\s]*)$/\1/g";
cat words.txt | awk "BEGIN {matches=0 } $0 ~ /^((?:[^a ]*a){3,}[a' ]*)$/ {print $0; matches+=1} END {print matches}" | wc -l;
