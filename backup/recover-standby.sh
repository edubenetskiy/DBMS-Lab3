#!/bin/sh -x

workspace=`dirname $0`/../
. $workspace/env.sh

mkdir -p $BACKUP_DIR

$workspace/sqlplusw <<@
    shutdown;
    startup nomount;
    alter database mount standby database;
    recover standby database;
    auto
    alter database open;
@
