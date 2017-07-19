# some_modules
#!/bin/bash
################################################################################
# Script for Installation: some odoo modules

#
################################################################################
 
##fixed parameters
#openerp
OE_USER="odoo"
OE_HOME="/opt/$OE_USER"
OE_HOME_EXT="/opt/$OE_USER/$OE_USER-server"

#Enter version for checkout "8.0" for version 8.0, "7.0 (version 7), saas-4, saas-5 (opendays version) and "master" for trunk
OE_VERSION="10.0"

echo -e "\n==== Installing spanish localization ===="
sudo git clone --branch 10.0 https://github.com/OCA/l10n-spain.git $OE_HOME/l10n-spain

echo -e "\n==== Installing some modules ===="
sudo git clone --branch 10.0 https://github.com/OCA/account-financial-tools.git $OE_HOME/account-financial-tools
sudo git clone --branch 10.0 https://github.com/OCA/account-financial-reporting.git $OE_HOME/account-financial-reporting
sudo git clone --branch 10.0 https://github.com/OCA/account-payment.git $OE_HOME/account-payment
sudo git clone --branch 10.0 https://github.com/OCA/knowledge.git $OE_HOME/knowledge
sudo git clone --branch 10.0 https://github.com/OCA/reporting-engine.git $OE_HOME/reporting-engine
sudo git clone --branch 10.0 https://github.com/OCA/partner-contact.git $OE_HOME/partner-contact
sudo git clone --branch 10.0 https://github.com/OCA/server-tools.git $OE_HOME/server-tools
sudo git clone --branch 10.0 https://github.com/OCA/web.git $OE_HOME/web
sudo git clone --branch 10.0 https://github.com/OCA/bank-payment.git $OE_HOME/bank-payment

sudo git clone --branch 10.0 https://github.com/OCA/pos.git $OE_HOME/pos
sudo git clone --branch 10.0 https://github.com/OCA/bank-statement-import.git $OE_HOME/bank-statement-import


echo -e "\n---- Setting permissions on home folder ----"
sudo chown -R $OE_USER:$OE_USER $OE_HOME/*


echo "Done! Some modules installed"
echo "Recuerda wkhtmltopdf 0.12.1 System parameters -> key:report.url value:http://localhost:8069"


