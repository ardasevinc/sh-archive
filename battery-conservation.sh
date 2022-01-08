#!/bin/bash

mode=$1
echo -e "Setting conservation mode to $mode\n"
echo "$mode" | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode
echo "Success"
exit 0
