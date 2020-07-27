#!/bin/bash
################################################################################
# Script for creating a proper config file
################################################################################
sudo service odoo-server stop 
cd /opt/odoo/odoo-server
python3 odoo-bin --save --config /etc/odoo-server.conf
sudo chmod 640 /etc/odoo-server.conf
sudo chown odoo:odoo /etc/odoo-server.conf
