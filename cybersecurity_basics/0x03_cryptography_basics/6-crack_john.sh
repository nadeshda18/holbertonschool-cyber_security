#!/bin/bash
john --wordlist=/home/nadeshda/Documents/rockyou.txt --format=Raw-SHA256 "$1" && john --show --format=Raw-SHA256 "$1" | awk -F: '{print $2}' > 6-password.txt
