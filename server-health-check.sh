#!/bin/bash
# Server Health Check Script for Linux
# Author: Maksudul Alam
# Description: Monitors server health metrics including CPU, Memory, Disk Usage, Network, and Services.

LOG_FILE="/var/log/server_health.log"
echo "--- Server Health Check Report ---" > $LOG_FILE
echo "Date: $(date)" >> $LOG_FILE

echo "[+] Checking CPU Load..." >> $LOG_FILE
uptime >> $LOG_FILE

echo "[+] Checking Memory Usage..." >> $LOG_FILE
free -mh >> $LOG_FILE

echo "[+] Checking Disk Usage..." >> $LOG_FILE
df -hT >> $LOG_FILE

echo "[+] Checking Network Connections..." >> $LOG_FILE
ss -tulnp >> $LOG_FILE

echo "[+] Checking Running Processes..." >> $LOG_FILE
top -b -n 1 | head -15 >> $LOG_FILE

echo "[+] Checking System Uptime..." >> $LOG_FILE
uptime -p >> $LOG_FILE

echo "[+] Checking Active Users..." >> $LOG_FILE
who >> $LOG_FILE

echo "[+] Checking Open Ports..." >> $LOG_FILE
netstat -tulpn | grep LISTEN >> $LOG_FILE

echo "[+] Checking System Logs for Errors..." >> $LOG_FILE
dmesg | tail -20 >> $LOG_FILE

echo "[+] Checking Running Services..." >> $LOG_FILE
systemctl list-units --type=service --state=running >> $LOG_FILE

echo "[+] Server Health Check Completed!" >> $LOG_FILE
echo "Check the log file at $LOG_FILE"
