#!/bin/bash -x

source ./env.sh

install/20-sys-auth.sh
install/30-init-file.sh
install/40-data-storage.sh
install/50-create-database.sh
install/60-create-tablespaces.sh
install/70-create-dict.sh
