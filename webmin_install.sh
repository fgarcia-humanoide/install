#!/bin/bash
################################################################################
# This script will install webmin
#
################################################################################
 

#--------------------------------------------------
# Install webmin
#--------------------------------------------------
echo -e "\n---- Installing webmin ----"
sudo echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
sudo cd /root
sudo wget http://www.webmin.com/jcameron-key.asc
sudo apt-key add jcameron-key.asc
sudo apt-get update
sudo apt-get install webmin -y
