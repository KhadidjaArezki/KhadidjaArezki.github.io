#!/usr/bin/bash
echo "sleeping zzz..."
sleep 10 &
echo "waiting for the nap to finish..."
wait $(echo $!)
echo "How do you do?"
ls
