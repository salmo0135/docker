#!/bin/sh
APP_FOLDER="/backend/backend/"

while /bin/true; do
    mysql -u$DB_USER -h$DB_HOST -p$DB_PASSWORD $MYSQL_DB -e "SHOW DATABASES;" > /dev/null 2>&1
    [ $? -eq 0 ] && break
    echo "MySQL database is not up yet! Sleeping..."
    sleep 1
done


sed -i -e "s/REPLACE_ME_HOST/${DB_HOST}/" /backend/backend/app/config/db.config.js
sed -i -e "s/REPLACE_ME_USER/${DB_USER}/" /backend/backend/app/config/db.config.js
sed -i -e "s/REPLACE_ME_PASSWORD/${DB_PASSWORD}/" /backend/backend/app/config/db.config.js
sed -i -e "s/REPLACE_ME_DB/${MYSQL_DB}/" /backend/backend/app/config/db.config.js

node ${APP_FOLDER}/server.js



