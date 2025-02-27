#!/bin/bash
grep -q "STARTTLS" /etc/postfix/main.cf || echo "STATTLS not configured"
