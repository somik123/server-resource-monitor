#!/bin/sh

HR="===================================================================================="
Underline="-----------------"

echo "Date/Time:"
echo ""
date
echo ""
echo $HR
echo ""
echo "RAM & Disk Summary:"
echo $Underline
python3 /home/somik/diskAndRamUsage.py
echo ""
echo $HR
echo ""
echo "Uptime:"
echo $Underline
uptime
echo ""
echo $HR
echo ""
echo "RAM Usage:"
echo $Underline
free -h
echo ""
echo $HR
echo ""
echo "Disk Usage:"
echo $Underline
df -h
echo ""
echo $HR
echo ""
echo "Top 20 CPU Usage:"
echo $Underline
ps aux --sort -%cpu | head -20
echo ""
echo $HR
echo ""
echo "Top 20 RAM Usage:"
echo $Underline
ps aux --sort -%mem | head -20
echo ""
echo ""