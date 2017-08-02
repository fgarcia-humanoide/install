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
sudo git clone --branch 10.0 https://github.com/OCA/knowledge.git $OE_HOME/knowledge
sudo git clone --branch 10.0 https://github.com/OCA/pos.git $OE_HOME/pos
sudo git clone --branch 10.0 https://github.com/OCA/bank-statement-import.git $OE_HOME/bank-statement-import

echo -e "\n---- Create some links ----"
sudo ln -s $OE_HOME/account-financial-reporting/account_export_csv $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/account-financial-reporting/account_move_line_report_xls $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/account-financial-reporting/account_tax_balance $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/account-financial-tools/account_chart_update $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/account-financial-tools/account_invoice_constraint_chronology $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/account-financial-tools/account_invoice_currency $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/account-financial-tools/account_journal_always_check_date $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/account-financial-tools/account_renumber $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/account-payment/account_due_list $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/account-payment/account_due_list_payment_mode $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/bank-payment/account_banking_mandate/ $OE_HOME/custom/addons/ 
sudo ln -s $OE_HOME/bank-payment/account_banking_pain_base/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/bank-payment/account_banking_payment_export/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/bank-payment/account_banking_payment_transfer/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/bank-payment/account_banking_sepa_direct_debit/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/bank-payment/account_direct_debit/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/bank-payment/account_payment_partner $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/bank-payment/account_payment_mode $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/bank-payment/account_payment_order $OE_HOME/custom/addons/

sudo ln -s $OE_HOME/bank-statement-import/account_bank_statement_import/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/knowledge/attachment_preview/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/knowledge/attachments_to_filesystem/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/knowledge/document_page/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/knowledge/document_url/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/knowledge/knowledge/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/account_balance_reporting_xls/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/account_balance_reporting/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/account_refund_original $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/l10n_es_account_asset/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/l10n_es_account_balance_report/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/l10n_es_account_bank_statement_import_n43/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/l10n_es_account_invoice_sequence/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/l10n_es_aeat_mod111/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/l10n_es_aeat_mod115/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/l10n_es_aeat_mod130/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/l10n_es_aeat_mod303/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/l10n_es_aeat_mod340_type0/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/l10n_es_aeat_mod340/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/l10n_es_aeat_mod347/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/l10n_es_aeat_mod349/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/l10n_es_aeat/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/l10n_es_fiscal_year_closing/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/l10n_es_partner_mercantil/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/l10n_es_partner/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/l10n_es_pos/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/l10n_es_toponyms/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/l10n-spain/l10n_es/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/partner-contact/base_location $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/partner-contact/base_location_geonames_import/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/partner-contact/base_partner_sequence $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/pos/pos_pricelist/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/reporting-engine/report_custom_filename/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/reporting-engine/report_xlsx/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/server-tools/disable_odoo_online/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/server-tools/mass_editing/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/server-tools/date_range/ $OE_HOME/custom/addons/
sudo ln -s $OE_HOME/web/web_export_view/ $OE_HOME/custom/addons/



echo -e "\n---- Setting permissions on home folder ----"
sudo chown -R $OE_USER:$OE_USER $OE_HOME/*


echo "Done! Some modules installed"


