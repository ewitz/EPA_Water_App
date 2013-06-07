-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 05, 2013 at 10:02 PM
-- Server version: 5.5.31
-- PHP Version: 5.4.6-1ubuntu1.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `EpaWater`
--

-- --------------------------------------------------------

--
-- Table structure for table `CCode`
--

CREATE TABLE IF NOT EXISTS `CCode` (
  `CType` varchar(12) NOT NULL,
  `CTypeDesc` text NOT NULL,
  PRIMARY KEY (`CType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CCode`
--

INSERT INTO `CCode` (`CType`, `CTypeDesc`) VALUES
('Arsenic', 'Arsenic'),
('CCR', 'Consumer Confidence Report Rule'),
('FBRR', 'Filter Backwash Recycle Rule'),
('GWR', 'Ground Water Rule'),
('I_LT1_ESWTR', 'Interim Enhanced Surface Water Treatment Rule and the LT1 (future) Enhanced SWTR'),
('LCR', 'Lead and Copper Rule'),
('LT2_ESWTR', 'LT2 (future) Enhanced SWTR'),
('Misc', 'Miscellaneous'),
('Nitrates', 'Nitrates'),
('Other_IOC', 'Other Inorganic Chemicals'),
('PN_rule', 'Public Notification Rule'),
('Rads', 'Radionuclides'),
('SOC', 'Ground Water Rule'),
('St1_DBP', 'Stage 1 Disinfectants By-Product Rule'),
('St2_DBP', 'Stage 2 Disinfectants By-Product Rule'),
('SWTR', 'Surface Water Treatment Rule'),
('TCR', 'Total Coliform Rule'),
('TTHM_pre-St1', 'TTHM Rule violations, which was replaced by the ST1 DBP Rule'),
('VOC', 'Other Volatile Organic Chemicals');

-- --------------------------------------------------------

--
-- Table structure for table `EnfActionType`
--

CREATE TABLE IF NOT EXISTS `EnfActionType` (
  `EnfAction` varchar(3) NOT NULL,
  `EnfDesc` text NOT NULL,
  PRIMARY KEY (`EnfAction`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EnfActionType`
--

INSERT INTO `EnfActionType` (`EnfAction`, `EnfDesc`) VALUES
('EF', 'CFP Consent Order/Decree with Penalty'),
('EF!', 'PAO Issued'),
('EF%', 'Federal Civil Case Concluded'),
('EF&', 'Federal Criminal Case Referred to DOJ'),
('EF/', 'Federal 1431 (Emergency) Order'),
('EF2', 'Referred for Higher Level Review'),
('EF9', 'Civil Case Referred to DOJ'),
('EF<', 'Federal CFP Issued'),
('EF=', 'Federal CFP Default Judgement'),
('EFG', 'Public Notification Issued'),
('EFH', 'Boil Water Order'),
('EFJ', 'Formal NOV Issued'),
('EFK', 'BCA Signed'),
('EFL', 'FAO Issued'),
('EFN', 'Show-cause Hearing'),
('EFQ', 'Civil Case Filed'),
('EFR', 'Consent Decree/Judgement'),
('EFS', 'Default Judgement'),
('EFT', 'Injunction'),
('EFU', 'Temporary Restraining Order/Preliminary Injunction'),
('EFV', 'Criminal Case Filed'),
('EFW', 'Criminal Case Concluded'),
('EIA', 'Violation/Reminder Notice'),
('EIB', 'Compliance Meeting Conducted'),
('EIC', 'Tech Assistance Visit'),
('EID', 'Site Visit (Enforcement)'),
('EIE', 'Public Notification Requested'),
('EIF', 'Public Notification Received'),
('EII', 'CCR Follow-up Notice'),
('EO+', 'No Additional Formal Action Needed'),
('EO0', 'No Longer Subject to Rule'),
('EO6', 'Intentional No-action'),
('EO7', 'Unresolved'),
('EO8', 'Other'),
('EOX', 'Compliance Achieved'),
('EOY', 'Variance/Exemption Issued'),
('EOZ', 'Turbidity Waiver Issued'),
('SF%', 'Civil Case Concluded'),
('SF&', 'Criminal Case Referred to AG'),
('SF2', 'Referred for Higher State Level Review'),
('SF3', 'Case Appealed'),
('SF4', 'Case Dropped'),
('SF5', 'Hook-up/Extension Ban'),
('SF9', 'Civil Case Referred to AG'),
('SFG', 'Public Notification IssuedCriminal Case Referred to AG'),
('SFH', 'Boil Water Order'),
('SFJ', 'Formal NOV Issued'),
('SFK', 'BCA Signed'),
('SFL', 'AO (without penalty) Issued'),
('SFM', 'Administrative Penalty Assessed'),
('SFN', 'Show-cause Hearing'),
('SFO', 'AO (with penalty) Issued'),
('SFP', 'Civil Case Under Development'),
('SFQ', 'Civil Case Filed'),
('SFR', 'Consent Decree/Judgement'),
('SFS', 'Default Judgement'),
('SFT', 'Injunction'),
('SFU', 'Temporary Restraining Order/Preliminary Injunction'),
('SFV', 'Criminal Case Filed'),
('SFW', 'Criminal Case Concluded'),
('SIA', 'Violation/Reminder Notice'),
('SIB', 'Compliance Meeting Conducted'),
('SIC', 'Tech Assistance Visit'),
('SID', 'Site Visit (Enforcement)'),
('SIE', 'Public Notification Requested'),
('SIF', 'Public Notification Received'),
('SII', 'CCR Follow-up Notice'),
('SO+', 'No Additional Formal Action Needed'),
('SO0', 'No Longer Subject to Rule'),
('SO6', 'Intentional No-action'),
('SO7', 'Unresolved'),
('SO8', 'Other'),
('SOX', 'Compliance Achieved'),
('SOY', 'Variance/Exemption Issued'),
('SOZ', 'State Turbidity Waiver Issued');

-- --------------------------------------------------------

--
-- Table structure for table `EPARegion`
--

CREATE TABLE IF NOT EXISTS `EPARegion` (
  `Region` varchar(5) NOT NULL,
  `RegionDesc` text NOT NULL,
  PRIMARY KEY (`Region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EPARegion`
--

INSERT INTO `EPARegion` (`Region`, `RegionDesc`) VALUES
('I', 'CT, ME, MA, NH, RI, VT'),
('II', 'NJ, NY, PR (Puerto Rico), VI (Virgin Islands)'),
('III', 'DE, DC, MD, PA, VA, WV'),
('IV', 'FL, FL, GA, KY, MS, NC, SC, TN'),
('IX', 'AZ, CA, HI, NV, AS (American Samoa), GU (Guam), MP (Northern Marianas Islands),  NN (Navajo Nation)'),
('V', 'IL, IN, MI, MN, OH, WI'),
('VI', 'AR, LA, NM, OK, TX'),
('VII', 'IA, KS, MO, NE'),
('VIII', 'CO, MT, ND, SD, UT, WY'),
('X', 'AK, ID, OR, WA');

-- --------------------------------------------------------

--
-- Table structure for table `GeographyType`
--

CREATE TABLE IF NOT EXISTS `GeographyType` (
  `Type` varchar(9) NOT NULL,
  `TypeDesc` text NOT NULL,
  PRIMARY KEY (`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GeographyType`
--

INSERT INTO `GeographyType` (`Type`, `TypeDesc`) VALUES
('State', ''),
('Territory', 'AS (Am. Samoa), GU (Guam), MP (N. Marianas Islands), PR (Puerto Rico),  VI (Virgin Islands)'),
('Tribal', 'NN (Navajo Nation) plus numeric states (01 to 10), which refer to tribal systems in that respective region.');

-- --------------------------------------------------------

--
-- Table structure for table `GwSw`
--

CREATE TABLE IF NOT EXISTS `GwSw` (
  `GwSw` varchar(2) NOT NULL,
  `GwSwDesc` text NOT NULL,
  PRIMARY KEY (`GwSw`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GwSw`
--

INSERT INTO `GwSw` (`GwSw`, `GwSwDesc`) VALUES
('Gw', 'includes GW and GWP'),
('Sw', 'includes SW, SWP, GU, GUP');

-- --------------------------------------------------------

--
-- Table structure for table `Owner`
--

CREATE TABLE IF NOT EXISTS `Owner` (
  `OwnVal` varchar(1) NOT NULL,
  `OwnDesc` text NOT NULL,
  PRIMARY KEY (`OwnVal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Owner`
--

INSERT INTO `Owner` (`OwnVal`, `OwnDesc`) VALUES
('?', 'not specified'),
('F', 'Federal government'),
('L', 'Local government'),
('M', 'Mixed public/private'),
('N', 'Native American'),
('P', 'Private'),
('S', 'State government');

-- --------------------------------------------------------

--
-- Table structure for table `PriSvcArea`
--

CREATE TABLE IF NOT EXISTS `PriSvcArea` (
  `PSA` varchar(2) NOT NULL,
  `PSADesc` text NOT NULL,
  PRIMARY KEY (`PSA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PriSvcArea`
--

INSERT INTO `PriSvcArea` (`PSA`, `PSADesc`) VALUES
('DC', 'Day_Care_Center'),
('DI', 'Dispenser'),
('HA', 'Homeowners_association'),
('HM', 'Hotel/motel'),
('HR', 'Highway_rest_area'),
('IA', 'Industrial/Agricultural'),
('IC', 'Interstate_carrier'),
('IN', 'Institution'),
('MF', 'Medical_facility'),
('MH', 'Mobile_home_park'),
('MP', 'Mobile_home_park--principal_residence'),
('MU', 'Municipality'),
('OA', 'Other_area'),
('ON', 'Other_non-transient_area'),
('OR', 'Other_residential_area'),
('OT', 'Other_transient_area'),
('PA', 'Recreation_area'),
('RA', 'Residential_area'),
('RE', 'Retail_employees'),
('RS', 'Restaurant'),
('SC', 'School'),
('SI', 'Sanitary_improvement_district'),
('SK', 'Summer_camp'),
('SR', 'Secondary_residences'),
('SS', 'Service_station'),
('SU', 'Subdivision'),
('WB', 'Water_bottler'),
('WH', 'Wholesaler_(sells_water)');

-- --------------------------------------------------------

--
-- Table structure for table `PSource`
--

CREATE TABLE IF NOT EXISTS `PSource` (
  `Psrc` varchar(3) NOT NULL,
  `PsrcDesc` text NOT NULL,
  PRIMARY KEY (`Psrc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PSource`
--

INSERT INTO `PSource` (`Psrc`, `PsrcDesc`) VALUES
('GU', 'ground water under the influence of surface water'),
('GUP', 'purchased ground water under the influence of surface water'),
('GW', 'ground water'),
('GWP', 'purchased ground water'),
('SW', 'surface water'),
('SWP', 'purchased surface water');

-- --------------------------------------------------------

--
-- Table structure for table `PWSActivity`
--

CREATE TABLE IF NOT EXISTS `PWSActivity` (
  `PWSCode` varchar(2) NOT NULL,
  `CodeDesc` text NOT NULL,
  PRIMARY KEY (`PWSCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PWSActivity`
--

INSERT INTO `PWSActivity` (`PWSCode`, `CodeDesc`) VALUES
('A', 'Active (no reported PWSDeactivationDate)'),
('I', 'Inactive (PWS Deactivation Date Present)'),
('M', 'Merged with another Water System'),
('N', 'System went from Public to Non-Public '),
('P', 'Potential Future Water System to be Regulated');

-- --------------------------------------------------------

--
-- Table structure for table `PWSType`
--

CREATE TABLE IF NOT EXISTS `PWSType` (
  `Type` varchar(6) NOT NULL,
  `TypeDesc` text NOT NULL,
  PRIMARY KEY (`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PWSType`
--

INSERT INTO `PWSType` (`Type`, `TypeDesc`) VALUES
('CWS', 'Community Water System'),
('NTNCWS', 'Non-Transient Non-Community Water System'),
('TNCWS', 'Transient Non-Community Water System');

-- --------------------------------------------------------

--
-- Table structure for table `SizeCat5`
--

CREATE TABLE IF NOT EXISTS `SizeCat5` (
  `SizeCat` varchar(12) NOT NULL,
  `SizeValue` text NOT NULL,
  PRIMARY KEY (`SizeCat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SizeCat5`
--

INSERT INTO `SizeCat5` (`SizeCat`, `SizeValue`) VALUES
('Large', '10,001-100,000'),
('Medium', '3,301-10,000'),
('Small', '501-3,300'),
('Very large', '>100,000'),
('Very small', '25-500');

-- --------------------------------------------------------

--
-- Table structure for table `SizeCat11`
--

CREATE TABLE IF NOT EXISTS `SizeCat11` (
  `SizeValue` varchar(19) NOT NULL,
  PRIMARY KEY (`SizeValue`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SizeCat11`
--

INSERT INTO `SizeCat11` (`SizeValue`) VALUES
('1,001-3,300'),
('10,001-50,000'),
('100,001-250,000'),
('101-500'),
('250,001-500,000'),
('3,301-10,000'),
('50,001-100,000'),
('500,001-1,000,000'),
('501-1,000'),
('<=100'),
('>1,000,000');

-- --------------------------------------------------------

--
-- Table structure for table `Status`
--

CREATE TABLE IF NOT EXISTS `Status` (
  `Status` varchar(6) NOT NULL,
  PRIMARY KEY (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Status`
--

INSERT INTO `Status` (`Status`) VALUES
('Active'),
('Closed');

-- --------------------------------------------------------

--
-- Table structure for table `VCodes`
--

CREATE TABLE IF NOT EXISTS `VCodes` (
  `VCode` int(11) NOT NULL,
  `VName` text NOT NULL,
  `VType` text NOT NULL,
  PRIMARY KEY (`VCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `VCodes`
--

INSERT INTO `VCodes` (`VCode`, `VName`, `VType`) VALUES
(1, 'MCL, Single Sample', 'MCL'),
(2, 'MCL, Average', 'MCL'),
(3, 'Monitoring, Regular', 'MR'),
(4, 'Monitoring, Check/Repeat/Confirmation', 'MR'),
(5, 'Notification, State', 'Other'),
(6, 'Notification, Public', 'Other'),
(7, 'Treatment Techniques', 'TT'),
(8, 'Variance/Exemption/Other Compliance ', 'Other'),
(9, 'Record Keeping', 'Other'),
(10, 'Operations Report', 'Other'),
(11, 'Non-Acute MRDL', 'MRDL'),
(12, 'Treatment Technique No Certif. Operator', 'TT'),
(13, 'Acute MRDL', 'MRDL'),
(20, 'Failure to Consult with State (GWR)', 'MCL'),
(21, 'MCL, Acute (TCR)', 'MCL'),
(22, 'MCL, Monthly (TCR)', 'MCL'),
(23, 'Monitoring, Routine Major (TCR)', 'MR'),
(24, 'Monitoring, Routine Minor (TCR)', 'MR'),
(25, 'Monitoring, Repeat Major (TCR)', 'MR'),
(26, 'Monitoring, Repeat Minor (TCR)', 'MR'),
(27, 'Monitoring and Reporting Stage 1', 'MR'),
(28, 'Sanitary Survey (TCR)', 'Other'),
(29, 'M&R Filter Profile/CPE Failure', 'MR'),
(30, 'Failure to Have Monitoring Plan (DBP2), M&R (Major/Minor - DBPR)', 'MR'),
(31, 'Monitoring (UNFILTERED), Routine/Repeat (SWTR-Unfilt and GWR-Unfiltered) - Major & Minor', 'MR'),
(32, 'Failure to submit source water monitoring plan (LT2/GWR) and Failure to conduct source water monitoring', 'MR'),
(33, 'Failure to submit Bin Determination Report', 'TT'),
(34, 'Source Monitoring, M&R (GWR)', 'MR'),
(35, 'Failure to Submit IDSE Report (DPB2)', 'MR'),
(36, 'Monitoring, Routine/Repeat (SWTR-Filter) - Major & Minor', 'MR'),
(37, 'Treatment Technique State Prior Approval', 'TT, except MR for 0800'),
(38, 'M&R Filter Turbidity Reporting', 'MR'),
(39, 'M&R (FBRR)', 'MR'),
(40, 'Treatment Technique (FBRR)', 'TT'),
(41, 'Failure to Maintain Microbial Treatment', 'TT'),
(42, 'Failure to Filter (SWTR)/ Failure to Provide Treatment (LT2)', 'TT'),
(43, 'Treatment Technique Exceeds Turb 1 NTU', 'TT'),
(44, 'Treatment Technique Exceeds Turb 0.3 NTU', 'TT'),
(45, 'Failure to Address Deficiency', 'TT'),
(46, 'Treatment Technique Precursor Removal', 'TT'),
(47, 'Treatment Technique Uncovered Reservoir', 'TT'),
(48, 'Failure to Address Contamination (GWR)', 'TT'),
(51, 'Initial Tap Sampling for Pb and Cu', 'MR'),
(52, 'Follow-up and Routine Tap Sampling', 'MR'),
(53, 'Initial Water Quality Parameter WQP M&R', 'MR'),
(56, 'Initial, Follow-up, or Routine SOWT M&R', 'MR'),
(57, 'OCCT Study Recommendation', 'TT'),
(58, 'OCCT Installation/Demonstration', 'TT'),
(59, 'WQP Entry Point Non-Compliance', 'TT'),
(63, 'MPL Non-Compliance', 'TT'),
(64, 'Lead Service Line Replacement (LSLR)', 'TT'),
(65, 'Public Education', 'TT'),
(66, 'Lead Consumer Notification', 'MR'),
(71, 'CCR Complete Failure to Report', 'Other'),
(72, 'CCR INADEQUATE REPORTING', 'Other'),
(73, 'Failure to Notify Other PWS (GWR)', 'Other'),
(75, 'PN Violation for NPDWR Violation', 'Other'),
(76, 'Other Non-NPDWR Potential Health Risks', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `VType`
--

CREATE TABLE IF NOT EXISTS `VType` (
  `VType` varchar(5) NOT NULL,
  `VTypeDesc` text NOT NULL,
  PRIMARY KEY (`VType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `VType`
--

INSERT INTO `VType` (`VType`, `VTypeDesc`) VALUES
('M/R', 'Monitoring or reporting violation'),
('MCL', 'Health-Based: Maximum Contaminant Level violation'),
('MRDL', 'Health-Based: Maximum Residual Disinfectant Level'),
('Other', 'Other violation, including public notice violation'),
('TT', 'Health-Based: Treatment Technique violation');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
