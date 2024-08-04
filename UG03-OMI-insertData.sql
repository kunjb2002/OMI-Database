INSERT INTO CASEFILE(case_number, date_opened, date_found, person_sex, person_ancestry, location_found, location_zipcode, location_city, location_county, environment, indoors, outdoors, if_identified, resolved, era, clothes_found, body_orientation, overall_decomposition, to_maxwell) 
VALUES('BU-01',TO_DATE('2017-12-09','YYYY-MM-DD'), TO_DATE('2017-12-09','YYYY-MM-DD') ,'Female','WHITE','1 University BLVD','87106','ABQ','Bernalillo','Fire','Yes','No','No','No','Historic','NA','Upside down - on belly', 'In good condition', 'Yes');

INSERT INTO CASEFILE(case_number, date_opened, date_found, person_name_first, person_name_last, person_dob, person_ssn, person_stature_inches, person_sex, person_ancestry, location_found, location_zipcode, location_city, location_county, environment, indoors, outdoors, if_identified, resolved, era, clothes_found, body_orientation, overall_decomposition, to_maxwell, person_age) 
VALUES('BU-02',TO_DATE('2021-12-09','YYYY-MM-DD'), TO_DATE('2021-10-09','YYYY-MM-DD') , 'Lesly', 'Chao', TO_DATE('1985-10-09','YYYY-MM-DD'), '999999999', '65.07', 'Male','ASIAN','505 UNM BLVD','99999','Santa fe','Santa Fe','Car','No','Yes','Yes','No','Modern','Jeans and T-shirt','Stuck in car', 'None', 'Yes', '36');

INSERT INTO CASEFILE(case_number, date_opened, date_found, person_name_first, person_name_last, person_dob, person_ssn, person_stature_inches, person_sex, person_ancestry, location_found, location_zipcode, location_city, location_county, environment, indoors, outdoors, if_identified, resolved, era, clothes_found, body_orientation, overall_decomposition, to_maxwell, person_age) 
VALUES('BU-03',TO_DATE('2020-12-09','YYYY-MM-DD'), TO_DATE('2020-10-09','YYYY-MM-DD') , 'Elizabeth', 'Salazar', TO_DATE('1990-10-09','YYYY-MM-DD'), '123123123', '75.07', 'Female','HISPANIC','3003 Tramway BLVD','12345','Tucson','Silver County','Car','No','Yes','Yes','No','Modern','Jeans and T-shirt','Stuck in car', 'None', 'Yes', '32');

INSERT INTO CASEFILE(case_number, date_opened, date_found, person_name_first, person_name_last, person_dob, person_ssn, person_stature_inches, person_sex, person_ancestry, location_found, location_zipcode, location_city, location_county, environment, indoors, outdoors, if_identified, resolved, era, clothes_found, body_orientation, overall_decomposition, to_maxwell, person_age) 
VALUES('BU-04',TO_DATE('2019-12-09','YYYY-MM-DD'), TO_DATE('2019-10-09','YYYY-MM-DD') , 'Rajan', 'Raj', TO_DATE('1951-10-09','YYYY-MM-DD'), '221331231', '68.07', 'Male','ASIAN','302 MG Road','87114','Bihar','UP County','Fire','Yes','No','Yes','Yes','Modern','Black Tuxedo','On the kitchen shelf', 'None', 'Yes', '71');

INSERT INTO CASEFILE(case_number, date_opened, date_found, person_name_first, person_name_last, person_dob, person_ssn, person_stature_inches, person_sex, person_ancestry, location_found, location_zipcode, location_city, location_county, environment, indoors, outdoors, if_identified, resolved, era, clothes_found, body_orientation, overall_decomposition, to_maxwell, person_age) 
VALUES('BU-05',TO_DATE('2018-12-09','YYYY-MM-DD'), TO_DATE('2018-10-09','YYYY-MM-DD') , 'Meg', 'Griffin', TO_DATE('1977-10-09','YYYY-MM-DD'), '456656454', '55.07', 'Female','WHITE','509 Quahog BLVD','97102','Los Angeles','Orange County','Other','Yes','No','Yes','Yes','Modern','Red Dress','On the floor', 'None', 'Yes', '49');

INSERT INTO BONE(bone_name, bone_type, bone_subtype, bone_origin, measurement_kg, color, integrity, dna_sent, dna_result, isotope_sent, isotope_result, bcase_number)
VALUES('BU-01-01', 'HEAD', 'SKULL', 'RECOVERED', '03.9', 'Yellow', '5', 'Yes', 'DNA matches were not found, results inconclusive', 'No', 'NA', 'BU-01'); 

INSERT INTO BONE(bone_name, bone_type, bone_subtype, bone_origin, measurement_kg, color, integrity, dna_sent, dna_result, isotope_sent, isotope_result, bcase_number)
VALUES('BU-01-02', 'TORSO', 'PELVIS', 'RECOVERED', '03.9', 'Yellow', '5', 'Yes', 'DNA matches were not found, results inconclusive', 'No', 'NA', 'BU-01'); 

INSERT INTO BONE(bone_name, bone_type, bone_subtype, bone_origin, measurement_kg, color, integrity, dna_sent, dna_result, isotope_sent, isotope_result, bcase_number)
VALUES('BU-02-01', 'TORSO', 'SPINE', 'RECOVERED', '02.3', 'White', '9', 'Yes', 'DNA matches were found', 'No', 'NA', 'BU-02'); 

INSERT INTO BONE(bone_name, bone_type, bone_subtype, bone_origin, measurement_kg, color, integrity, dna_sent, dna_result, isotope_sent, isotope_result, bcase_number)
VALUES('BU-03-01', 'LIMB', 'HAND', 'RECOVERED', '03.9', 'Yellow', '5', 'Yes', 'DNA matches were not found, results inconclusive', 'No', 'NA', 'BU-03'); 

INSERT INTO BONE(bone_name, bone_type, bone_subtype, bone_origin, measurement_kg, color, integrity, dna_sent, dna_result, isotope_sent, isotope_result, bcase_number)
VALUES('BU-04-01', 'LIMB', 'CALF', 'RECOVERED', '02.3', 'White', '9', 'Yes', 'DNA matches were found', 'No', 'NA', 'BU-04'); 

INSERT INTO BONE(bone_name, bone_type, bone_subtype, bone_origin, measurement_kg, color, integrity, dna_sent, dna_result, isotope_sent, isotope_result, bcase_number)
VALUES('BU-05-01', 'LIMB', 'THIGH', 'RECOVERED', '02.3', 'White', '9', 'Yes', 'DNA matches were found', 'No', 'NA', 'BU-05'); 

INSERT INTO DAMAGE(da_bone_name, overall_severity)
VALUES('BU-01-01', '7');

INSERT INTO DAMAGE(da_bone_name, overall_severity)
VALUES('BU-01-02', '8');

INSERT INTO DAMAGE(da_bone_name, overall_severity)
VALUES('BU-02-01', '5');

INSERT INTO DAMAGE(da_bone_name, overall_severity)
VALUES('BU-03-01', '4');

INSERT INTO DAMAGE(da_bone_name, overall_severity)
VALUES('BU-04-01', '6');

INSERT INTO DAMAGE(da_bone_name, overall_severity)
VALUES('BU-05-01', '9');

INSERT INTO DECOMPOSITION(de_bone_name, rodent, insect, carnivore, weathering)
VALUES('BU-01-01', '2', '3', '4', 'Casual');

INSERT INTO DECOMPOSITION(de_bone_name, rodent, insect, carnivore, weathering)
VALUES('BU-01-02', '0', '1', '0', 'Casual');

INSERT INTO DECOMPOSITION(de_bone_name, rodent, insect, carnivore, weathering)
VALUES('BU-02-01', '0', '1', '0', 'None');

INSERT INTO DECOMPOSITION(de_bone_name, rodent, insect, carnivore, weathering)
VALUES('BU-03-01', '0', '1', '0', 'None');

INSERT INTO DECOMPOSITION(de_bone_name, rodent, insect, carnivore, weathering)
VALUES('BU-04-01', '0', '1', '0', 'None');

INSERT INTO DECOMPOSITION(de_bone_name, rodent, insect, carnivore, weathering)
VALUES('BU-05-01', '0', '1', '0', 'None');

INSERT INTO IMAGE(image_name, body_area, image_type, icase_number)
VALUES('Skeletal', 'Whole', 'pdf', 'BU-01');

INSERT INTO IMAGE(image_name, body_area, image_type, icase_number)
VALUES('Accident', 'Leg', 'png', 'BU-02');

INSERT INTO IMAGE(image_name, body_area, image_type, icase_number)
VALUES('Accident', 'Leg', 'png', 'BU-03');

INSERT INTO IMAGE(image_name, body_area, image_type, icase_number)
VALUES('Accident', 'Leg', 'png', 'BU-04');

INSERT INTO IMAGE(image_name, body_area, image_type, icase_number)
VALUES('Accident', 'Leg', 'png', 'BU-05');

INSERT INTO METHOD(mbone_name, method_name, paper, measure_type, measure_value)
VALUES('BU-01-01', 'X-ray', 'X-ray showed bone age', 'Age', '60-70');

INSERT INTO METHOD(mbone_name, method_name, paper, measure_type, measure_value)
VALUES('BU-01-02', 'RC Dating', 'Radiocarbon dating is used', 'Age', '60-70');

INSERT INTO METHOD(mbone_name, method_name, paper, measure_type, measure_value)
VALUES('BU-02-01', 'CT Scan', 'CT Scan showed spine damage and spine measurements', 'Stature', '5-6 ft');

INSERT INTO METHOD(mbone_name, method_name, paper, measure_type, measure_value)
VALUES('BU-03-01', 'CT Scan', 'CT Scan showed spine damage and spine measurements', 'Stature', '5-6 ft');

INSERT INTO METHOD(mbone_name, method_name, paper, measure_type, measure_value)
VALUES('BU-04-01', 'CT Scan', 'CT Scan showed spine damage and spine measurements', 'Stature', '5-6 ft');

INSERT INTO METHOD(mbone_name, method_name, paper, measure_type, measure_value)
VALUES('BU-05-01', 'CT Scan', 'CT Scan showed spine damage and spine measurements', 'Stature', '5-6 ft');

INSERT INTO PATHOLOGY(pbone_name, pathology_name, chronic, disease_length)
VALUES('BU-01-01', 'Vascular Lesion', 'Yes', '5');

INSERT INTO PATHOLOGY(pbone_name, pathology_name, chronic, disease_length)
VALUES('BU-02-01', 'Lambosacral', 'No', '0');

INSERT INTO PATHOLOGY(pbone_name, pathology_name, chronic, disease_length)
VALUES('BU-03-01', 'Lambosacral', 'No', '0');

INSERT INTO PATHOLOGY(pbone_name, pathology_name, chronic, disease_length)
VALUES('BU-04-01', 'Lambosacral', 'No', '0');

INSERT INTO PATHOLOGY(pbone_name, pathology_name, chronic, disease_length)
VALUES('BU-05-01', 'Lambosacral', 'No', '0');

INSERT INTO TRAUMA(tbone_name, trauma_type, trauma_time)
VALUES('BU-01-01', 'Gun Shot', 'Antimortem');

INSERT INTO TRAUMA(tbone_name, trauma_type, trauma_time)
VALUES('BU-01-02', 'Other', 'Antimortem');

INSERT INTO TRAUMA(tbone_name, trauma_type, trauma_time)
VALUES('BU-02-01', 'Sharp Force', 'Antimortem');

INSERT INTO TRAUMA(tbone_name, trauma_type, trauma_time)
VALUES('BU-03-01', 'Blunt Force', 'Antimortem');

INSERT INTO TRAUMA(tbone_name, trauma_type, trauma_time)
VALUES('BU-04-01', 'Sharp Force', 'Antimortem');

INSERT INTO TRAUMA(tbone_name, trauma_type, trauma_time)
VALUES('BU-05-01', 'Blunt Force', 'Antimortem');

INSERT INTO GENERIC(belongs_to_adult, gbone_name)
VALUES('No', 'BU-01-01');

INSERT INTO GENERIC(belongs_to_adult, gbone_name)
VALUES('Yes', 'BU-02-01');

INSERT INTO GENERIC(belongs_to_adult, gbone_name)
VALUES('Yes', 'BU-03-01');

INSERT INTO GENERIC(belongs_to_adult, gbone_name)
VALUES('Yes', 'BU-04-01');

INSERT INTO GENERIC(belongs_to_adult, gbone_name)
VALUES('Yes', 'BU-05-01');

INSERT INTO RECOVERED(if_recovered, rbone_name)
VALUES('Yes', 'BU-01-01');

INSERT INTO RECOVERED(if_recovered, rbone_name)
VALUES('Yes', 'BU-02-01');

INSERT INTO RECOVERED(if_recovered, rbone_name)
VALUES('Yes', 'BU-03-01');

INSERT INTO RECOVERED(if_recovered, rbone_name)
VALUES('Yes', 'BU-04-01');

INSERT INTO RECOVERED(if_recovered, rbone_name)
VALUES('Yes', 'BU-05-01');