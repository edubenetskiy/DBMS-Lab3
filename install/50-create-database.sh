#
# Create database
#

sqlfile='50-create-database.sql'

cat >$sqlfile <<@
    CREATE SPFILE FROM PFILE;

    STARTUP NOMOUNT;

    CREATE DATABASE $DB_NAME
        USER SYS IDENTIFIED BY $DB_PASSWORD
        USER SYSTEM IDENTIFIED BY $DB_PASSWORD
        CHARACTER SET UTF8
        NATIONAL CHARACTER SET UTF8
        DATAFILE '$ORADATA/$DB_NAME/node04/adici16.dbf'
            SIZE 700M REUSE AUTOEXTEND ON NEXT 10240K MAXSIZE UNLIMITED
        SYSAUX DATAFILE '$ORADATA/$DB_NAME/node01/sap68.dbf'
            SIZE 500M REUSE AUTOEXTEND ON NEXT 10240K MAXSIZE UNLIMITED
        DEFAULT TABLESPACE USERS
            DATAFILE '$ORADATA/$DB_NAME/node02/aqupise567.dbf'
            SIZE 500M REUSE AUTOEXTEND ON NEXT 10240K MAXSIZE UNLIMITED
        UNDO TABLESPACE UNDOTBS1
            DATAFILE '$ORADATA/$DB_NAME/undotbs01.dbf'
            SIZE 200M REUSE AUTOEXTEND ON NEXT 5120K MAXSIZE UNLIMITED
    ;

    EXIT
@

sqlplus SYS/$DB_PASSWORD as SYSDBA @ $sqlfile