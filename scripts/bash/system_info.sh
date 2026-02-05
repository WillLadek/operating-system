#!/bin/bash

echo "===== System Health Snapshot ====="
echo "Date & Time: $(date)"
echo "Hostname: $(hostname)"
echo "Current User: $(whoami)"
echo ""
echo "Disk Usage (Root Filesystem):"
df -h / | awk 'NR==2 {print "Free:", $4, "Total:", $2}'
 
