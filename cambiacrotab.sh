


sudo crontab -e

0  3    * * 5   root    /opt/letsencrypt/letsencrypt-auto renew >> /var/log/le-renew.log
5  3    * * 5   root    service apache2 restart
0 13    * * *   postgres /var/scripts/odoo_backup.sh
0 20    * * *   postgres /var/scripts/odoo_backup.sh
0 21    * * *   postgres /var/scripts/clean_backup.sh
