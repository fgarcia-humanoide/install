#!/bin/bash
################################################################################
# script que hace copias
################################################################################

./makeswap.sh && ./postgres11.sh && ./odoo_install.sh && ./modules_install.sh && ./webmin_install.sh && ./alberguedecopias.sh && ./scriptdecopias.sh && ./cambiacrontab.sh && ./makeconfig.sh && ./datadir.sh && ./cambiaruta.sh && . ./cambiadir.sh && requirements_oca.sh
