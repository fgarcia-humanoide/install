echo '0  3    * * 5   root    certbot renew --pre-hook "service nginx stop" --post-hook "service nginx start" >> /var/log/le-renew.log'>> /etc/crontab
echo '0 13    * * *   postgres /var/scripts/odoo_backup.sh'>> /etc/crontab
echo '0 20    * * *   postgres /var/scripts/odoo_backup.sh'>> /etc/crontab
echo '0 20    * * *   cp /etc/odoo-server.conf /opt/odoo
echo '0 21    * * *   postgres /var/scripts/clean_backup.sh'>> /etc/crontab
echo '#'>> /etc/crontab
