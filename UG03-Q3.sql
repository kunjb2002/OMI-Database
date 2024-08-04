--Cases with blunt force or gun shot trauma with their description
SELECT * 
FROM trauma, casefile, bone
WHERE bone.bcase_number = casefile.case_number 
AND trauma.TBONE_NAME = bone.BONE_NAME 
AND (trauma.trauma_type = 'Blunt Force' OR trauma.trauma_type = 'Gun Shot');