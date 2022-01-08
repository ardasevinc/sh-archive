#!/bin/bash

i=0
for x in $(pacman -Q)
do
    i=$((i+1))
done
echo "Packages: $i"
exit 0
