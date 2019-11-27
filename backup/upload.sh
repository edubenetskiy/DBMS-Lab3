#!/bin/sh -x

workspace=`dirname $0`/../
. $workspace/env.sh

: ${TARGET_HOST:=oracle@db184}
rsync --rsync-path=/opt/csw/bin/rsync --archive --progress --verbose $BACKUP_DIR $TARGET_HOST:$BACKUP_DIR
