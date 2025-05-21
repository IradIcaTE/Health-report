#!/bin/bash
REPORT_FILE="health_report.txt"

echo "------------- System Health Report----------------"  >> $REPORT_FILE
echo "Generated on: $(date)" >> $REPORT_FILE
echo "--------------------------------------------------" >> $REPORT_FILE

echo "Disk Usage: " >> $REPORT_FILE
df -h  >> $REPORT_FILE
echo "--------------------------------------------------" >> $REPORT_FILE

echo "Memory Usage: " >> $REPORT_FILE
free -m >> $REPORT_FILE
echo "--------------------------------------------------" >> $REPORT_FILE

echo "Uptime: " >> $REPORT_FILE
uptime >> $REPORT_FILE
echo "--------------------------------------------------" >> $REPORT_FILE

echo "Health report generated in $REPORT_FILE" >> $REPORT_FILE