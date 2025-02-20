#!/bin/bash
hashcat -a 0 -m 0 "$1" /home/nadeshda/Documents/rockyou.txt --quiet && hashcat --show -m 0 "$1" | awk -F: '{print $2}' > 7-password.txt
