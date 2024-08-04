CREATE TABLE CASEFILE (
	case_number				VARCHAR(20) NOT NULL PRIMARY KEY,
	date_opened				DATE NOT NULL,
	date_found				DATE NOT NULL,
	person_name_first		VARCHAR(25),
    person_name_middle		VARCHAR(25),
    person_name_last		VARCHAR(25),
	person_dob				DATE,
    person_ssn				NUMBER(9),
    person_stature_inches	DECIMAL(5,2),
    person_sex				VARCHAR(10) CHECK (person_sex IN ('Male','Female')),
    person_ancestry			VARCHAR(17) CHECK (person_ancestry IN ('WHITE','ASIAN','HISPANIC','AFRICAN','NATIVE AMERICAN')),
    location_found			VARCHAR(150) NOT NULL,
    location_zipcode		NUMBER(5) NOT NULL,
    location_city			VARCHAR(50) NOT NULL,
    location_county			VARCHAR(50) NOT NULL,
    environment				VARCHAR(20) NOT NULL CHECK (environment IN ('Clandestine Grave','Surface Scatter','Fire', 'House Fire', 'Car', 'Firepit', 'Mass Disaster', 'Other')),
    indoors					VARCHAR(5) NOT NULL CHECK (indoors IN ('Yes','No')),
    outdoors				VARCHAR(5) NOT NULL CHECK (outdoors IN ('Yes','No')),
    if_identified 			VARCHAR(5) NOT NULL CHECK (if_identified IN ('Yes','No')),
    resolved				VARCHAR(5) NOT NULL CHECK (resolved IN ('Yes','No')),
    era 					VARCHAR(15) NOT NULL CHECK (era IN ('Historic', 'Prehistoric','Modern')),
    clothes_found 			VARCHAR(255),
    body_orientation 		VARCHAR(50) NOT NULL,
    overall_decomposition 	VARCHAR(255) NOT NULL,
    to_maxwell				VARCHAR(5) NOT NULL CHECK (to_maxwell IN ('Yes','No')),
    person_age				NUMBER(4),
	CHECK (person_dob <= date_found)
	);

    
CREATE TABLE BONE (
	bcase_number 		VARCHAR(20) NOT NULL,
	bone_name       	VARCHAR(40) NOT NULL PRIMARY KEY,
    bone_type 			VARCHAR(10) NOT NULL CHECK (bone_type IN ('HEAD', 'LIMB', 'TORSO')),
    bone_subtype 		VARCHAR(15) NOT NULL CHECK (bone_subtype IN ('SKULL', 'TEETH', 'FOOT','CALF', 'THIGH', 'HAND','FOREARM', 'UPPER ARM', 'PELVIS','SPINE','RIBS')),
    bone_origin 		VARCHAR(10) NOT NULL CHECK (bone_origin IN ('RECOVERED', 'GENERIC')),
	measurement_kg		DECIMAL(5,2) NOT NULL,
    color 				VARCHAR(15),
    integrity 			NUMBER(1) NOT NULL,
    dna_sent 			VARCHAR(10) NOT NULL CHECK (dna_sent IN ('Yes','No')),
    dna_result 			VARCHAR(100),
    isotope_sent 		VARCHAR(10) NOT NULL CHECK (isotope_sent IN ('Yes','No')),
    isotope_result 		VARCHAR(100),
    
	FOREIGN KEY(bcase_number) REFERENCES CASEFILE(case_number)
	);
    
CREATE TABLE DAMAGE (
	da_bone_name   		VARCHAR(40) NOT NULL PRIMARY KEY,
	overall_severity    NUMBER(1) NOT NULL,
    
	FOREIGN KEY(da_bone_name) REFERENCES BONE(bone_name)
	);
    
CREATE TABLE DECOMPOSITION (
	de_bone_name 	VARCHAR(40) NOT NULL PRIMARY KEY,
	rodent 			NUMBER(1) NOT NULL,
	insect   		NUMBER(1) NOT NULL,
    carnivore 		NUMBER(1) NOT NULL,
    weathering 		VARCHAR(20) NOT NULL,
    
	FOREIGN KEY (de_bone_name) REFERENCES DAMAGE(da_bone_name)
	);
    
CREATE TABLE IMAGE (
	icase_number 	VARCHAR(20) NOT NULL PRIMARY KEY,
	image_name      VARCHAR(15) NOT NULL,
	body_area   	VARCHAR(15) NOT NULL,
    image_type 		VARCHAR(13) NOT NULL CHECK (image_type IN ('physical','jpg','png','pdf','Other')),
    
    FOREIGN KEY(icase_number) REFERENCES CASEFILE(case_number)
	);
    
CREATE TABLE METHOD (
	mbone_name 		VARCHAR(40) NOT NULL PRIMARY KEY,
	method_name     VARCHAR(15) NOT NULL,
	paper   		VARCHAR(255) NOT NULL,
    measure_type	VARCHAR(12) NOT NULL CHECK (measure_type IN ('Age','Sex','Ancestry','Stature')),
    measure_value 	VARCHAR(15) NOT NULL,
    
    FOREIGN KEY (mbone_name) REFERENCES BONE(bone_name)
	);
    
CREATE TABLE PATHOLOGY (
	pbone_name 		VARCHAR(40) NOT NULL PRIMARY KEY,
	pathology_name  VARCHAR(20) NOT NULL,
	chronic  	 	VARCHAR(5) NOT NULL CHECK (chronic IN ('Yes','No')),
    disease_length 	NUMBER(1) NOT NULL,
    
    FOREIGN KEY (pbone_name) REFERENCES DAMAGE(da_bone_name)
	);
    
CREATE TABLE TRAUMA (
	tbone_name 		VARCHAR(40) NOT NULL PRIMARY KEY,
	trauma_type     VARCHAR(15) NOT NULL CHECK (trauma_type IN ('Blunt Force','Sharp Force','Gun Shot','Other')),
	trauma_time   	VARCHAR(11) NOT NULL CHECK (trauma_time IN ('Antimortem','Perimortem')),
    
    FOREIGN KEY (tbone_name) REFERENCES DAMAGE(da_bone_name)
	);
    
CREATE TABLE GENERIC (
	gbone_name  			VARCHAR(40) NOT NULL PRIMARY KEY,
	belongs_to_adult        VARCHAR(5) NOT NULL CHECK (belongs_to_adult IN ('Yes','No')),
	
    FOREIGN KEY (gbone_name) REFERENCES BONE(bone_name)
	);

CREATE TABLE RECOVERED (
	rbone_name  			VARCHAR(40) NOT NULL PRIMARY KEY,
	if_recovered        	VARCHAR(5) NOT NULL CHECK (if_recovered IN ('Yes','No')),
	
    FOREIGN KEY (rbone_name) REFERENCES BONE(bone_name)
	);