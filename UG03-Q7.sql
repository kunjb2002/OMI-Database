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