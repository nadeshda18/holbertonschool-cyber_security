#!/bin/bash
ps aux | grep "^$1" | grep -v " 0 *0 " | grep -v "^$1.* 0 *0 "