#!/bin/bash

#The variable filename is created and it'll output to networkingscript_xxxx_xx_xx_##_##_AM/PM.txt

filename="networkingscript_"$(date '+%Y_%m_%d_%I_%M_%p')".txt"

#"networkingscript_"$(date '+%Y_%m_%d_%I_%M_%p')".txt"

#if /tmp/logs/networkingscriptlogoutput/"$filename" exists, then do nothing, if it doesn't then 
#create the directory then file

if [[ ! -e /tmp/logs/networkingscriptlogoutput/"$filename" ]]; then
    mkdir -p /tmp/logs/networkingscriptlogoutput
    touch /tmp/logs/networkingscriptlogoutput/"$filename"
echo "File and directory doesn't exist, creating now."
echo "Created directory /tmp/logs/networkingscriptlogoutput"
echo "Created file "$filename"" 
echo "File and directory doesn't exist, creating now." >> /tmp/logs/networkingscriptlogoutput/"$filename"
echo "Created directory /tmp/logs/networkingscriptlogoutput" >> /tmp/logs/networkingscriptlogoutput/"$filename"
echo "Created file /tmp/logs/"$filename"" >> /tmp/logs/networkingscriptlogoutput/"$filename"

fi


currenttime=$(date "+%D %T") >> /tmp/logs/networkingscriptlogoutput/"$filename"
currenttime=$(date "+%D %T")

echo "Current time: $currenttime" >> /tmp/logs/networkingscriptlogoutput/"$filename"
echo "Current time: $currenttime"

echo "Filename data stored in = /tmp/logs/networkingscriptlogoutput/"$filename"" >> /tmp/logs/networkingscriptlogoutput/"$filename"
echo "Filename data stored in = /tmp/logs/networkingscriptlogoutput/"$filename""

#Script Runtime Start
echo ""
echo "" >> /tmp/logs/networkingscriptlogoutput/"$filename"

echo "Script Runtime Start - $currenttime" >> /tmp/logs/networkingscriptlogoutput/"$filename"
echo "Script Runtime Start - $currenttime"

#IP Address Start
echo ""
echo "" >> /tmp/logs/networkingscriptlogoutput/"$filename"

echo "The IP Address(s) for the System are: "
echo "The IP Address(s) for the System are: " >> /tmp/logs/networkingscriptlogoutput/"$filename"

ip address | grep -E '((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])' >> /tmp/logs/networkingscriptlogoutput/"$filename" 
ip address | grep -E '((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])'

#DNS Start
echo ""
echo "" >> /tmp/logs/networkingscriptlogoutput/"$filename"

echo "DNS Name Server for the System:"
echo "DNS Name Server for the System:" >> /tmp/logs/networkingscriptlogoutput/"$filename"
grep "nameserver" /etc/resolv.conf >> /tmp/logs/networkingscriptlogoutput/"$filename"
grep "nameserver" /etc/resolv.conf

#Netstat Start
echo ""
echo "" >> /tmp/logs/networkingscriptlogoutput/"$filename"

echo "Output of the TCP and UDP ports that are listening"
echo "Output of the TCP and UDP ports that are listening" >> /tmp/logs/networkingscriptlogoutput/"$filename"
netstat -tulpn | grep LISTEN >> /tmp/logs/networkingscriptlogoutput/"$filename"
netstat -tulpn | grep LISTEN

#Google Ping Start
echo ""
echo "" >> /tmp/logs/networkingscriptlogoutput/"$filename"

echo "Ping to Google.com beginning for 5 times"
echo "Ping to Google.com beginning for 5 times" >>  /tmp/logs/networkingscriptlogoutput/"$filename"
ping google.com -c 5 >> /tmp/logs/networkingscriptlogoutput/"$filename"
ping google.com -c 5

#Google Traceroute Start
echo ""
echo "" >> /tmp/logs/networkingscriptlogoutput/"$filename"

echo "Traceroute to Google.com beginning" >> /tmp/logs/networkingscriptlogoutput/"$filename"
echo "Traceroute to Google.com beginning"
traceroute google.com >> /tmp/logs/networkingscriptlogoutput/"$filename"
traceroute google.com

#End of File
echo ""
echo "" >> /tmp/logs/networkingscriptlogoutput/"$filename"

echo "Script finish time: $currenttime"
echo "Script finish time: $currenttime" >> /tmp/logs/networkingscriptlogoutput/"$filename"

#Check File
echo ""
echo "" >> /tmp/logs/networkingscriptlogoutput/"$filename"

echo "Check file /tmp/logs/networkingscriptlogoutput/"$filename" for Script Info" >> /tmp/logs/networkingscriptlogoutput/"$filename"
echo "Check file /tmp/logs/networkingscriptlogoutput/"$filename" for Script Info"

