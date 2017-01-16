-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.8-enterprise-commercial-advanced - MySQL Enterprise Server - Advanced Edition (Commercial)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for annabelletest
DROP DATABASE IF EXISTS `annabelletest`;
CREATE DATABASE IF NOT EXISTS `annabelletest` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `annabelletest`;


-- Dumping structure for table annabelletest.allergies
DROP TABLE IF EXISTS `allergies`;
CREATE TABLE IF NOT EXISTS `allergies` (
  `PatientId` varchar(50) DEFAULT NULL,
  `Allergy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table annabelletest.allergies: ~2 rows (approximately)
/*!40000 ALTER TABLE `allergies` DISABLE KEYS */;
REPLACE INTO `allergies` (`PatientId`, `Allergy`) VALUES
	('nandu', 'sdafs'),
	('nandu', 'esdgd');
/*!40000 ALTER TABLE `allergies` ENABLE KEYS */;


-- Dumping structure for table annabelletest.billingaddress
DROP TABLE IF EXISTS `billingaddress`;
CREATE TABLE IF NOT EXISTS `billingaddress` (
  `PatientId` varchar(50) NOT NULL,
  `Address1` varchar(100) NOT NULL,
  `Address2` varchar(100) DEFAULT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `ZipCode` varchar(50) NOT NULL,
  PRIMARY KEY (`PatientId`),
  CONSTRAINT `FK_billingaddress_patientlogin` FOREIGN KEY (`PatientId`) REFERENCES `patientlogin` (`PatientId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table annabelletest.billingaddress: ~2 rows (approximately)
/*!40000 ALTER TABLE `billingaddress` DISABLE KEYS */;
REPLACE INTO `billingaddress` (`PatientId`, `Address1`, `Address2`, `City`, `State`, `ZipCode`) VALUES
	('nandu', '46-Narayngsdfgsdf', '42-dfsgdsgfgdfsg', 'Dhule', 'Alabama', '4'),
	('Pramod', 'n', 'n', 'n', 'Maharashtra', '89');
/*!40000 ALTER TABLE `billingaddress` ENABLE KEYS */;


-- Dumping structure for table annabelletest.emergencycontacts
DROP TABLE IF EXISTS `emergencycontacts`;
CREATE TABLE IF NOT EXISTS `emergencycontacts` (
  `PatientId` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address1` varchar(100) NOT NULL,
  `Address2` varchar(100) DEFAULT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Zipcode` varchar(50) NOT NULL,
  `HomePhone` bigint(20) DEFAULT NULL,
  `CellPhone` bigint(20) DEFAULT NULL,
  `WorkPhone` bigint(20) DEFAULT NULL,
  `RelationshipToPatient` varchar(10) NOT NULL,
  KEY `FK__patientlogin` (`PatientId`),
  CONSTRAINT `FK__patientlogin` FOREIGN KEY (`PatientId`) REFERENCES `patientlogin` (`PatientId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table annabelletest.emergencycontacts: ~6 rows (approximately)
/*!40000 ALTER TABLE `emergencycontacts` DISABLE KEYS */;
REPLACE INTO `emergencycontacts` (`PatientId`, `Name`, `Address1`, `Address2`, `City`, `State`, `Zipcode`, `HomePhone`, `CellPhone`, `WorkPhone`, `RelationshipToPatient`) VALUES
	('Pramod', 'fg', 'n', 'n', 'n', 'Maharashtra', '89', 0, 0, 0, 'Mother'),
	('Pramod', 'g', 'n', 'n', 'n', 'Maharashtra', '89', 0, 0, 0, 'Mother'),
	('Pramod', '', '', '', '', 'Maharashtra', '', 0, 0, 0, 'Mother'),
	('nandu', 'Bhagwan Shankar Bide', '46-Narayan', '42-', 'Shirpur, Dhule', 'Maharashtra', '425 405234', 9730961106, 9404053998, 9745645664, 'Brother'),
	('nandu', 'Ishwar Shankar Bide', '46-Narayan', '42-', 'Shirpur, Dhule', 'Maharashtra', '425 ', 9134567890, 9134567890, 9134254789, 'Brother'),
	('nandu', 'Sita Shankar Bide', '46-Narayan', '42-', 'Shirpur, Dhule', 'Maharashtra', '425 405234', 9145567890, 9145567890, 9145567890, 'Sister');
/*!40000 ALTER TABLE `emergencycontacts` ENABLE KEYS */;


-- Dumping structure for table annabelletest.employerdetails
DROP TABLE IF EXISTS `employerdetails`;
CREATE TABLE IF NOT EXISTS `employerdetails` (
  `PatientId` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address1` varchar(50) NOT NULL,
  `Address2` varchar(50) DEFAULT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `ZipCode` varchar(50) NOT NULL,
  PRIMARY KEY (`PatientId`),
  CONSTRAINT `FK_employerdetails_patientlogin` FOREIGN KEY (`PatientId`) REFERENCES `patientlogin` (`PatientId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table annabelletest.employerdetails: ~2 rows (approximately)
/*!40000 ALTER TABLE `employerdetails` DISABLE KEYS */;
REPLACE INTO `employerdetails` (`PatientId`, `Name`, `Address1`, `Address2`, `City`, `State`, `ZipCode`) VALUES
	('nandu', 'Nandkumar Shankar Bide', 'Tulja Bhavani Nagar', 'Punesd', 'Puneklds', 'Maharashtra', '9898'),
	('Pramod', 'pra', 'fgf', 'dfg', 'fhf', 'Maharashtra', '98');
/*!40000 ALTER TABLE `employerdetails` ENABLE KEYS */;


-- Dumping structure for table annabelletest.familymedicalhistory
DROP TABLE IF EXISTS `familymedicalhistory`;
CREATE TABLE IF NOT EXISTS `familymedicalhistory` (
  `PatientId` varchar(50) DEFAULT NULL,
  `FamilyMember` varchar(50) DEFAULT NULL,
  `Disease` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table annabelletest.familymedicalhistory: ~66 rows (approximately)
/*!40000 ALTER TABLE `familymedicalhistory` DISABLE KEYS */;
REPLACE INTO `familymedicalhistory` (`PatientId`, `FamilyMember`, `Disease`) VALUES
	('nandu', 'Father', 'AAA'),
	('nandu', 'Father', 'ADHD'),
	('nandu', 'Father', 'Alcohol / Substance Abse'),
	('nandu', 'Father', 'Alcohol Dependent '),
	('nandu', 'Father', 'Allergies'),
	('nandu', 'Father', 'Alzheimer'),
	('nandu', 'Father', 'Anxiety'),
	('nandu', 'Father', 'Arthritis'),
	('nandu', 'Father', 'Asthma'),
	('nandu', 'Father', 'Atrial Fibrillation'),
	('nandu', 'Father', 'Back Pain, Chronic '),
	('nandu', 'Father', 'Bleeding Problems'),
	('nandu', 'Father', 'CAD'),
	('nandu', 'Father', 'Cancer'),
	('nandu', 'Father', 'Cancer-Breast'),
	('nandu', 'Father', 'Cancer-Colon'),
	('nandu', 'Father', 'Cancer-Prostate'),
	('nandu', 'Father', 'Concer-Skin'),
	('nandu', 'Father', 'Cancer-Thyroid'),
	('nandu', 'Father', 'CHF'),
	('nandu', 'Father', 'COPD'),
	('nandu', 'Father', 'Crohns Disease'),
	('nandu', 'Father', 'CVA'),
	('nandu', 'Father', 'Dementia'),
	('nandu', 'Father', 'Depression'),
	('nandu', 'Father', 'Diabetes'),
	('nandu', 'Father', 'Epilepsy'),
	('nandu', 'Father', 'Erectile Dysfunction'),
	('nandu', 'Father', 'Fibromyalgia'),
	('nandu', 'Father', 'Gout'),
	('nandu', 'Father', 'Head Consussion/ Injury'),
	('nandu', 'Father', 'Headches, Chronic'),
	('nandu', 'Father', 'High Cholestrol'),
	('nandu', 'Father', 'HTN'),
	('nandu', 'Father', 'HiperLipidemia'),
	('nandu', 'Father', 'Hyghperthyroidism'),
	('nandu', 'Father', 'Hypothyroidism'),
	('nandu', 'Father', 'IDDM'),
	('nandu', 'Father', 'Insomnia'),
	('nandu', 'Father', 'Irritable Bowel Syndrome'),
	('nandu', 'Father', 'MI'),
	('nandu', 'Father', 'NIDDM'),
	('nandu', 'Father', 'Obesity'),
	('nandu', 'Father', 'Osteoporosis'),
	('nandu', 'Father', 'PID'),
	('nandu', 'Father', 'Seizures'),
	('nandu', 'Father', 'Stroke'),
	('nandu', 'Father', 'Surgery , Appendectomy '),
	('nandu', 'Father', 'Surgery ,  By Pass'),
	('nandu', 'Father', 'Surgery , CABG'),
	('nandu', 'Father', 'Surgery , Cholecystectomy'),
	('nandu', 'Father', 'Surgery , Coronary Artery Bypass Grafting'),
	('nandu', 'Father', 'Surgery ,  Hysterctomy'),
	('nandu', 'Father', 'Surgery , Join Replacement'),
	('nandu', 'Father', 'Surgery , Mastectomy'),
	('nandu', 'Father', 'Surgery , Sinus Surery'),
	('nandu', 'Father', 'Surgery , Thyroidectomy'),
	('nandu', 'Father', 'Tyroid Condition'),
	('nandu', 'Father', 'TIA'),
	('nandu', 'Father', 'Tonsilitis'),
	('nandu', 'Father', 'Tuberculosis Exposure'),
	('nandu', 'Father', 'Ulcer'),
	('nandu', 'Father', 'Ulcers'),
	('nandu', 'Father', 'UTI, Chronic'),
	('nandu', 'Father', 'Vision Loss'),
	('nandu', 'Father', 'High Blood Pressure');
/*!40000 ALTER TABLE `familymedicalhistory` ENABLE KEYS */;


-- Dumping structure for table annabelletest.medications
DROP TABLE IF EXISTS `medications`;
CREATE TABLE IF NOT EXISTS `medications` (
  `PatientId` varchar(50) DEFAULT NULL,
  `Medication` varchar(200) DEFAULT NULL,
  `Stringth` varchar(200) DEFAULT NULL,
  `DoseFrom` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table annabelletest.medications: ~3 rows (approximately)
/*!40000 ALTER TABLE `medications` DISABLE KEYS */;
REPLACE INTO `medications` (`PatientId`, `Medication`, `Stringth`, `DoseFrom`) VALUES
	('nandu', 'Medication', 'Problem solving', 'Bhagwan Bide'),
	('nandu', 'fdkjl', 'kdsfjl', 'alksdjflk'),
	('nandu', 'dsfgdf', 'sdfgsdfg', 'sdfg');
/*!40000 ALTER TABLE `medications` ENABLE KEYS */;


-- Dumping structure for table annabelletest.patientdetails
DROP TABLE IF EXISTS `patientdetails`;
CREATE TABLE IF NOT EXISTS `patientdetails` (
  `PatientId` varchar(50) NOT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Race` int(11) NOT NULL,
  `Ethnicity` varchar(50) DEFAULT NULL,
  `PrefferedLanguage` varchar(50) DEFAULT NULL,
  `HomePhone` bigint(20) DEFAULT NULL,
  `CellPhone` bigint(20) DEFAULT NULL,
  `WorkPhone` bigint(20) DEFAULT NULL,
  `EmailID` varchar(50) DEFAULT NULL,
  `DirectAddress` varchar(50) DEFAULT NULL,
  `Inssurance` varchar(50) DEFAULT NULL,
  `HowHereAboutUs` varchar(50) DEFAULT NULL,
  `ReferingProviderName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PatientId`),
  CONSTRAINT `FK_patientdetails_patientlogin` FOREIGN KEY (`PatientId`) REFERENCES `patientlogin` (`PatientId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table annabelletest.patientdetails: ~2 rows (approximately)
/*!40000 ALTER TABLE `patientdetails` DISABLE KEYS */;
REPLACE INTO `patientdetails` (`PatientId`, `Gender`, `Race`, `Ethnicity`, `PrefferedLanguage`, `HomePhone`, `CellPhone`, `WorkPhone`, `EmailID`, `DirectAddress`, `Inssurance`, `HowHereAboutUs`, `ReferingProviderName`) VALUES
	('nandu', 'Male', 124, 'Indian', 'English', 9130232670, 9096376677, 9764793546, 'nandubide@gmail.com', 'sdfgdsgfggsdgdgsdfgdfsggd', ' World Health care Center', 'Google Search', ''),
	('Pramod', 'Male', 0, 'Indian', 'English', 0, 0, 0, 'nandubide@gmail.com', 'n', ' World Health care Center', 'Email from Hospital', 'dsaad');
/*!40000 ALTER TABLE `patientdetails` ENABLE KEYS */;


-- Dumping structure for table annabelletest.patientdisease
DROP TABLE IF EXISTS `patientdisease`;
CREATE TABLE IF NOT EXISTS `patientdisease` (
  `PatientId` varchar(10) NOT NULL,
  `AAA` varchar(10) DEFAULT NULL,
  `ADHD` varchar(10) DEFAULT NULL,
  `AlcoholSubstaceAbuse` varchar(10) DEFAULT NULL,
  `AlcoholDependent` varchar(10) DEFAULT NULL,
  `Allergies` varchar(10) DEFAULT NULL,
  `Alzheimer` varchar(10) DEFAULT NULL,
  `Anxiety` varchar(10) DEFAULT NULL,
  `Arthritis` varchar(10) DEFAULT NULL,
  `Asthma` varchar(10) DEFAULT NULL,
  `AtrialFibrillation` varchar(10) DEFAULT NULL,
  `BackPain` varchar(10) DEFAULT NULL,
  `BleedingProblems` varchar(10) DEFAULT NULL,
  `CAD` varchar(10) DEFAULT NULL,
  `Cancer` varchar(10) DEFAULT NULL,
  `CancerBreast` varchar(10) DEFAULT NULL,
  `CancerColon` varchar(10) DEFAULT NULL,
  `CancerProstate` varchar(10) DEFAULT NULL,
  `CancerSkin` varchar(10) DEFAULT NULL,
  `CancerThyroid` varchar(10) DEFAULT NULL,
  `CHF` varchar(10) DEFAULT NULL,
  `COPD` varchar(10) DEFAULT NULL,
  `CrohnsDisease` varchar(10) DEFAULT NULL,
  `CVA` varchar(10) DEFAULT NULL,
  `Dementia` varchar(10) DEFAULT NULL,
  `Depression` varchar(10) DEFAULT NULL,
  `Diabetes` varchar(10) DEFAULT NULL,
  `Epilepsy` varchar(10) DEFAULT NULL,
  `ErectileDysfunction` varchar(10) DEFAULT NULL,
  `Firomyalgia` varchar(10) DEFAULT NULL,
  `GIBleeding` varchar(10) DEFAULT NULL,
  `Gout` varchar(10) DEFAULT NULL,
  `HeadConcussion` varchar(10) DEFAULT NULL,
  `HeadachesChronic` varchar(10) DEFAULT NULL,
  `HearingLoss` varchar(10) DEFAULT NULL,
  `HeartAttack` varchar(10) DEFAULT NULL,
  `HeartDisease` varchar(10) DEFAULT NULL,
  `Heartburn` varchar(10) DEFAULT NULL,
  `HighCholestrol` varchar(10) DEFAULT NULL,
  `HTN` varchar(10) DEFAULT NULL,
  `Hyperlipidemia` varchar(10) DEFAULT NULL,
  `Hyperthyroidism` varchar(10) DEFAULT NULL,
  `Hypothyroidism` varchar(10) DEFAULT NULL,
  `IDDM` varchar(10) DEFAULT NULL,
  `Insomania` varchar(10) DEFAULT NULL,
  `IrritableBowel` varchar(10) DEFAULT NULL,
  `MI` varchar(10) DEFAULT NULL,
  `NIDDM` varchar(10) DEFAULT NULL,
  `Obesity` varchar(10) DEFAULT NULL,
  `Osteoporosis` varchar(10) DEFAULT NULL,
  `PID` varchar(10) DEFAULT NULL,
  `Reflux` varchar(10) DEFAULT NULL,
  `Seizures` varchar(10) DEFAULT NULL,
  `SickleCell` varchar(10) DEFAULT NULL,
  `Stroke` varchar(10) DEFAULT NULL,
  `SurgeryAppendectomy` varchar(10) DEFAULT NULL,
  `SurgeryBypass` varchar(10) DEFAULT NULL,
  `SurgeryCABG` varchar(10) DEFAULT NULL,
  `SurgeryCholecystectomy` varchar(10) DEFAULT NULL,
  `SurgeryCoronary` varchar(10) DEFAULT NULL,
  `SurgeryHystorctomy` varchar(10) DEFAULT NULL,
  `SurgeryJointReplacement` varchar(10) DEFAULT NULL,
  `SurgeryMastectomy` varchar(10) DEFAULT NULL,
  `SurgerySinus` varchar(10) DEFAULT NULL,
  `SurgeryThyroidectomy` varchar(10) DEFAULT NULL,
  `ThyroidCondition` varchar(10) DEFAULT NULL,
  `TIA` varchar(10) DEFAULT NULL,
  `Tonsilitis` varchar(10) DEFAULT NULL,
  `TuberculosisExposure` varchar(10) DEFAULT NULL,
  `Ulcer` varchar(10) DEFAULT NULL,
  `Ulcers` varchar(10) DEFAULT NULL,
  `UTIChronic` varchar(10) DEFAULT NULL,
  `VisionLoss` varchar(10) DEFAULT NULL,
  `HighBloodPressure` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`PatientId`),
  CONSTRAINT `FK_patientdisease_patientlogin` FOREIGN KEY (`PatientId`) REFERENCES `patientlogin` (`PatientId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table annabelletest.patientdisease: ~2 rows (approximately)
/*!40000 ALTER TABLE `patientdisease` DISABLE KEYS */;
REPLACE INTO `patientdisease` (`PatientId`, `AAA`, `ADHD`, `AlcoholSubstaceAbuse`, `AlcoholDependent`, `Allergies`, `Alzheimer`, `Anxiety`, `Arthritis`, `Asthma`, `AtrialFibrillation`, `BackPain`, `BleedingProblems`, `CAD`, `Cancer`, `CancerBreast`, `CancerColon`, `CancerProstate`, `CancerSkin`, `CancerThyroid`, `CHF`, `COPD`, `CrohnsDisease`, `CVA`, `Dementia`, `Depression`, `Diabetes`, `Epilepsy`, `ErectileDysfunction`, `Firomyalgia`, `GIBleeding`, `Gout`, `HeadConcussion`, `HeadachesChronic`, `HearingLoss`, `HeartAttack`, `HeartDisease`, `Heartburn`, `HighCholestrol`, `HTN`, `Hyperlipidemia`, `Hyperthyroidism`, `Hypothyroidism`, `IDDM`, `Insomania`, `IrritableBowel`, `MI`, `NIDDM`, `Obesity`, `Osteoporosis`, `PID`, `Reflux`, `Seizures`, `SickleCell`, `Stroke`, `SurgeryAppendectomy`, `SurgeryBypass`, `SurgeryCABG`, `SurgeryCholecystectomy`, `SurgeryCoronary`, `SurgeryHystorctomy`, `SurgeryJointReplacement`, `SurgeryMastectomy`, `SurgerySinus`, `SurgeryThyroidectomy`, `ThyroidCondition`, `TIA`, `Tonsilitis`, `TuberculosisExposure`, `Ulcer`, `Ulcers`, `UTIChronic`, `VisionLoss`, `HighBloodPressure`) VALUES
	('kunal', 'True', 'True', 'True', 'True', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False'),
	('nandu', 'False', 'True', 'True', 'True', 'True', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'False', 'True', 'True', 'True', 'True');
/*!40000 ALTER TABLE `patientdisease` ENABLE KEYS */;


-- Dumping structure for table annabelletest.patienthabits
DROP TABLE IF EXISTS `patienthabits`;
CREATE TABLE IF NOT EXISTS `patienthabits` (
  `PatientId` varchar(50) DEFAULT NULL,
  `SmokingStatus` varchar(50) DEFAULT NULL,
  `SmokingComments` varchar(50) DEFAULT NULL,
  `StartingSmokingDate` varchar(50) DEFAULT NULL,
  `QuitSmokingDate` varchar(50) DEFAULT NULL,
  `AverageDiet` varchar(50) DEFAULT NULL,
  `MilkUsage` varchar(50) DEFAULT NULL,
  `NumberOfOZ` varchar(50) DEFAULT NULL,
  `WaterUsage` varchar(50) DEFAULT NULL,
  `SleepingLocation` varchar(50) DEFAULT NULL,
  `SleepingFrequency` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table annabelletest.patienthabits: ~1 rows (approximately)
/*!40000 ALTER TABLE `patienthabits` DISABLE KEYS */;
REPLACE INTO `patienthabits` (`PatientId`, `SmokingStatus`, `SmokingComments`, `StartingSmokingDate`, `QuitSmokingDate`, `AverageDiet`, `MilkUsage`, `NumberOfOZ`, `WaterUsage`, `SleepingLocation`, `SleepingFrequency`) VALUES
	('nandu', 'Sometimes', 'sasfsdf', '13-11-2015', '13-11-2016', 'Spicy', 'Every Day', '4', 'Normal ', 'Bed', '4-6 Hours');
/*!40000 ALTER TABLE `patienthabits` ENABLE KEYS */;


-- Dumping structure for table annabelletest.patientlogin
DROP TABLE IF EXISTS `patientlogin`;
CREATE TABLE IF NOT EXISTS `patientlogin` (
  `PatientId` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`PatientId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table annabelletest.patientlogin: ~3 rows (approximately)
/*!40000 ALTER TABLE `patientlogin` DISABLE KEYS */;
REPLACE INTO `patientlogin` (`PatientId`, `Password`) VALUES
	('kunal', 'kunal'),
	('nandu', 'Nandkumar'),
	('Pramod', 'pramod');
/*!40000 ALTER TABLE `patientlogin` ENABLE KEYS */;


-- Dumping structure for table annabelletest.patientpersonaldetails
DROP TABLE IF EXISTS `patientpersonaldetails`;
CREATE TABLE IF NOT EXISTS `patientpersonaldetails` (
  `PatientId` varchar(50) DEFAULT NULL,
  `ParentMaritalStatus` varchar(50) DEFAULT NULL,
  `LivesWith` varchar(50) DEFAULT NULL,
  `Occupation` varchar(50) DEFAULT NULL,
  `Pets` varchar(50) DEFAULT NULL,
  `SmokeDetector` varchar(50) DEFAULT NULL,
  `SmokeExposure` varchar(50) DEFAULT NULL,
  `CODetector` varchar(50) DEFAULT NULL,
  `Activities` varchar(50) DEFAULT NULL,
  `BikeHelmateUsage` varchar(50) DEFAULT NULL,
  `SeatBeltUsage` varchar(50) DEFAULT NULL,
  `CarSeatUsage` varchar(50) DEFAULT NULL,
  `FirearmsPresent` varchar(50) DEFAULT NULL,
  `FirearmsSecured` varchar(50) DEFAULT NULL,
  `TypeOfDayCare` varchar(50) DEFAULT NULL,
  `DayCareDayPerWeek` varchar(50) DEFAULT NULL,
  `CurrentSchoolLevel` varchar(50) DEFAULT NULL,
  `AverageGrade` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table annabelletest.patientpersonaldetails: ~1 rows (approximately)
/*!40000 ALTER TABLE `patientpersonaldetails` DISABLE KEYS */;
REPLACE INTO `patientpersonaldetails` (`PatientId`, `ParentMaritalStatus`, `LivesWith`, `Occupation`, `Pets`, `SmokeDetector`, `SmokeExposure`, `CODetector`, `Activities`, `BikeHelmateUsage`, `SeatBeltUsage`, `CarSeatUsage`, `FirearmsPresent`, `FirearmsSecured`, `TypeOfDayCare`, `DayCareDayPerWeek`, `CurrentSchoolLevel`, `AverageGrade`) VALUES
	('nandu', 'Married ', 'Parents', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'ffffffffffffffffffffffffffffff', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', '2', 'PG', 'A+');
/*!40000 ALTER TABLE `patientpersonaldetails` ENABLE KEYS */;


-- Dumping structure for table annabelletest.pharmacies
DROP TABLE IF EXISTS `pharmacies`;
CREATE TABLE IF NOT EXISTS `pharmacies` (
  `PatientId` varchar(50) DEFAULT NULL,
  `Pharmacy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table annabelletest.pharmacies: ~2 rows (approximately)
/*!40000 ALTER TABLE `pharmacies` DISABLE KEYS */;
REPLACE INTO `pharmacies` (`PatientId`, `Pharmacy`) VALUES
	('nandu', 'sdafd'),
	('nandu', 'adfdafsd');
/*!40000 ALTER TABLE `pharmacies` ENABLE KEYS */;


-- Dumping structure for table annabelletest.physicaladdress
DROP TABLE IF EXISTS `physicaladdress`;
CREATE TABLE IF NOT EXISTS `physicaladdress` (
  `PatientId` varchar(50) NOT NULL,
  `Address1` varchar(100) DEFAULT NULL,
  `Address2` varchar(100) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `Zipcode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PatientId`),
  CONSTRAINT `FK_physicaladdress_patientlogin` FOREIGN KEY (`PatientId`) REFERENCES `patientlogin` (`PatientId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table annabelletest.physicaladdress: ~2 rows (approximately)
/*!40000 ALTER TABLE `physicaladdress` DISABLE KEYS */;
REPLACE INTO `physicaladdress` (`PatientId`, `Address1`, `Address2`, `City`, `State`, `Zipcode`) VALUES
	('nandu', '46-Narayan', '42-', 'Shirpur, Dhule', 'Maharashtra', '425 405234'),
	('Pramod', 'n', 'n', 'n', 'Maharashtra', '89');
/*!40000 ALTER TABLE `physicaladdress` ENABLE KEYS */;


-- Dumping structure for table annabelletest.surgery
DROP TABLE IF EXISTS `surgery`;
CREATE TABLE IF NOT EXISTS `surgery` (
  `PatientId` varchar(50) DEFAULT NULL,
  `YearOfSurgery` varchar(50) DEFAULT NULL,
  `Surgery` varchar(50) DEFAULT NULL,
  `LocationOfSurgery` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table annabelletest.surgery: ~4 rows (approximately)
/*!40000 ALTER TABLE `surgery` DISABLE KEYS */;
REPLACE INTO `surgery` (`PatientId`, `YearOfSurgery`, `Surgery`, `LocationOfSurgery`) VALUES
	('nandu', '1984', 'slkdjfks', 'Shirpur'),
	('nandu', '1983', 'jksdj', 'Pune'),
	('nandu', '', '', ''),
	('nandu', '1986', 'sdg', 'sdgfs');
/*!40000 ALTER TABLE `surgery` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
