#!/bin/sh

workspace=`dirname $0`/../
. $workspace/env.sh

$workspace/backup/backup.sh
$workspace/backup/upload.sh
$workspace/backup/upload-logs.sh
