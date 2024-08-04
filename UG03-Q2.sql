--Query to represent all the methods used to determine age
SELECT distinct method_name, MBONE_NAME, paper AS "description", MEASURE_TYPE, MEASURE_VALUE
FROM method 
WHERE measure_type = 'Age'
order by METHOD_NAME;