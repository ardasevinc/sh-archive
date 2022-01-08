#!/bin/bash

dir=/sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode
printf "Conservation mode set to: " 
cat $dir
exit 0
