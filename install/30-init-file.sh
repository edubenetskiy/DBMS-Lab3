#
# Initialization file
#
cat > $ORACLE_HOME/dbs/init$ORACLE_SID.ora <<@
    db_name='$DB_NAME'
    memory_target=1G
    sga_target=630M
    control_files=(ora_control1,ora_control2)
    db_block_size=4096
    log_archive_dest_1='LOCATION=/u01/avy64/logs/'
    log_archive_dest_state_1=ENABLE
    log_archive_format=%t_%s_%r.arc
@
