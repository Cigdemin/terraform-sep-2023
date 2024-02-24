#!/bin/bash 
yum update -y 
yum install httpd -y 
echo "homework ha been completed" >> /var/www/html/index.html
sudo systemctl start httpd 
sudo systemctl enable httpd 