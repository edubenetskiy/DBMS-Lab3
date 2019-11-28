#!/bin/sh

workspace=`dirname $0`/../
. $workspace/env.sh

$backup/recover-standby.sh
