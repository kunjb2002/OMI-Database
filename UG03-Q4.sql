--This Query gives all the cases and trauma reports for every case with gender female
SELECT trauma.tbone_name, casefile.case_number, casefile.person_sex, trauma.trauma_type, trauma.trauma_time 
FROM trauma, casefile, bone
WHERE bone.bcase_number = casefile.case_number  
AND trauma.TBONE_NAME = bone.BONE_NAME 
AND casefile.person_sex = 'Female';