echo '0  3    * * 5   root    /opt/letsencrypt/letsencrypt-auto renew >> /var/log/le-renew.log'>> /etc/crontab
echo '5  3    * * 5   root    service apache2 restart'>> /etc/crontab
echo '0 13    * * *   postgres /var/scripts/odoo_backup.sh'>> /etc/crontab
echo '0 20    * * *   postgres /var/scripts/odoo_backup.sh'>> /etc/crontab
echo '0 21    * * *   postgres /var/scripts/clean_backup.sh'>> /etc/crontab
echo '#'>> /etc/crontab
