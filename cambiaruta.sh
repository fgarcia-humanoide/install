#!/bin/bash
################################################################################
# Script for path
################################################################################

sed -i 's+/opt/odoo/odoo-server/addons,/opt/odoo/custom/addons+/opt/odoo/account-analytic,/opt/odoo/account-closing,/opt/odoo/account-financial-reporting,/opt/odoo/account-financial-tools,/opt/odoo/account-invoicing,/opt/odoo/account-reconcile,/opt/odoo/account-payment,/opt/odoo/bank-payment,/opt/odoo/bank-statement-import,/opt/odoo/commission,/opt/odoo/community-data-files,/opt/odoo/contract,/opt/odoo/credit-control,/opt/odoo/crm,/opt/odoo/CybroAddons,/opt/odoo/event,/opt/odoo/hr,/opt/odoo/knowledge,/opt/odoo/l10n-spain,/opt/odoo/manufacture,/opt/odoo/mis-builder,/opt/odoo/partner-contact,/opt/odoo/pos,/opt/odoo/product-attribute,/opt/odoo/product-variant,/opt/odoo/project,/opt/odoo/purchase-workflow,/opt/odoo/queue,/opt/odoo/reporting-engine,/opt/odoo/sale-workflow,/opt/odoo/server-brand,/opt/odoo/server-tools,/opt/odoo/server-ux,/opt/odoo/social,/opt/odoo/stock-logistics-warehouse,/opt/odoo/stock-logistics-workflow,/opt/odoo/timesheet,/opt/odoo/web,/opt/odoo/website,/opt/odoo/custom/addons,/opt/odoo/odoo-server/addons+g' /etc/odoo-server.conf

sudo service odoo-server restart
