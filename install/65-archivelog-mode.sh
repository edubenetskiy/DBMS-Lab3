#
# Enable ARCHIVELOG mode
#

sqlplus SYS/$DB_PASSWORD as SYSDBA <<EOF
    alter database archivelog;
EOF
