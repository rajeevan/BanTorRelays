#!/bin/bash
clear
echo ""
echo "============================"
echo "+     BAN TOR RELAYS       +"
echo "============================"
echo ""

# CONFIG Your SERVER IP address and Port
SERVERIP="xx.xx.xx"
SERVERPORT="80"
PUBLICZONE="INPUT"
# Temporary file name
RELAYSLIST='relays.dat'
URL="https://check.torproject.org/cgi-bin/TorBulkExitList.py?ip=$SERVERIP&port=$SERVERPORT"
# ENSURE YOU HAVE CURL library installed
curl -o $RELAYSLIST $URL
# Find IPTABLES
IPTABLES=$(which iptables)

# Read each lines and BAN in IPTABLES
while read line
do
        ipaddress=$line
        if [[ $ipaddress != \#* ]] 
        then
                echo "BAN IP: $ipaddress"
                CMD="$IPTABLES -I $PUBLICZONE -s $ipaddress -j DROP"
                $($CMD)
        else
                echo "Comment: $ipaddress"
        fi
done < $RELAYSLIST
echo "DONE"
echo ""
