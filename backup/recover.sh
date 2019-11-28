#!/bin/sh -x

workspace=`dirname $0`/../
. $workspace/env.sh

mkdir -p $BACKUP_DIR

rman target / <<@
    startup mount;
    restore archivelog all;
    restore database;
    recover database;
@
