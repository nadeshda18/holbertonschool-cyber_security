#!/bin/bash
john --wordlist=/home/nadeshda/Documents/rockyou.txt --format=Raw-MD5 "$1" && john --show --format=Raw-MD5 "$1" | awk -F: '{print $2}' > 4-password.txt
