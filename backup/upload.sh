#!/bin/sh -x

workspace=`dirname $0`/../
. $workspace/env.sh

rsync --rsync-path=/opt/csw/bin/rsync --archive --progress --verbose $BACKUP_DIR oracle@db184:$BACKUP_DIR
