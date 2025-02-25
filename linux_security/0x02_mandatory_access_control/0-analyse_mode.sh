#!/bin/bash
sestatus | grep -E 'SELinux status:|Current mode:'
