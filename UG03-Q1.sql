--Query for all the methods used on a specific bone
SELECT method_name AS "Method Name", mbone_name AS "Bone"
FROM method
WHERE mbone_name = 'BU-01-01';