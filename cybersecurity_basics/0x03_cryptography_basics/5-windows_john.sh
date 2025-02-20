#!/bin/bash
john --wordlist=/home/nadeshda/Documents/rockyou.txt --format=NT "$1" && john --show --format=NT "$1" | awk -F: '{print $2}' > 5-password.txt
