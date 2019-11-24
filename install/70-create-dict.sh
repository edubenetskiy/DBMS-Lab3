#
# Create data dictionary
#

sqlplus SYS/$DB_PASSWORD as SYSDBA <<EOF
    @?/rdbms/admin/catalog.sql
    @?/rdbms/admin/catproc.sql
    @?/sqlplus/admin/pupbld.sql
EOF
