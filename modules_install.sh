##fixed parameters
#openerp
OE_USER="odoo"
OE_HOME="/opt/$OE_USER"
OE_HOME_EXT="/opt/$OE_USER/$OE_USER-server"

#Enter version for checkout "8.0" for version 8.0, "7.0 (version 7), saas-4, saas-5 (opendays version) and "master" for trunk
OE_VERSION="11.0"

echo -e "\n==== Installing spanish localization ===="
sudo git clone --branch 11.0 https://github.com/OCA/l10n-spain.git $OE_HOME/l10n-spain

echo -e "\n==== Installing some modules ===="
sudo git clone --branch 11.0 https://github.com/OCA/account-financial-tools.git $OE_HOME/account-financial-tools
sudo git clone --branch 11.0 https://github.com/OCA/account-financial-reporting.git $OE_HOME/account-financial-reporting
sudo git clone --branch 11.0 https://github.com/OCA/account-payment.git $OE_HOME/account-payment
sudo git clone --branch 11.0 https://github.com/OCA/reporting-engine.git $OE_HOME/reporting-engine
sudo git clone --branch 11.0 https://github.com/OCA/partner-contact.git $OE_HOME/partner-contact
sudo git clone --branch 11.0 https://github.com/OCA/server-tools.git $OE_HOME/server-tools
sudo git clone --branch 11.0 https://github.com/OCA/web.git $OE_HOME/web
sudo git clone --branch 11.0 https://github.com/OCA/bank-payment.git $OE_HOME/bank-payment
sudo git clone --branch 11.0 https://github.com/OCA/pos.git $OE_HOME/pos
sudo git clone --branch 11.0 https://github.com/OCA/bank-statement-import.git $OE_HOME/bank-statement-import
sudo git clone --branch 11.0 https://github.com/OCA/contract.git $OE_HOME/contract
sudo git clone --branch 11.0 https://github.com/OCA/project.git $OE_HOME/project
sudo git clone --branch 11.0 https://github.com/OCA/crm.git $OE_HOME/crm
sudo git clone --branch 11.0 https://github.com/OCA/account-closing.git $OE_HOME/account-closing
sudo git clone --branch 11.0 https://github.com/fgarcia-humanoide/supermodulo.git $OE_HOME/supermodulo
sudo git clone --branch 11.0 https://github.com/OCA/server-ux.git $OE_HOME/server-ux
sudo git clone --branch 11.0 https://github.com/OCA/account-invoicing.git $OE_HOME/account-invoicing
sudo git clone --branch 11.0 https://github.com/OCA/community-data-files.git $OE_HOME/community-data-files
sudo git clone --branch 11.0 https://github.com/OCA/mis-builder.git $OE_HOME/mis-builder
sudo git clone --branch 11.0 https://github.com/OCA/queue.git $OE_HOME/queue









echo -e "\n---- Setting permissions on home folder ----"
sudo chown -R $OE_USER:$OE_USER $OE_HOME/*


echo "Done! Some modules installed"


