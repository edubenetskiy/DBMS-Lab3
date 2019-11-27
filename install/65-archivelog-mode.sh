#
# Enable ARCHIVELOG mode
#

sqlplus SYS/$DB_PASSWORD as SYSDBA <<EOF
    startup mount;
    alter database archivelog;
    alter database dismount;
EOF
