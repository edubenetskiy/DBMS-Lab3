#!/bin/sh -x

workspace=`dirname $0`/../
. $workspace/env.sh

mkdir -p $BACKUP_DIR

$workspace/sqlplusw <<@
    shutdown;
    startup mount;
@

rman target / <<@
    restore archivelog all;
    restore database;
    recover database;
    alter database open;
@
