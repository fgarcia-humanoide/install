#!/bin/bash
display_usage() { 
	echo -e "Este script instala Apache, activa los módulos necesarios, genera un certificado digital autofirmado y configura el virtualhost necesario para utilizar Apache como proxy SSL de Odoo.\n"
	echo -e "Este script debe ser ejecutado con privilegios de root. Haz login como root o utiliza el comando sudo.\nRecuerda que debes indicar el dominio para el cual se crea el certificado." 
	echo -e "\nUso del script:\n\t$0 dominio \n" 
} 

if [  $# -ne 1 ] 
then 
	display_usage
	exit 1
fi 

if [[ ( $# == "--help") ||  $# == "-h" ]] 
then 
	display_usage
	exit 0
fi 

if [[ $USER != "root" ]]; then 
	echo "Este script debe ser ejecutado con privilegios de root. Haz login como root o utiliza el comando sudo." 
	exit 1
fi 

# Instalamos Apache
aptitude update
apt-get -y install apache2

# Parámetros del certificado
COUNTRY=ES
ORG=humanoide
CN=$1
mkdir /etc/apache2/ssl
openssl req -x509 -nodes -days 3650 -newkey rsa:2048 -keyout /etc/apache2/ssl/apache.key -out /etc/apache2/ssl/apache.crt -subj /C=$COUNTRY/O=$ORG/CN=$CN

# Activamos los módulos SSL, rewrite, proxy y proxy_http
a2enmod ssl
a2enmod rewrite
a2enmod proxy
a2enmod proxy_http

# Generamos el virtual host en Apache
VIRTUALHOST_FILE=/etc/apache2/sites-available/odoo.conf
echo "# Proxy SSL para Odoo" > $VIRTUALHOST_FILE
echo "<VirtualHost *:80>" >> $VIRTUALHOST_FILE
echo "	RewriteEngine On" >> $VIRTUALHOST_FILE
echo "	RewriteCond %{HTTPS} !=on" >> $VIRTUALHOST_FILE
echo "	RewriteRule ^/(.*) https://%{SERVER_NAME}/\$1 [R,L]" >> $VIRTUALHOST_FILE
echo "</VirtualHost>" >> $VIRTUALHOST_FILE
echo "<VirtualHost *:443>" >> $VIRTUALHOST_FILE
echo "	SSLEngine On" >> $VIRTUALHOST_FILE
echo "	SSLCertificateFile /etc/apache2/ssl/apache.crt" >> $VIRTUALHOST_FILE
echo "	SSLCertificateKeyFile /etc/apache2/ssl/apache.key" >> $VIRTUALHOST_FILE
echo " " >> $VIRTUALHOST_FILE
echo "	ProxyPreserveHost On" >> $VIRTUALHOST_FILE
echo "	ProxyPass /  http://localhost:8069/" >> $VIRTUALHOST_FILE
echo "	ProxyPassReverse / http://localhost:8069/" >> $VIRTUALHOST_FILE
echo "</VirtualHost>" >> $VIRTUALHOST_FILE

a2ensite odoo
a2dissite 000-default
service apache2 restart

echo -e "\nConfiguración finalizada!\nAhora Odoo está accesible en https://$CN"
