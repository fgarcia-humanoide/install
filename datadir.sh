
#!/bin/bash
################################################################################
# Script for moving datadir
################################################################################

sudo mkdir /opt/datadir
sudo mv /opt/odoo/.local/sahre/Odoo /opt/datadir/Odoo
chown -R odoo:odoo /opt/datadir



