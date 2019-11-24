#
# Initialization file
#
cat > $ORACLE_HOME/dbs/init$ORACLE_SID.ora <<@
    db_name='$DB_NAME'
    memory_target=1G
    sga_target=630M
    control_files=(ora_control1,ora_control2)
    db_block_size=4096
@
