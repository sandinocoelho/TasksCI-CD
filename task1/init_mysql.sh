#!/bin/bash
/usr/bin/mysqld_safe --skip-grant-tables &;
sleep 5;
mysql -u root -p petclinic -e "CREATE DATABASE petclinic";
mysql -u root -p petclinic petclinic < /tmp/dump.sql;
