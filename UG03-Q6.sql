--Report based on an age range
SELECT *
FROM casefile, trauma, pathology, decomposition, method, bone
WHERE bone.bcase_number = casefile.case_number 
AND trauma.tbone_name = bone.BONE_NAME 
AND pathology.pbone_name = bone.BONE_NAME 
AND decomposition.de_bone_name = bone.BONE_NAME 
AND method.mbone_name = bone.BONE_NAME 
AND (casefile.person_age BETWEEN 0 AND 40);