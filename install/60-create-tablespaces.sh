#
# Create tablespaces
#

sqlfile='60-create-tablespaces.sql'

cat >$sqlfile <<@
    CREATE TABLESPACE LAST_WHITE_MOM
        DATAFILE
          '$ORADATA/$DB_NAME/node02/lastwhitemom01.dbf' SIZE 10M REUSE
        , '$ORADATA/$DB_NAME/node02/lastwhitemom02.dbf' SIZE 10M REUSE
        , '$ORADATA/$DB_NAME/node02/lastwhitemom03.dbf' SIZE 10M REUSE
        ;

    CREATE TABLESPACE ILL_ORANGE_OVEN
        DATAFILE
          '$ORADATA/$DB_NAME/node01/illorangeoven01.dbf' SIZE 10M REUSE
        , '$ORADATA/$DB_NAME/node03/illorangeoven02.dbf' SIZE 10M REUSE
        ;

    CREATE TABLESPACE BEST_YELLOW_MATH
        DATAFILE
          '$ORADATA/$DB_NAME/node03/bestyellowmath01.dbf' SIZE 10M REUSE
        , '$ORADATA/$DB_NAME/node02/bestyellowmath02.dbf' SIZE 10M REUSE
        ;

    EXIT
@

sqlplus SYS/$DB_PASSWORD as SYSDBA @ $sqlfile
