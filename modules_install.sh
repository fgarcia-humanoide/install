##fixed parameters
#openerp
OE_USER="odoo"
OE_HOME="/opt/$OE_USER"
OE_HOME_EXT="/opt/$OE_USER/$OE_USER-server"

#Enter version for checkout "8.0" for version 8.0, "7.0 (version 7), saas-4, saas-5 (opendays version) and "master" for trunk
OE_VERSION="14.0"

git clone -b 14.0 https://github.com/OCA/account-analytic.git /opt/odoo/account-analytic
git clone -b 14.0 https://github.com/OCA/account-closing.git /opt/odoo/account-closing
git clone -b 14.0 https://github.com/OCA/account-financial-reporting.git /opt/odoo/account-financial-reporting
git clone -b 14.0 https://github.com/OCA/account-financial-tools.git /opt/odoo/account-financial-tools
git clone -b 14.0 https://github.com/OCA/account-invoicing.git /opt/odoo/account-invoicing
git clone -b 14.0 https://github.com/OCA/account-payment.git /opt/odoo/account-payment
git clone -b 14.0 https://github.com/OCA/bank-payment.git /opt/odoo/bank-payment
git clone -b 14.0 https://github.com/OCA/bank-statement-import.git /opt/odoo/bank-statement-import
git clone -b 14.0 https://github.com/OCA/commission.git /opt/odoo/commission
git clone -b 14.0 https://github.com/OCA/community-data-files.git /opt/odoo/community-data-files
git clone -b 14.0 https://github.com/OCA/contract.git /opt/odoo/contract
git clone -b 14.0 https://github.com/OCA/crm.git /opt/odoo/crm
git clone -b 14.0 https://github.com/OCA/event.git /opt/odoo/event
git clone -b 14.0 https://github.com/OCA/hr.git /opt/odoo/hr
git clone -b 14.0 https://github.com/OCA/timesheet.git /opt/odoo/timesheet
git clone -b 14.0 https://github.com/OCA/knowledge.git /opt/odoo/knowledge
git clone -b 14.0 https://github.com/OCA/l10n-spain.git /opt/odoo/l10n-spain
git clone -b 14.0 https://github.com/OCA/manufacture.git /opt/odoo/manufacture
git clone -b 14.0 https://github.com/OCA/mis-builder.git /opt/odoo/mis-builder
git clone -b 14.0 https://github.com/OCA/partner-contact.git /opt/odoo/partner-contact
git clone -b 14.0 https://github.com/OCA/pos.git /opt/odoo/pos
git clone -b 14.0 https://github.com/OCA/product-attribute.git /opt/odoo/product-attribute
git clone -b 14.0 https://github.com/OCA/product-variant.git /opt/odoo/product-variant
git clone -b 14.0 https://github.com/OCA/project.git /opt/odoo/project
git clone -b 14.0 https://github.com/OCA/purchase-workflow.git /opt/odoo/purchase-workflow
git clone -b 14.0 https://github.com/OCA/queue.git /opt/odoo/queue
git clone -b 14.0 https://github.com/OCA/reporting-engine.git /opt/odoo/reporting-engine
git clone -b 14.0 https://github.com/OCA/sale-workflow.git /opt/odoo/sale-workflow
git clone -b 14.0 https://github.com/OCA/server-brand.git /opt/odoo/server-brand
git clone -b 14.0 https://github.com/OCA/server-tools.git /opt/odoo/server-tools
git clone -b 14.0 https://github.com/OCA/server-ux.git /opt/odoo/server-ux
git clone -b 14.0 https://github.com/OCA/social /opt/odoo/social
git clone -b 14.0 https://github.com/OCA/stock-logistics-warehouse.git /opt/odoo/stock-logistics-warehouse
git clone -b 14.0 https://github.com/OCA/stock-logistics-workflow.git /opt/odoo/stock-logistics-workflow
git clone -b 14.0 https://github.com/OCA/web.git /opt/odoo/web
git clone -b 14.0 https://github.com/OCA/website.git /opt/odoo/website
git clone -b 14.0 https://github.com/OCA/website.git /opt/odoo/website
git clone -b 14.0 https://github.com/CybroOdoo/CybroAddons.git /opt/odoo/CybroAddons
git clone -b 14.0 https://github.com/OCA/account-reconcile.git /opt/odoo/account-reconcile
git clone -b 14.0 https://github.com/OCA/credit-control.git /opt/odoo/credit-control
cp -r /root/install/requirements_oca.sh /opt/odoo/requirements_oca.sh
cp -r /root/install/update_oca.sh /opt/odoo/update_oca.sh 
sudo chmod +x /opt/odoo/requirements_oca.sh
sudo chmod +x /opt/odoo/update_oca.sh









echo -e "\n---- Setting permissions on home folder*** ----"
sudo chown -R $OE_USER:$OE_USER $OE_HOME/*


echo "Done! Some modules installed"
