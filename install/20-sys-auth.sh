#
# Administrator authentication
#

DB_PASSWORD_FILE=$ORACLE_HOME/dbs/orapw$ORACLE_SID
rm -f $DB_PASSWORD_FILE
orapwd file=$DB_PASSWORD_FILE password=$DB_PASSWORD
