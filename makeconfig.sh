#!/bin/bash
################################################################################
# Script for creating a proper config file
################################################################################
 
sudo /opt/odoo/odoo-server python3 --save --config /etc/odoo-server.conf
sudo chmod 640 /etc/odoo-server.conf
sudo chown odoo:odoo /etc/odoo-server.conf
