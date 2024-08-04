--Query for all the methods used on a specific bone
SELECT method_name AS "Method Name", mbone_name AS "Bone"
FROM method
WHERE mbone_name = 'BU-01-01';

--Query to represent all the methods used to determine age
SELECT distinct method_name, MBONE_NAME, paper AS "description", MEASURE_TYPE, MEASURE_VALUE
FROM method 
WHERE measure_type = 'Age'
order by METHOD_NAME;

--Cases with blunt force or gun shot trauma with their description
SELECT * 
FROM trauma, casefile, bone
WHERE bone.bcase_number = casefile.case_number 
AND trauma.TBONE_NAME = bone.BONE_NAME 
AND (trauma.trauma_type = 'Blunt Force' OR trauma.trauma_type = 'Gun Shot');

--This Query gives all the cases and trauma reports for every case with gender female
SELECT trauma.tbone_name, casefile.case_number, casefile.person_sex, trauma.trauma_type, trauma.trauma_time 
FROM trauma, casefile, bone
WHERE bone.bcase_number = casefile.case_number  
AND trauma.TBONE_NAME = bone.BONE_NAME 
AND casefile.person_sex = 'Female';


--All the totals of ERA types, Identification data and Maxwell transfer
SELECT 
COUNT (CASE WHEN era='Modern' THEN 1 END) as "Modern Total",
COUNT (CASE WHEN era='Historic' THEN 1 END) as "Historic Total",
COUNT (CASE WHEN era='Prehistoric' THEN 1 END) as "Prehistoric Total",
COUNT (CASE WHEN if_identified='Yes' THEN 1 END) as "Identified Total",
COUNT (CASE WHEN if_identified='No' THEN 1 END) as "D.O.E. Total",
COUNT (CASE WHEN to_maxwell='Yes' THEN 1 END) as "Maxwell Total",
COUNT (CASE WHEN to_maxwell ='Yes' AND if_identified ='Yes' THEN 1 END) as "Maxwell Identified Total"
FROM casefile;

--Report based on an age range
SELECT *
FROM casefile, trauma, pathology, decomposition, method, bone
WHERE bone.bcase_number = casefile.case_number 
AND trauma.tbone_name = bone.BONE_NAME 
AND pathology.pbone_name = bone.BONE_NAME 
AND decomposition.de_bone_name = bone.BONE_NAME 
AND method.mbone_name = bone.BONE_NAME 
AND (casefile.person_age BETWEEN 0 AND 40);

--Full report based on case number. 
Select *
FROM CASEFILE,BONE,DECOMPOSITION,DAMAGE,GENERIC,IMAGE,METHOD,PATHOLOGY,RECOVERED,TRAUMA
WHERE bone.bcase_number = casefile.case_number 
AND casefile.case_number = 'BU-03'
AND trauma.tbone_name = bone.BONE_NAME 
AND pathology.pbone_name = bone.BONE_NAME 
AND decomposition.de_bone_name = bone.BONE_NAME 
AND method.mbone_name = bone.BONE_NAME 
AND damage.da_bone_name = bone.BONE_NAME 
AND generic.gbone_name = bone.BONE_NAME 
AND recovered.rbone_name = bone.BONE_NAME 
AND image.icase_number = bone.bcase_number
ORDER BY casefile.case_number;
