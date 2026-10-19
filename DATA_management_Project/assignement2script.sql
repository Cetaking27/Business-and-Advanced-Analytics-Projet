-- ----------------------------------------------------------------------------------
/* 
QUESTION 1 :Insert at least 10 records into each table of the Hospital DBMS.
 Ensure that the data you populate reflects realistic and meaningful examples. 
 Each table’s data should serve to clarify the table’s purpose and its relationship with other tables.
*/
-- ----------------------------------------------------------------------------------

-- Let use our database by giving the command and dbname: 
USE `myhospitaldb` ;

-- first need to make sure there no data in the table to avoid duplicates entrie
DELETE FROM `myhospitaldb`.`Specialization`;
DELETE FROM `myhospitaldb`.`Doctor`;
DELETE FROM `myhospitaldb`.`patient`;
DELETE FROM `myhospitaldb`.`appointments`;
DELETE FROM `myhospitaldb`.`treatment`;
-- let  First insert 12 rows in specialization table according the table attribute requirements:
/*
CREATE TABLE IF NOT EXISTS `myhospitaldb`.`Specialization` (
  `specialization_ID` INT NOT NULL,
  `speciali_name` VARCHAR(45) NULL,
  `spec_Description` VARCHAR(45) NOT NULL,
  `Specialization_status` VARCHAR(45) NULL,
  PRIMARY KEY (`specialization_ID`))
ENGINE = InnoDB;
*/
INSERT INTO `myhospitaldb`.`Specialization`
	(`specialization_ID`, `speciali_name`, `spec_Description`, `Specialization_status`)
VALUES
	(1, 'Cardiology', 'Heart and cardiovascular care', 'Active'),
	(2, 'Dermatology', 'Skin health and conditions', 'Active'),
	(3, 'Neurology', 'Brain and nervous system care', 'Active'),
	(4, 'Pediatrics', 'Health care for children', 'Active'),
	(5, 'Orthopedics', 'Bone and joint care', 'Active'),
	(6, 'Ophthalmology', 'Eye care and vision', 'Active'),
	(7, 'Psychiatry', 'Mental health care', 'Active'),
	(8, 'Endocrinology', 'Hormone and metabolic care', 'Active'),
	(9, 'Pulmonology', 'Lung and respiratory care', 'Active'),
	(10, 'General Medicine', 'General health and primary care', 'Active'),
	(11, 'Urology', 'Urinary system care', 'Active'),
	(12, 'Nephrology', 'Kidney health care', 'Active');
    
-- Let also insert 16 rows in the Doctor table according the attribute requirements:
/*
DROP TABLE IF EXISTS `myhospitaldb`.`Doctor` ;

CREATE TABLE IF NOT EXISTS `myhospitaldb`.`Doctor` (
  `doctor_ID` INT NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `phone_number` INT NULL,
  `email` VARCHAR(45) NULL,
  `specialization_ID` INT NOT NULL,
  PRIMARY KEY (`doctor_ID`, `specialization_ID`),
  INDEX `fk_Doctor_Specialization1_idx` (`specialization_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Doctor_Specialization1`
    FOREIGN KEY (`specialization_ID`)
    REFERENCES `myhospitaldb`.`Specialization` (`specialization_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
*/
-- Before inserting i want to alter the phone column data type in VARCHAR(20) as i got error while inserting values
ALTER TABLE `myhospitaldb`.`Doctor` MODIFY COLUMN `phone_number` VARCHAR(20) NOT NULL;
INSERT INTO `myhospitaldb`.`doctor`
	(`doctor_ID`, `first_name`, `last_name`, `phone_number`, `email`, `specialization_ID`) 
VALUES
	(1, 'Amelia', 'Martin', 5550101, 'amelia.martin@example.com', 1),
	(2, 'Omar', 'Diallo', 5550102, 'omar.diallo@example.com', 2),
	(3, 'Sofia', 'Chen', 5550103, 'sofia.chen@example.com', 3),
	(4, 'Lucas', 'Wilson', 5550104, 'lucas.wilson@example.com', 4),
	(5, 'Aisha', 'Patel', 5550105, 'aisha.patel@example.com', 5),
	(6, 'Noah', 'Roy', 5550106, 'noah.roy@example.com', 6),
	(7, 'Emma', 'Brown', 5550107, 'emma.brown@example.com', 7),
	(8, 'Adam', 'Traore', 5550108, 'adam.traore@example.com', 8),
	(9, 'Maya', 'Singh', 5550109, 'maya.singh@example.com', 9),
	(10, 'Ethan', 'Clark', 5550110, 'ethan.clark@example.com', 10),
	(11, 'Isabelle', 'Scott', 5550111, 'isabelle.scott@example.com', 11),
	(12, 'Yusuf', 'Balde', 5550112, 'yusuf.balde@example.com', 12),
	(13, 'Nina', 'Evans', 5550113, 'nina.evans@example.com', 1),
	(14, 'Leo', 'Baker', 5550114, 'leo.baker@example.com', 4),
	(15, 'Zara', 'Ahmed', 5550115, 'zara.ahmed@example.com', 5),
	(16, 'Julien', 'Dubois', 5550116, 'julien.dubois@example.com', 10);
    
-- let insert 30 rows in the patients tables according to the variable datatype 
ALTER TABLE `myhospitaldb`.`patient` MODIFY COLUMN `phone_number` VARCHAR(20) NOT NULL;
INSERT INTO `myhospitaldb`.`patient`
	(`patient_ID`, `first_name`, `last_name`, `phone_number`, `email`, `address`, `Doctor_doctor_ID`) 
VALUES
	(1, 'Olivia', 'Taylor', 5550201, 'olivia.taylor@example.com', '21 King Street', 1),
	(2, 'Liam', 'Anderson', 5550202, 'liam.anderson@example.com', '73 Maple Street', 1),
	(3, 'Fatou', 'Camara', 5550203, 'fatou.camara@example.com', '80 Cedar Street', 1),
	(4, 'Gabriel', 'Thomas', 5550204, 'gabriel.thomas@example.com', '192 Cedar Street', 2),
	(5, 'Chloe', 'White', 5550205, 'chloe.white@example.com', '119 King Street', 3),
	(6, 'Ibrahim', 'Barry', 5550206, 'ibrahim.barry@example.com', '133 King Street', 4),
	(7, 'Sarah', 'Lee', 5550207, 'sarah.lee@example.com', '13 King Street', 5),
	(8, 'Daniel', 'Moore', 5550208, 'daniel.moore@example.com', '139 Maple Street', 6),
	(9, 'Grace', 'Walker', 5550209, 'grace.walker@example.com', '152 Maple Street', 7),
	(10, 'Samuel', 'King', 5550210, 'samuel.king@example.com', '194 King Street', 8),
	(11, 'Eva', 'Harris', 5550211, 'eva.harris@example.com', '30 King Street', 9),
	(12, 'Nathan', 'Robinson', 5550212, 'nathan.robinson@example.com', '160 King Street', 10),
	(13, 'Aminata', 'Diallo', 5550213, 'aminata.diallo@example.com', '39 Cedar Street', 11),
	(14, 'Louis', 'Richard', 5550214, 'louis.richard@example.com', '25 Maple Street', 12),
	(15, 'Mia', 'Thompson', 5550215, 'mia.thompson@example.com', '33 Maple Street', 13),
	(16, 'Issa', 'Keita', 5550216, 'issa.keita@example.com', '82 Maple Street', 14),
	(17, 'Rose', 'Campbell', 5550217, 'rose.campbell@example.com', '192 Maple Street', 15),
	(18, 'Alex', 'Mitchell', 5550218, 'alex.mitchell@example.com', '26 Maple Street', 16),
	(19, 'Lina', 'Robert', 5550219, 'lina.robert@example.com', '80 Maple Street', 1),
	(20, 'Jacob', 'Carter', 5550220, 'jacob.carter@example.com', '59 King Street', 2),
	(21, 'Sophie', 'Phillips', 5550221, 'sophie.phillips@example.com', '154 King Street', 3),
	(22, 'Mohamed', 'Bah', 5550222, 'mohamed.bah@example.com', '123 Cedar Street', 4),
	(23, 'Julia', 'Turner', 5550223, 'julia.turner@example.com', '75 King Street', 5),
	(24, 'Benjamin', 'Parker', 5550224, 'benjamin.parker@example.com', '36 Maple Street', 6),
	(25, 'Awa', 'Conde', 5550225, 'awa.conde@example.com', '79 Cedar Street', 7),
	(26, 'Thomas', 'Collins', 5550226, 'thomas.collins@example.com', '115 Maple Street', 8),
	(27, 'Leila', 'Stewart', 5550227, 'leila.stewart@example.com', '84 Cedar Street', 9),
	(28, 'William', 'Morris', 5550228, 'william.morris@example.com', '168 Cedar Street', 10),
	(29, 'Anna', 'Rogers', 5550229, 'anna.rogers@example.com', '101 Maple Street', 11),
	(30, 'Joseph', 'Reed', 5550230, 'joseph.reed@example.com', '66 King Street', 12);

-- Let insert 50 rows in the appointments tables according the requirements and datatype.
/*
CREATE TABLE IF NOT EXISTS `myhospitaldb`.`Appointments` (
  `appointment_ID` INT NOT NULL,
  `appoint_status` MEDIUMTEXT NULL,
  `date` DATE NOT NULL,
  `doctor_ID` INT NOT NULL,
  `patient_ID` INT NOT NULL,
  PRIMARY KEY (`appointment_ID`, `doctor_ID`, `patient_ID`),
  INDEX `fk_Appointments_Doctor1_idx` (`doctor_ID` ASC) VISIBLE,
  INDEX `fk_Appointments_Patient1_idx` (`patient_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Appointments_Doctor1`
    FOREIGN KEY (`doctor_ID`)
    REFERENCES `myhospitaldb`.`Doctor` (`doctor_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Appointments_Patient1`
    FOREIGN KEY (`patient_ID`)
    REFERENCES `myhospitaldb`.`Patient` (`patient_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
*/
INSERT INTO `myhospitaldb`.`appointments`
	(`appointment_ID`, `appoint_status`, `date`, `doctor_ID`, `patient_ID`) 
VALUES
	(1, 'Completed', '2026-09-01', 1, 1),
	(2, 'Completed', '2026-09-01', 1, 2),
	(3, 'Completed', '2026-09-01', 1, 3),
	(4, 'Completed', '2026-09-02', 2, 4),
	(5, 'Completed', '2026-09-03', 3, 5),
	(6, 'Completed', '2026-09-04', 4, 6),
	(7, 'Completed', '2026-09-05', 5, 7),
	(8, 'Completed', '2026-09-06', 6, 8),
	(9, 'Completed', '2026-09-07', 7, 9),
	(10, 'Completed', '2026-09-08', 8, 10),
	(11, 'Completed', '2026-09-09', 9, 11),
	(12, 'Completed', '2026-09-14', 10, 12),
	(13, 'Completed', '2026-09-12', 11, 13),
	(14, 'Completed', '2026-09-15', 12, 14),
	(15, 'Completed', '2026-09-01', 13, 15),
	(16, 'Completed', '2026-09-04', 14, 16),
	(17, 'Completed', '2026-09-05', 15, 17),
	(18, 'Completed', '2026-09-14', 16, 18),
	(19, 'Completed', '2026-09-01', 1, 19),
	(20, 'Completed', '2026-09-02', 2, 20),
	(21, 'Completed', '2026-09-03', 3, 21),
	(22, 'Completed', '2026-09-04', 4, 22),
	(23, 'Completed', '2026-09-05', 5, 23),
	(24, 'Completed', '2026-09-06', 6, 24),
	(25, 'Completed', '2026-09-07', 7, 25),
	(26, 'Completed', '2026-09-08', 8, 26),
	(27, 'Completed', '2026-09-02', 2, 1),
	(28, 'Completed', '2026-09-02', 2, 2),
	(29, 'Completed', '2026-09-02', 2, 3),
	(30, 'Completed', '2026-09-03', 3, 4),
	(31, 'Completed', '2026-09-04', 4, 5),
	(32, 'Completed', '2026-09-05', 5, 6),
	(33, 'Completed', '2026-09-06', 6, 7),
	(34, 'Completed', '2026-09-07', 7, 8),
	(35, 'Completed', '2026-09-08', 8, 9),
	(36, 'Completed', '2026-09-09', 9, 10),
	(37, 'Cancelled', '2026-10-12', 3, 5),
	(38, 'Cancelled', '2026-10-12', 10, 12),
	(39, 'Cancelled', '2026-10-12', 9, 27),
	(40, 'Cancelled', '2026-10-12', 10, 28),
	(41, 'Scheduled', '2026-11-01', 1, 1),
	(42, 'Scheduled', '2026-11-02', 1, 2),
	(43, 'Scheduled', '2026-11-06', 4, 6),
	(44, 'Scheduled', '2026-11-11', 9, 11),
	(45, 'Scheduled', '2026-11-16', 14, 16),
	(46, 'Scheduled', '2026-11-21', 3, 21),
	(47, 'Scheduled', '2026-11-27', 9, 27),
	(48, 'Scheduled', '2026-11-28', 10, 28),
	(49, 'Scheduled', '2026-11-29', 11, 29),
	(50, 'Scheduled', '2026-11-30', 12, 30);
    
-- Let insert 15 rows in the Treatment table also according to each variable data types.
/*
CREATE TABLE IF NOT EXISTS `myhospitaldb`.`Treatment` (
  `treatment_ID` INT NOT NULL,
  `treatment_name` VARCHAR(45) NULL,
  `treatment_description` MEDIUMTEXT NOT NULL,
  `treatment_Date` DATE NOT NULL,
  PRIMARY KEY (`treatment_ID`))
ENGINE = InnoDB;
*/
INSERT INTO `myhospitaldb`.`treatment`
	(`treatment_ID`, `treatment_name`, `treatment_description`, `treatment_Date`) 
VALUES
	(1, 'Cardiac monitoring', 'Cardiovascular monitoring and assessment.', '2026-09-01'),
	(2, 'Skin lesion cryotherapy', 'Treatment of an assessed skin lesion.', '2026-09-02'),
	(3, 'Migraine management', 'Management following neurological assessment.', '2026-09-03'),
	(4, 'Routine immunization', 'Immunization following pediatric assessment.', '2026-09-04'),
	(5, 'Joint rehabilitation', 'Supervised exercises for joint mobility.', '2026-09-05'),
	(6, 'Vision correction', 'Vision assessment and corrective care.', '2026-09-06'),
	(7, 'Counseling', 'Supportive mental health counseling.', '2026-09-07'),
	(8, 'Diabetes management', 'Support for blood glucose management.', '2026-09-08'),
	(9, 'Respiratory therapy', 'Respiratory care following assessment.', '2026-09-09'),
	(10, 'Wound dressing', 'Cleaning and dressing of a wound.', '2026-09-10'),
	(11, 'Digestive disorder management', 'Management following digestive assessment.', '2026-09-11'),
	(12, 'Urinary condition management', 'Management following urinary assessment.', '2026-09-12'),
	(13, 'Arthritis management', 'Management of inflammatory joint symptoms.', '2026-09-13'),
	(14, 'Ear irrigation', 'Ear care following clinical assessment.', '2026-09-14'),
	(15, 'Kidney function management', 'Care following kidney function assessment.', '2026-09-15');
    
-- let insert the connexion tables record accordingly to meet the requirement of these main tables
-- -- Treatment_has_Doctor up to 26 values in total
INSERT INTO `Treatment_has_Doctor` 
	(`Treatment_has_Doctor_ID`, `treatment_ID`, `Doctor_doctor_ID`) 
VALUES
	(1, 1, 1),
	(2, 1, 13),
	(3, 2, 2),
	(4, 3, 3),
	(5, 4, 4),
	(6, 4, 14),
	(7, 5, 5),
	(8, 5, 15),
	(9, 6, 6),
	(10, 7, 7),
	(11, 8, 8),
	(12, 9, 9),
	(13, 10, 10),
	(14, 10, 16),
	(15, 11, 10),
	(16, 11, 16),
	(17, 12, 11),
	(18, 13, 5),
	(19, 13, 15),
	(20, 14, 10),
	(21, 14, 16),
	(22, 15, 12),
	(23, 1, 10),
	(24, 1, 16),
	(25, 4, 10),
	(26, 4, 16);
    
-- Patient_has_Treatment will have 36 records in total to meet both tables requirements.
INSERT INTO `Patient_has_Treatment` 
	(`Patient_has_Treatment_ID`, `Patient_patient_ID`, `Treatment_treatment_ID`) 
VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 3, 1),
	(4, 4, 2),
	(5, 5, 3),
	(6, 6, 4),
	(7, 7, 5),
	(8, 8, 6),
	(9, 9, 7),
	(10, 10, 8),
	(11, 11, 9),
	(12, 12, 14),
	(13, 13, 12),
	(14, 14, 15),
	(15, 15, 1),
	(16, 16, 4),
	(17, 17, 5),
	(18, 18, 14),
	(19, 19, 1),
	(20, 20, 2),
	(21, 21, 3),
	(22, 22, 4),
	(23, 23, 5),
	(24, 24, 6),
	(25, 25, 7),
	(26, 26, 8),
	(27, 1, 2),
	(28, 2, 2),
	(29, 3, 2),
	(30, 4, 3),
	(31, 5, 4),
	(32, 6, 5),
	(33, 7, 6),
	(34, 8, 7),
	(35, 9, 8),
	(36, 10, 9);
    
-- let see the ouput :
SELECT * FROM `myhospitaldb`.`Specialization`;
 -- --------------------------------------------------------------------------------   
-- QUESTION 2:: Create 3 views derived from a combination of 1 or more tables.
-- ---------------------------------------------------------------------------------
--  let create the first view : to only fetch ALL doctor  with their specialization and patient related to them even if they dont have.
-- The view will combine : specialization , doctor and patient tables based on their relationship between them .
CREATE OR REPLACE VIEW Spec_Doctor_Patient AS
	SELECT 
		D.doctor_ID as Unique_ID,
		CONCAT(D.first_name, ' ', D.last_name) AS Doctor,
		CONCAT(P.first_name, ' ', P.last_name) AS Patient,
        S.speciali_name 
	FROM doctor AS D
    LEFT JOIN patient AS P 
    ON  P.Doctor_doctor_ID = D.doctor_ID
    LEFT JOIN specialization as S
    ON D.specialization_ID = S.specialization_ID;
    
-- let view the result
SELECT * FROM spec_doctor_patient;

-- Let create the second view that show a combination of doctor, patient an appointment.

CREATE OR REPLACE VIEW doct_pat_appointment AS
	SELECT P.patient_ID AS Identification,
    CONCAT(P.first_name, ' ', P.last_name) AS Patient,
    CONCAT(D.first_name, ' ', D.last_name) AS Doctor,
    A.appoint_status,
    A.date
    FROM patient AS P
    RIGHT JOIN doctor AS D
    ON D.doctor_ID = P.Doctor_doctor_ID 
    LEFT JOIN appointments as A
    ON P.patient_ID = A.patient_ID;
    
-- let show the results
SELECT * FROM doct_pat_appointment;

-- lastly let create a view that show only patient , their appointment history and which treatment
CREATE OR REPLACE VIEW patient_info AS
SELECT
    P.patient_ID AS Identification,
    CONCAT(P.first_name, ' ', P.last_name) AS Patient,
    P.phone_number,
    P.email,
    P.address,
    A.appoint_status,
    A.`date` AS Appointment_Date,
    T.treatment_name,
    T.treatment_description,
    T.treatment_Date,
    CONCAT(D.first_name, ' ', D.last_name) AS Doctor
FROM Patient AS P
LEFT JOIN Doctor AS D
    ON P.Doctor_doctor_ID = D.doctor_ID
LEFT JOIN Appointments AS A
    ON P.patient_ID = A.patient_ID
LEFT JOIN Patient_has_Treatment AS PT
    ON P.patient_ID = PT.Patient_patient_ID
LEFT JOIN Treatment AS T
    ON PT.Treatment_treatment_ID = T.treatment_ID;
    
-- let see the results.
SELECT * FROM patient_info;
    
-- -------------------------------------------------------------------------
/*
QUESTION 3. For each view, write 2 representative queries that will extract meaningful data from them. 
These queries should be composed of a mix of the different SQL statement learned in class.
*/
-- --------------------------------------------------------------------------
-- 1.  First query : Let find how many patients are assigned to each doctor
-- including doctors with no patients from highest to lowest patient count.
SELECT
    Unique_ID,
    Doctor,
    COUNT(Patient) AS Number_of_Patients
FROM Spec_doctor_patient
GROUP BY Unique_ID, Doctor
ORDER BY Number_of_Patients DESC;

-- 2. Let find Which doctors specialize in Cardiology, and who are their assigned patients and  
-- Sort then by doctor name, then patient name.
SELECT
    Doctor,
    Patient
FROM Spec_doctor_patient
WHERE speciali_name = 'Cardiology'
ORDER BY Doctor, Patient;

-- 3. Let find which patients have scheduled appointments after October 18, 2026 and
-- Display their names, assigned doctors, and appointment dates, ordered from earliest to latest.
SELECT
    Patient,
    Doctor,
    `date` AS Appointment_Date
FROM doct_pat_appointment
WHERE appoint_status = 'Scheduled'
  AND `date` > '2026-10-18'
ORDER BY `date` ASC;

-- 4. let find how many completed, cancelled, and scheduled appointments does each assigned doctor’s patient group have?
-- Exclude rows without an appointment.
SELECT
    Doctor,
    appoint_status,
    COUNT(*) AS Appointment_Count
FROM doct_pat_appointment
WHERE appoint_status IS NOT NULL
GROUP BY Doctor, appoint_status
ORDER BY Doctor, appoint_status;

-- 5. Let find Which patients have no treatment history? 
-- Display each patient’s ID, name, email, and assigned doctor only once.
SELECT DISTINCT
    Identification,
    Patient,
    email,
    Doctor
FROM patient_info
WHERE treatment_name IS NULL;

-- 6. How many distinct treatments has each patient received? 
-- Include patients with zero treatments and sort from highest to lowest treatment count.
SELECT
    Identification,
    Patient,
    COUNT(DISTINCT treatment_name) AS Number_of_Treatments
FROM patient_info
GROUP BY Identification, Patient
ORDER BY Number_of_Treatments DESC;

-- 7. let find how many patients are assigned to each docto and claissify the patient using : No patients: 0 patients, Light workload: 1–2 patients
-- Moderate workload: 3–4 patients, Heavy workload: 5 or more patients
SELECT
    Unique_ID,
    Doctor,
    COUNT(Patient) AS Number_of_Patients,
    CASE
        WHEN COUNT(Patient) = 0 THEN 'No patients'
        WHEN COUNT(Patient) BETWEEN 1 AND 2 THEN 'Light workload'
        WHEN COUNT(Patient) BETWEEN 3 AND 4 THEN 'Moderate workload'
        ELSE 'Heavy workload'
    END AS Workload_Category
FROM Spec_Doctor_Patient
GROUP BY Unique_ID, Doctor
ORDER BY Number_of_Patients DESC;
-- -----------------------------------------------------------------------------------------------
/*
QUESTION 5: Write 10 representative queries that involve joining at least 2 tables. 
These queries should demonstrate your ability to perform inner joins, cross joins, etc., 
to extract and combine relevant data from multiple tables.
*/
-- ------------------------------------------------------------------------------------------------
-- 1. Let Display each patient’s ID and full name alongside their assigned doctor’s full name. 
-- Sort by doctor name, then patient name.
SELECT 
	P.patient_ID,
    CONCAT(P.first_name, ' ', P.last_name) AS Patient_Full_name,
    CONCAT(D.first_name, ' ', D.last_name) AS Doctor_Full_name
FROM patient AS P
INNER JOIN doctor AS D
ON P.doctor_doctor_ID = D.doctor_ID
ORDER BY Doctor_Full_name, Patient_Full_name;

-- 2.Find all doctors specializing in Cardiology. Display their IDs, first and last names, emails, and specialization names.
SELECT 
	D.doctor_ID,
    D.first_name,
    D.last_name,
    D.email,
    S.speciali_name
FROM Doctor AS D
INNER JOIN specialization as S
ON D.specialization_ID = S.specialization_ID
WHERE speciali_name="Cardiology";

-- 3. Find doctors who have no assigned patients. Display their IDs and first and last names.
SELECT 
	D.doctor_id,
    D.first_name,
    D.last_name
FROM doctor as D
LEFT JOIN patient as P
ON D.doctor_ID = P.doctor_doctor_ID 
WHERE P.patient_ID iS NULL;

-- 4. let Display scheduled appointments after October 18, 2026, including the appointment ID, 
-- patient’s full name, **appointment doctor’s** full name, and date. Order from earliest to latest.
SELECT 
	A.appointment_ID,
	CONCAT(P.first_name, ' ', P.last_name) AS Patient_Full_name,
    CONCAT(D.first_name, ' ', D.last_name) AS Doctor_Full_name,
    A.date
FROM appointments AS A
INNER JOIN patient AS P
ON A.patient_ID = P.patient_ID
INNER JOIN doctor AS D
ON A.doctor_ID = D.doctor_ID
WHERE A.date > "2026-10-18"
ORDER BY A.date;

-- 5. Let Count the patients assigned to doctors in each specialization. 
-- Include specializations with zero patients and sort by patient count from highest to lowest.
SELECT
    S.specialization_ID,
    S.speciali_name,
    COUNT(P.patient_ID) AS patient_count
FROM Specialization AS S
LEFT JOIN Doctor AS D
    ON S.specialization_ID = D.specialization_ID
LEFT JOIN Patient AS P
    ON D.doctor_ID = P.Doctor_doctor_ID
GROUP BY S.specialization_ID, S.speciali_name
ORDER BY patient_count DESC;

-- 6. Display the IDs, full names, and emails of patients who have never received a treatment.
SELECT
    P.patient_ID,
    CONCAT(P.first_name,' ', P.last_name) AS Patient_Full_Name,
    P.email
FROM Patient AS P
LEFT JOIN Patient_has_Treatment AS PT
    ON P.patient_ID = PT.Patient_patient_ID
WHERE PT.Patient_has_Treatment_ID IS NULL;

-- 7. we are going to List each patient’s full name, treatment name, treatment description, and treatment date. 
-- Sort by patient name, then treatment date.
-- 7. Patient treatment history
SELECT
    CONCAT(P.first_name,' ', P.last_name) AS Patient_Full_Name,
    T.treatment_name,
    T.treatment_description,
    T.treatment_Date
FROM Patient AS P
INNER JOIN Patient_has_Treatment AS PT
    ON P.patient_ID = PT.Patient_patient_ID
INNER JOIN Treatment AS T
    ON PT.Treatment_treatment_ID = T.treatment_ID
ORDER BY Patient_Full_Name, T.treatment_Date;

-- 8. Let find treatments associated with at least two doctors. 
-- Display each treatment’s ID, name, and number of associated doctors.
SELECT
    T.treatment_ID,
    T.treatment_name,
    COUNT(DISTINCT TD.Doctor_doctor_ID) AS Number_of_Doctors
FROM Treatment AS T
INNER JOIN Treatment_has_Doctor AS TD
    ON T.treatment_ID = TD.treatment_ID
GROUP BY T.treatment_ID, T.treatment_name
HAVING COUNT(DISTINCT TD.Doctor_doctor_ID) >= 2
ORDER BY Number_of_Doctors DESC;

-- 9. Let generate every possible pairing of a doctor and a treatment. 
-- and Display the doctor’s ID and full name alongside the treatment’s ID and name. 
-- These are possible combinations, not recorded treatment associations.

SELECT
    D.doctor_ID,
    CONCAT(D.first_name, ' ', D.last_name) AS Doctor_Full_Name,
    T.treatment_ID,
    T.treatment_name
FROM Doctor AS D
CROSS JOIN Treatment AS T
ORDER BY D.doctor_ID, T.treatment_ID;


-- 10. let find appointments where the appointment doctor differs from the patient’s assigned doctor. 
-- and Display the patient’s full name, both doctors’ full names, appointment date, and status.
SELECT
    CONCAT(P.first_name, ' ', P.last_name) AS Patient_Full_Name,
    CONCAT(AD.first_name, ' ', AD.last_name) AS Assigned_Doctor,
    CONCAT(VD.first_name, ' ', VD.last_name) AS Appointment_Doctor,
    A.date AS Appointment_Date,
    A.appoint_status
FROM Appointments AS A
INNER JOIN Patient AS P
    ON A.patient_ID = P.patient_ID
INNER JOIN Doctor AS AD
    ON P.Doctor_doctor_ID = AD.doctor_ID
INNER JOIN Doctor AS VD
    ON A.doctor_ID = VD.doctor_ID
WHERE A.doctor_ID <> P.Doctor_doctor_ID
ORDER BY Appointment_Date, Patient_Full_Name;