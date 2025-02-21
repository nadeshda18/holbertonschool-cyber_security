#!/bin/bash

encoded_string="$1"
echo "Encoded string: $encoded_string"

# Remove {xor} prefix and decode base64
base64_string=$(echo "$encoded_string" | sed 's/{xor}//')
echo "Base64 string: $base64_string"

decoded_base64=$(echo "$base64_string" | base64 -d)
echo "Decoded base64: $decoded_base64"

# Extract the password hash from the decoded base64 string
password_hash=$(echo "$decoded_base64" | grep -oP "(?<=password_hash': ')[^']+")
echo "Password hash: $password_hash"

# Decode the password hash
decoded_password_hash=$(echo "$password_hash" | base64 -d)
echo "Decoded password hash: $decoded_password_hash"

# Try all possible XOR keys (0-255) to decode the password hash
for key in {0..255}; do
    decoded=$(echo "$decoded_password_hash" | python3 -c "
import sys
key = $key
decoded = ''.join(chr(b ^ key) for b in sys.stdin.buffer.read())
print(decoded)
")
    echo "Key $key: $decoded"
done
