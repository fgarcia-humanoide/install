# -*- coding: utf-8 -*-
{
    'name': "/opt/odoo/supermodulo",

    'summary': """
        Short (1 phrase/line) summary of the module's purpose, used as
        subtitle on modules listing or apps.openerp.com""",

    'description': """
        Long description of module's purpose
    """,

    'author': "My Company",
    'website': "http://www.yourcompany.com",

    # Categories can be used to filter modules in modules listing
    # Check https://github.com/odoo/odoo/blob/11.0/odoo/addons/base/module/module_data.xml
    # for the full list
    'category': 'Uncategorized',
    'version': '0.1',

    # any module necessary for this one to work correctly
   

'depends': [
       
       		'account_cash_basis_base_account',
		'crm',
		'project',
		'stock',
		'sale_management',
		'stock_account',
		'base_address_city',
		'mail',
		'account',
		'account_invoicing',
		'account_asset',		
		'note',
		'purchase',
		'hr',
		'account_balance_line',
		'account_bank_statement_import',
		'account_banking_mandate',
		'account_banking_pain_base',
		'account_banking_sepa_credit_transfer',
		'account_budget',
		'account_cancel',
		'account_chart_update',
		'account_due_list',
		'account_due_list_payment_mode',
		'account_financial_report',
		'account_financial_report_date_range',
		'account_invoice_constraint_chronology',
		'account_payment_mode',
		'account_payment_order',
		'account_payment_partner',
		'account_payment_purchase',
		'account_payment_sale',
		'account_renumber',
		'account_tax_balance',
		'analytic',
		'auth_signup',
		'barcodes',
		'base',
		'base_bank_from_iban',
		'base_iban',
		'base_import',
		'base_location',
		'base_location_geonames_import',
		'base_partner_sequence',
		'base_setup',
		'base_technical_features',
		'base_vat',
		'base_vat_autocomplete',
		'board',
		'bus',
		'calendar_sms',
		'contacts',
		'contract',
		'contract_payment_mode',
		'contract_sale',
		'crm_claim',
		'customer_activity_statement',
		'customer_outstanding_statement',
		'date_range',
		'decimal_precision',
		'disable_odoo_online',
		'document',
		'document_page',
		'document_url',
		'fetchmail',
		'iap',
		'knowledge',
		'l10n_es',
		'l10n_es_account_asset',
		'l10n_es_account_bank_statement_import_n43',
		'l10n_es_account_banking_sepa_fsdd',
		'l10n_es_account_invoice_sequence',
		'l10n_es_aeat',
		'l10n_es_aeat_mod111',
		'l10n_es_aeat_mod115',
		'l10n_es_aeat_mod303',
		'l10n_es_aeat_mod347',
		'l10n_es_aeat_mod349',
		'l10n_es_aeat_mod390',
		'l10n_es_dua',
		'l10n_es_mis_report',
		'l10n_es_partner',
		'l10n_es_toponyms',
		'l10n_es_vat_book',
		'mass_editing',
		'payment',
		'payment_transfer',
		'procurement_jit',
		'product',
		'project_task_default_stage',
		'project_timeline',
		'report_xlsx',
		'resource',
		'sale',
		'sale_stock',
		'sales_team',
		'sms',
		'utm',
		'web',
		'web_diagram',
		'web_editor',
		'web_export_view',
		'web_kanban_gauge',
		'web_no_bubble',
		'web_planner',
		'web_settings_dashboard',
		'web_sheet_full_width',
		'web_timeline',
		'web_tour',
		'web_widget_color',
		'calendar',
		'portal',
		'http_routing',

	],


    # always loaded
    'data': [
        # 'security/ir.model.access.csv',
        'views/views.xml',
        'views/templates.xml',
    ],
    # only loaded in demonstration mode
    'demo': [
        'demo/demo.xml',
    ],
}
