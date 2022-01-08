#!/bin/bash

echo $'\n----' | tee log
date | tee --append log
echo $'----' | tee --append log
echo $'logged users\n' | tee --append log
who | tee --append log
echo $'----'| tee --append log
echo $'uptime\n'| tee --append log
uptime | tee --append log

exit
