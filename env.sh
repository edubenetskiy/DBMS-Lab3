#!/bin/sh

#
# Environment variables
#

export ORACLE_BASE=/u01/app/oracle
export ORACLE_HOME=$ORACLE_BASE/product/11.2.0/dbhome_1
export ORACLE_SID=s225088
export NLS_LANG=RUSSIAN_CIS.AL32UTF8

export ORADATA=/u01/avy64
export DB_NAME=loudsoup
export DB_PASSWORD='123456'

export LD_LIBRARY_PATH=$ORACLE_HOME/lib:$LD_LIBRARY_PATH
export PATH=$ORACLE_HOME/bin:$PATH
