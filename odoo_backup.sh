#!/bin/sh    
hostname=elservidordeturno

##########################################
## OpenERP Backup
## Backup databases:odoo_live_db1,odoo_live_db2
##########################################

# Stop OpenERP Server
#/etc/init.d/odoo-server stop

# name of the database to be backed up
for db in labasededatosdeturno
do
   date=`date +"%Y%m%d_%H%M%N"`

  filename="/home/postgres/${hostname}_${db}_${date}.dump"
  pg_dump -Fc --file= $db > $filename
done

# Start OpenERP Server
#/etc/init.d/odoo-server start

exit 0
