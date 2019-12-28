#!/bin/bash
################################################################################
# script que hace copias
################################################################################

./makeswap.sh && ./postgres11.sh && ./odoo_install.sh && ./modules_install.sh && ./webmin_install.sh && ./alberguedecopias.sh && ./letsencrypt.sh && ./scriptdecopias.sh && ./requirements.sh
