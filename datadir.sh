
#!/bin/bash
################################################################################
# Script for moving datadir
################################################################################

sudo mkdir /opt/datadir
sudo mv /opt/odoo/.local/share/Odoo /opt/datadir/Odoo
sudo chown -R odoo:odoo /opt/datadir
sudo echo 'data_dir = /opt/datadir/Odoo'>> /etc/odoo-server.conf
sudo echo 'logrotate = True'>> /etc/odoo-server.conf
sudo service odoo-server restart
