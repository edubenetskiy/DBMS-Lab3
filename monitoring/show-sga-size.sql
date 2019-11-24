select
    name,
    value/1024/1024 || ' MiB' as value
from v$sga
;

select
    name,
    value/1024/1024 || ' MiB' as value
from v$parameter
where name = 'sga_target'
;
