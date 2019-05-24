
#!/bin/bash
################################################################################
# Script for moving datadir
################################################################################

sudo mkdir /opt/datadir
sudo mv /opt/odoo/.local/share/Odoo /opt/datadir
sudo chown -R odoo:odoo /opt/datadir
sed -i 's+/opt/odoo/.local/share/Odoo+/opt/datadir/Odoo+g' /etc/odoo-server.conf
sed -i 's+logrotate = False+logrotate = True+g' /etc/odoo-server.conf
sed -i 's+proxy_mode = False+proxy_mode = True+g' /etc/odoo-server.conf
sudo service odoo-server restart
