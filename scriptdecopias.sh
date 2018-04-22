#!/bin/bash
################################################################################
# script que hace copias
################################################################################
 
sudo mkdir /var/scripts
cd /var/scripts
wget https://raw.githubusercontent.com/humanoide/install/11/clean_backup.sh /var/scripts
wget https://raw.githubusercontent.com/humanoide/11/odoo_backup.sh /var/scripts
chown postgres:postgres /var/scripts/clean_backup.sh
chown postgres:postgres /var/scripts/odoo_backup.sh
chmod +x /var/scripts/*
