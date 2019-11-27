#!/bin/sh -x

workspace=`dirname $0`/../
. $workspace/env.sh

$workspace/sqlplusw <<@
    alter database archivelog; 
@

rman target / <<@
    configure channel
        device type disk
        format '$ORADATA/backup/rman/rman_%d_%U.backup';

    startup mount;
    run {
        backup database;
        backup archivelog all;
    }
    shutdown;
    exit
@
