#!/bin/bash

echo "===== DevOps Health Check ====="

echo "Current Date:"
date
echo "Exit Code: $?"

echo "Hostname:"
hostname
echo "Exit Code: $?"

echo "Current User:"
whoami
echo "Exit Code: $?"

echo "Current Directory:"
pwd
echo "Exit Code: $?"

echo "Files in Current Directory:"
ls -l
echo "Exit Code: $?"

echo "Git Version:"
git --version
echo "Exit Code: $?"

echo "Testing Failed Command:"
xyzcommand
echo "Exit Code: $?"

echo "===== Health Check Completed ====="