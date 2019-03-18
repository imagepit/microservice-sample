#!/bin/bash -eu

mysql=( mysql --protocol=socket -uroot -p"${MYSQL_ROOT_PASSWORD}" )

"${mysql[@]}" <<-EOSQL
    CREATE DATABASE IF NOT EXISTS sboot default character set utf8;
    GRANT ALL ON sboot.* TO '${MYSQL_USER}'@'%' ;
EOSQL