#!/bin/bash

DB="db_name"
USER="db_user"
PASS="user_pass"

#instala postgresql y levanta el servicio
apt-get install -y postgresql
service postgresql start

#Espera 5 segundos
sleep 5

#Se crea un usuario, la base de datos y se dan los permisos a ese usuario
echo "create user $USER with password '$PASS'" | su postgres -c "psql"
echo "create database $DB with owner $USER" | su postgres -c "psql"
echo "grant all privileges on database $DB to $USER" | su postgres -c "psql"