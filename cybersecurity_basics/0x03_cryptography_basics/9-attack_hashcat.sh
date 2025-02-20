#!/bin/bash
hashcat --stdout -a 1 wordlist1.txt wordlist2.txt > combined.txt && hashcat -a 0 -m 0 "$1" combined.txt --quiet && hashcat --show -m 0 "$1" | awk -F: '{print $2}' > 9-password.txt
