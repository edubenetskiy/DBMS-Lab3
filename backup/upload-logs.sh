#!/bin/sh -x

workspace=`dirname $0`/../
. $workspace/env.sh

: ${TARGET_HOST:=oracle@db184}
ssh $TARGET_HOST "mkdir -p $ORADATA/logs/"
rsync --rsync-path=/opt/csw/bin/rsync --archive --progress --verbose $ORADATA/logs/ $TARGET_HOST:$ORADATA/logs/
