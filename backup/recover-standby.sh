#!/bin/sh -x

workspace=`dirname $0`/../
. $workspace/env.sh

mkdir -p $BACKUP_DIR

$workspace/sqlplusw <<@
    startup nomount;
    alter database mount standby database;
    recover standby database;
    shutdown;
@
