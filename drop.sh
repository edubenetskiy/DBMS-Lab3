#!/bin/sh

#
# Drop database
#

. `dirname $0`/env.sh

sqlplus -S SYS/$DB_PASSWORD as SYSDBA <<@
    STARTUP;
    SHUTDOWN IMMEDIATE;
    STARTUP MOUNT EXCLUSIVE RESTRICT;
    DROP DATABASE;
@
