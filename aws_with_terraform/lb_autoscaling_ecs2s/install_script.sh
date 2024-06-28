#!/bin/bash

sudo apt-get update
sudo apt-get install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx
# EC2_AVAIL_ZONE=`curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone`
# echo "<h3 align='center'> Hello World from Availability zone : $EC2_AVAIL_ZONE ; Hostname $(hostname -f) </h3>" > /var/www/html/index.html
sudo echo "ip of the instance that serves you now:" >  /var/www/html/index.html
sudo ip a | grep metric | grep inet | awk '{print $2}' | cut -d "/" -f 1  >> /var/www/html/index.html
sudo apt install stress -y
