#!/usr/bin/bash
randomSearch() {
  n=$(( RANDOM % 100 ))
  echo "Random number was $n"
  if [[ n -eq 42 ]]; then
    echo "Something went wrong"
    >&2 echo "The error was using magic numbers"
    echo "The script run for $1 times before failing"
    exit 1
  fi
  echo "Everything went according to plan"
}

count=0
while [[ "$?" -eq 0 ]]
do
  # program doesn't exit anymore
  randomSearch "$count" | tee shellToolsLog 2>> shellToolsErrorLog
  count=$((count + 1))
done
