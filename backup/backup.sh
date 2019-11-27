#!/bin/sh -x

workspace=`dirname $0`/../
. $workspace/env.sh

$workspace/sqlplusw <<@
    alter database archivelog; 
@

rman target / <<@
    startup mount;
    run {
        backup database;
        backup archivelog all;
    }
    shutdown;
    exit
@
