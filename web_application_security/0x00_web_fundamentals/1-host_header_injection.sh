#!/bin/bash
curl -v -X POST -H "Host: $1" -d "$3" "$2"
