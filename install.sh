#!/bin/bash -x

workspace=`dirname $0`
. $workspace/env.sh

$workspace/install/20-sys-auth.sh
$workspace/install/30-init-file.sh
$workspace/install/40-data-storage.sh
$workspace/install/50-create-database.sh
$workspace/install/60-create-tablespaces.sh
$workspace/install/65-archivelog-mode.sh
$workspace/install/70-create-dict.sh
