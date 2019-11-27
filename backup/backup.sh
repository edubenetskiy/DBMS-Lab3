#!/bin/sh -x

workspace=`dirname $0`/../
. $workspace/env.sh

$workspace/sqlplusw <<@
    alter database archivelog; 
@
