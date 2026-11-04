#!/bin/bash

echo "===== DevOps Health Check ====="

echo "Current Date:"
date
STATUS=$?

if [ $STATUS -eq 0 ]; then
    echo "SUCCESS: Date command executed"
else
    echo "FAILED: Date command failed"
fi

echo "Hostname:"
hostname
STATUS=$?

if [ $STATUS -eq 0 ]; then
    echo "SUCCESS: Hostname command executed. EXIT CODE: $STATUS"
else
    echo "FAILED: Hostname command failed"
fi

echo "Current User:"
whoami
STATUS=$?

if [ $STATUS -eq 0 ]; then
    echo "SUCCESS: User command executed. EXIT CODE: $STATUS"
else
    echo "FAILED: User command failed"
fi

echo "testing error handling"
xyzcommand
STATUS=$?

if [$STATUS -eq 0 ]; then
echo " SUCCESS: Command Executed"
else
echo "FAILED: COMMAND NOT FOUND. EXIT CODE:$STATUS"
fi

echo "===== Health Check Completed ====="