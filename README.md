Authors: Kunj Bhavsar, Anmol Singh Gill

Detailed version of the CDD can be found in the git repo with design and schemas. 

Here is the brief version of what this database contains and its about. 

For this database, our mini-world centers around the forensic anthropolo- gists and sta↵ that work at the state of New Mexico’s Office of the Medical Investigator (OMI) and the University of New Mexico’s Maxwell Museum of Anthropology (Museum). These anthropologists work to recover, identify, and examine remains that are reported all over the state of New Mexico.
Whether each case implies a crime or not, each subject is collected and clas- sified based on physiological and biological standards as well as environmen- tal factors like taphonomic indicators and trauma. In order to successfully perform their job, forensic anthropologists need a database they can use frequently and with efficiency when handling caseloads of several dozen or
more at a time.

Ultimately, the purpose of the database is to aggregate and organize the contents of all cases handled by the OMI and the Museum that require forensic anthropological analysis. This is not a database to store other information of the OMI’s or Museum’s information. Thus, the scope of the database is all forensic anthropology cases referred to the OMI and Museum. Not all death cases in the state of New Mexico will be stored, nor will any case from other states be contained within the database.

All information regarding an individual case will be stored within the database. This includes information about the person, describing the person’s char- acteristics (age, sex, bioaffinity, stature, and where the person is from), if the person is identified or not, and estimations of characteristics using the person’s remains. Each case also may contain photos or other forms of visu-
alizing a case, so photos and illustrations will also be included. Bone data is also contained - both an inventory of all bones in the human body and the bones found at the location. Additional bone-related information, such as the trauma su↵ered, any analysis performed using the bone (DNA or isotope sampling, pathological tests, methods used to estimate the characteristics
above). Taphonomic analysis is also to be contained in the database, which includes the date and location the remains were found, what kind of circum- stances the person was found in (inside an unmarked grave, for example) and conditions that a↵ected the remains (if there is noticeable fire damage, for example), the conditions of the remains themselves (including animal activity), any personal artifacts, and lab analysis for weathering, bleaching, or biological processes a↵ecting the state of the remains.

Users from both the OMI and Museum will have access to the contents of the database. Regardless of a given user’s affiliation, however, the dominant user group will be forensic anthropologists. Thus, the database will be built around the needs of forensic anthropologists. Other users may access the
database if needed, but such instances we anticipate being rare enough that the database need not worry about these outliers.
This document’s purpose is to explain the database in higher-level con- ceptual terms. It will discuss the overall design decisions and structure of the database, listing the di↵erent information and types of data that will be stored and their relationships to each other. Implementation of the database is not covered in this document.

The rest of this document proceeds as follows: Section 2 describes the notation used in the descriptions of each component of the database schema. Section 3 provides a comprehensive list of all entities, relationships, and at- tributes, the schema providing an illustration of the proposed database, and the integrity constraints required. Section 4 covers numerous anticipated queries the database will need to satisfy.
