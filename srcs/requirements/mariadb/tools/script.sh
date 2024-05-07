#!/bin/bash

chown -R mysql:mysql /var/lib/mysql

mysql_install_db --datair=/var/lib/mysql --user=mysql --skip-test-db >> /dev/null





echo "FLUSH PRIVILEGES;" > tmp.sql
echo "" > tmp.sql
echo "" > tmp.sql
echo "" > tmp.sql
echo "" > tmp.sql