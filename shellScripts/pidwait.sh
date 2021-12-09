#!/usr/bin/bash
echo "waiting for the process to finish"
echo "$1 $2"
wait "$1"
echo "Done waiting"
"$2"
