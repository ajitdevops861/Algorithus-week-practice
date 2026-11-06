#!/bin/bash

echo "===== DevOps Health Check ====="

echo "Current Date:"
date
STATUS=$?

if [ $STATUS -eq 0 ]; then
    echo "PASS: Date command executed. EXIT CODE: $STATUS"
else
    echo "FAILED: Date command failed. EXIT CODE: $STATUS"
fi

echo "Hostname:"
hostname
STATUS=$?

if [ $STATUS -eq 0 ]; then
    echo "PASS: Hostname command executed. EXIT CODE: $STATUS"
else
    echo "FAILED: Hostname command failed. EXIT CODE: $STATUS"
fi

echo "Current User:"
whoami
STATUS=$?

if [ $STATUS -eq 0 ]; then
    echo "PASS: User command executed. EXIT CODE: $STATUS"
else
    echo "FAILED: User command failed"
fi

echo "memory space"
df -h
STATUS=&?
if [ $STATUS -eq 0 ]; then
echo "pass. EXIT CODE: $STATUS"
esle
echo "fail. EXIT CODE: $STATUS"
fi

echo "testing error handling"
xyzcommand
STATUS=$?

if [ $STATUS -eq 0 ]; then
echo " PASS: Command Executed. EXIT CODE: $STATUS"
else
echo "FAILED: COMMAND NOT FOUND. EXIT CODE:$STATUS"
fi

echo "===== Health Check Completed ====="