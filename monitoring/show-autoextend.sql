select file_name, autoextensible, (increment_by * 4096 / 1024) as increment_by_kbytes from dba_data_files;
