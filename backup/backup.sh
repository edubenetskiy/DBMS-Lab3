#!/bin/sh -x

workspace=`dirname $0`/../
. $workspace/env.sh

$workspace/sqlplusw <<@
    alter database archivelog; 
@

backup_dir=$ORADATA/backup/rman/
mkdir -p $backup_dir

rman target / <<@
    startup mount;

    configure backup optimization on;

    configure controlfile autobackup on;

    configure channel
        device type disk
        format '$backup_dir/rman_%d_%U.backup';

    configure retention policy
        to recovery window of 7 days;

    run {
        backup archivelog all;
    }

    delete noprompt obsolete;

    shutdown;
    exit
@
