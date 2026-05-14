#!/bin/bash

echo "Enter target:"
read TARGET

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
# Create folder for this scan
mkdir -p results/$TARGET

echo "Running service scan..."
nmap -sV $TARGET -oN results/$TARGET/scan-$DATE.txt

echo "Running vulnerability scan..."
nmap --script vuln -p 22,80,443 $TARGET -oN results/$TARGET/vuln_$DATE.txt

echo "Scan Completed. Results stored in results/$TARGET/"

echo "Checking for critical issues"

grep -i "VULNERABLE" results/$TARGET/vuln_$DATE.txt

echo "TLS/SSL analysis can be performed using testssl.sh"
