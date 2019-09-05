#!/bin/bash
touch /root/nmap
nmap -PS 192.168.31.0/24 > /root/nmap
unix2dos /root/nmap
zip /root/nmap.zip /root/nmap
echo "Hosr Discovery" | mutt -s "Nmap Scan Report" xiulingorigin@163.com -a /root/nmap.zip
rm -rf /root/nmap /root/nmap.zip
