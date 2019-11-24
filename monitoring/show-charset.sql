select * from nls_database_parameters 
where parameter='NLS_CHARACTERSET';

SELECT value$ FROM sys.props$ WHERE name = 'NLS_CHARACTERSET' ;

-- SELECT * FROM NLS_DATABASE_PARAMETERS;
