-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2020 at 07:17 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mbc-se`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE IF NOT EXISTS `admin_details` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`sl_no`, `username`, `user_id`, `password`) VALUES
(1, 'Admin User', 'admin', 'admin123'),
(2, 'Test Admin', 'test', 'testadmin');

-- --------------------------------------------------------

--
-- Table structure for table `chemistry_questions`
--

CREATE TABLE IF NOT EXISTS `chemistry_questions` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(500) NOT NULL,
  `option1` varchar(50) NOT NULL,
  `option2` varchar(50) NOT NULL,
  `option3` varchar(50) NOT NULL,
  `option4` varchar(50) NOT NULL,
  `answer` varchar(10) NOT NULL,
  `difficulty` varchar(10) NOT NULL,
  `entered_by` varchar(20) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `chemistry_questions`
--

INSERT INTO `chemistry_questions` (`sl_no`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `difficulty`, `entered_by`) VALUES
(1, 'The nucleus of an atom consists of', 'electrons and neutrons', 'electrons and protons', 'protons and neutrons', 'All of the above', 'c', 'easy', 'Test_user'),
(2, 'The number of moles of solute present in 1 kg of a solvent is called its', 'molality', 'molarity', 'normality', 'formality', 'a', 'easy', 'Test_user'),
(3, 'The most electronegative element among the following is', 'sodium', 'bromine', 'fluorine', 'oxygen', 'c', 'easy', 'Test_user'),
(4, 'The metal used to recover copper from a solution of copper sulphate is', 'Na', 'Ag', 'Hg', 'Fe', 'd', 'average', 'Test_user'),
(5, 'The number of d-electrons in Fe2  (Z = 26) is not equal to that of', 'p-electrons in Ne(Z = 10)', 's-electrons in Mg(Z = 12)', 'd-electrons in Fe(Z = 26)', 'p-electrons in CI(Z = 17)', 'd', 'average', 'Test_user'),
(6, 'The metallurgical process in which a metal is obtained in a fused state is called', 'smelting', 'roasting', 'calcinations', 'froth floatation', 'a', 'average', 'Test_user'),
(7, 'The gas present in the stratosphere which filters out some of the sun''s ultraviolet light and provides an effective shield against radiation damage to living things is', 'oxygen', 'helium', 'ozone', 'methane', 'b', 'average', 'Test_user'),
(8, 'The most commonly used bleaching agent is', 'carbon dioxide', 'alcohol', 'chlorine', 'sodium chlorine', 'c', 'hard', 'Test_user'),
(9, 'The nucleus of a hydrogen atom consists of', '1 proton   2 neutron', '1 proton only', '1 neutron only', '1 electron only', 'a', 'hard', 'Test_user'),
(10, 'The heat required to raise the temperature of body by 1 K is called', 'thermal capacity', 'specific heat', 'water equivalent', 'None of the above', 'b', 'hard', 'Test_user'),
(11, 'Which of the following undergoes nucleophilic substitution exclusively by SN 1 mechanism?', 'Ethyl chloride', 'Benzyl chloride', 'Chlorobenzene', 'Isopropyl chloride', 'a', 'average', 'Test_user'),
(12, 'The increasing order of nucleophilicity would be', 'Iâ€“ < Clâ€“ < Brâ€“', 'Clâ€“ < Brâ€“ < Iâ€“', 'Brâ€“ < Clâ€“ < Fâ€“', 'Iâ€“ < Brâ€“ < Clâ€“', 'a', 'average', 'Test_user'),
(13, 'Which of the following is most reactive towards SN1 reaction?', 'C6H5CH2Br', 'C6H5C(CH3)C6H5Br', 'C6H5CH(C6H5)Br', 'C6H5CH(CH3)Br', 'a', 'average', 'Test_user'),
(14, 'The synthesis of alkyl fluoride is best accomplished by', 'Swartz reaction', 'Finkelstein reaction', 'Free radical fluorination', 'Sandmeyers reaction', 'b', 'average', 'Test_user'),
(15, 'Which of the following has ester linkages?', 'Bakelite', 'Nylon', 'Terylene', 'PVC', 'c', 'average', 'Test_user'),
(16, 'Which of the following is not soluble in NaHCO3?', 'Benzoic acid', '2, 4, 6-Trinitrophenol', 'o-Nitrophenol', 'Benzene sulphonic acid', 'c', 'average', 'Test_user'),
(17, 'The product formed by the reaction of an aldehyde with a primary amine is', 'Aromatic acid', 'Carboxylic acid', 'SchifTs base', 'Ketone', 'c', 'easy', 'Test_user'),
(18, 'The correct order of increasing acidic strength is ____________.', 'Ethanol < Phenol < Chloroacetic acid < Acetic acid', 'Phenol < Ethanol < Chloroacetic acid < Acetic acid', 'Ethanol < Phenol < Acetic acid < Chloroacetic acid', 'Chloroacetic acid < Acetic acid < Phenol < Ethanol', 'c', 'easy', 'Test_user'),
(19, 'The reagent with which both acetaldehyde and acetone react easily is', 'Grignardâ€™s reagent', 'Fehlingâ€™s reagent', 'Schiffâ€™s reagent', 'Tollenâ€™s reagent', 'b', 'easy', 'Test_user'),
(20, 'How many chiral compounds are possible on monochlorination of 2-methyl butane?', '4', '2', '6', '8', 'a', 'easy', 'Test_user'),
(21, 'Benzone acid is weaker than ____ but stronger than _____.', 'p-nitrobenzoic acid, p-toluic acid', 'p-toluic acid, o-toluic acid', 'acetic acid, formic acid', 'fomic acid, acetic acid', 'd', 'easy', 'Test_user'),
(22, 'Chloropicrin is formed by the reaction of', 'nitric acid on chlorobenzene.', 'steam on carbon tetrachloride.', 'chlorine on picric acid.', 'nitric acid on chloroform.', 'd', 'easy', 'Test_user'),
(23, 'Fitting reaction can be used to prepare', 'Acetophenon', 'Toluene', 'Diphenyl', 'Chlorobenzene', 'c', 'easy', 'Test_user'),
(24, 'The heating of phenyl methyl ether with HI produces', 'Phenol', 'Iodobenzene', 'Benzene', 'Ethyl chloride', 'b', 'hard', 'Test_user'),
(25, 'Monochlorination of toluene in sunlight followed by hydrolysis with aq. NaOH yields.', 'm-Cresol', 'o-Cresol', '2, 4-Dihydroxytoluene', 'Benzyl alcohol', 'a', 'hard', 'Test_user'),
(26, 'How many alcohols with molecular formula C4H10O are chiral in nature?', '2', '1', '3', '4', 'a', 'hard', 'Test_user'),
(27, 'CH3CH2OH can be converted into CH3CHO by:', 'treatment with LiAlH4', 'catalytic hydrogenation', 'treatment with pyridinium chlorochromate', 'treatment with KMnO4', 'c', 'hard', 'Test_user'),
(28, 'The correct order of boiling point of primary (1Â°), secondary (2Â°) and tertiary (3Â°) alcohols is', '3Â° > 2Â° > 1Â°', '1Â° > 2Â° > 3Â°', '2Â° > 1Â° > 3Â°', '2Â° > 3Â° > 1Â°', 'a', 'hard', 'Test_user'),
(29, 'Which of the following is thermosetting polymer', 'PVC', 'Neoprene', 'Nylon-6,6', 'Bakelite', 'd', 'hard', 'Test_user'),
(30, 'Caprolactum is used for preparation of', 'Nylon-6,6', 'Nylon-6', 'Nylon 6, 10', 'Nylon-2 â€“ Nylon-6', 'a', 'hard', 'Test_user');

-- --------------------------------------------------------

--
-- Table structure for table `gk_questions`
--

CREATE TABLE IF NOT EXISTS `gk_questions` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(300) NOT NULL,
  `option1` varchar(50) NOT NULL,
  `option2` varchar(50) NOT NULL,
  `option3` varchar(50) NOT NULL,
  `option4` varchar(50) NOT NULL,
  `answer` varchar(10) NOT NULL,
  `difficulty` varchar(10) NOT NULL,
  `entered_by` varchar(20) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `gk_questions`
--

INSERT INTO `gk_questions` (`sl_no`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `difficulty`, `entered_by`) VALUES
(1, 'Who Resigns as a President of The World Bank?', 'Kristalina Georgieva', 'Joaquim Levy', 'David Rubenstein', 'Jim Yong Kim', 'd', 'easy', 'Test_user'),
(2, 'Which country topped the Global Climate Risk Index 2020?', 'Japan', 'Philippines', 'Germany', 'Madagascar', 'b', 'easy', 'Test_user'),
(3, 'In which place the Indian Army has successfully test-fired two Spike long-range anti-tank missiles?', 'Pokhran, Rajasthan', 'Jodhpur, Rajasthan', 'Pune, Maharashtra', 'Mhow, Madhya Pradesh', 'd', 'easy', 'Test_user'),
(4, 'Which moon of Jupiter has been found to have the presence of water vapor?', 'Deimos', 'Europa', 'Ariel', 'Titania', 'a', 'average', 'Test_user'),
(5, 'Which of the following prize is given in the field of Medical Science?', 'Iqwal Samman', 'Vyas Samman', 'Homi Bhabha Award', 'Dhanwantari Award', 'd', 'average', 'Test_user'),
(6, 'Who is the Indian Air Force chief?', 'Birender Singh Dhanoa', 'S. Prabhakaran', 'Amit Dev', 'V. R. Chaudhari', 'b', 'average', 'Test_user'),
(7, 'In May 2019, India delivered a pair of Mi-24 attack helicopters to which country?', 'Bangladesh', 'Afghanistan', 'Nepal', 'Qatar', 'a', 'average', 'Test_user'),
(8, 'Who is called the beacon of light of Asia?', 'Subhash Chandra Bose', 'Mahatma Gandhi', 'Jawaharlal Nehru', 'Aurobindo Ghosh', 'c', 'hard', 'Test_user'),
(9, 'Bharat Ratna and Padma Vibhushan awards in India were instituted in the year', '1968', '1958', '1964', '1954', 'd', 'hard', 'Test_user'),
(10, 'Name the player who won the ''Player of the Tournament'' award in ICC Cricket World Cup 2019', 'Kane Williamson', 'Rohit Sharma ', 'Shakib Al Hasan', 'Jaspreet Bumrah', 'b', 'hard', 'Test_user'),
(11, 'Which of the following personalities gave â€˜The Laws of Heredityâ€™?   ', 'G.J. Mendel', 'Robert Hook ', 'Charles Darwin', 'William Harvey', 'b', 'easy', 'Test_user'),
(12, 'Name the person who was also known as Deshbandhu.  ', 'G.K. Gokhale', 'S. Radhakrishnan', 'Chittaranjan Das', 'Madan Mohan Malviya', 'c', 'easy', 'Test_user'),
(13, 'Which of the following is NOT the language enshrined in the eighth schedule of the Indian Constitution, as the language of the state?', 'Kashmiri', 'Nepali', 'English', 'Konkani', 'c', 'easy', 'Test_user'),
(14, 'The capital of Uttarakhand is', 'Dehradun', 'Masoorie', 'Nainital', 'None of these', 'b', 'easy', 'Test_user'),
(15, 'Geet Govind is a famous creation of', 'Kalidas', 'Bana Bhatt', 'Jayadev', 'Bharat Muni', 'c', 'easy', 'Test_user'),
(16, 'Which of the following represents the Finance Commissions that have been set-up so far?', '11', '10', '12', '13', 'd', 'easy', 'Test_user'),
(17, 'World Trade Organization came into existence in', '1993', '1992', '1994', '1995', 'd', 'easy', 'Test_user'),
(18, 'According to the Constitution of India, which of the following is NOT one of the main organs of the Government?', 'Bureaucracy', 'Legislature', 'Executive', 'Judiciary', 'b', 'average', 'Test_user'),
(19, 'In which year did the Cabinet Mission arrived in India?', '1943', '1942', '1945', '1946', 'd', 'average', 'Test_user'),
(20, 'Panchayati Raj comes under', 'Concurrent list', 'Residual list', 'State list', 'Union list', 'c', 'average', 'Test_user'),
(21, 'Mein Kampf is authored by', 'Karl Marx', 'Napoleon Bonaparte', 'Adolf Hitler', 'Benito Mussolini', 'c', 'average', 'Test_user'),
(22, 'Which of the following is the largest and the deepest ocean of the world?', 'Atlantic', 'Arctic', 'Pacific', 'Indian', 'c', 'average', 'Test_user'),
(23, 'Which Indian state has the least literacy rate?', 'Rajasthan', 'Bihar', 'Arunachal Pradesh', 'Orissa', 'a', 'average', 'Test_user'),
(24, 'SAARC was formed in', '1984', '1982', '1985', '1986', 'c', 'hard', 'Test_user'),
(25, 'Which of the following is not a member of the European Union?', 'Finland', 'Greece', 'Norway', 'United Kingdom', 'c', 'hard', 'Test_user'),
(26, 'Who became the Vice-President of India in 2017?', 'Shri Vivekanand Sharma', 'Shri Venkaiah Naidu ', 'Shri N.N. Giri', 'Shri Mahadevi Verma', 'a', 'hard', 'Test_user'),
(27, 'Topographical map of India is approved by', 'Geographical Survey of India', 'Archaeological Survey of India', 'Surveyor General of India', 'None of these', 'c', 'hard', 'Test_user'),
(28, 'This country is known as the Sugar Bowl of the World, Identify it from the given options.', 'Cuba', 'Brazil', 'Mexico', 'Algeria', 'b', 'hard', 'Test_user'),
(29, 'Who is the ex-officio chairman of the Planning Commission of India?', 'Finance Minister of India', 'President of India', 'Prime Minister of India', 'Vice-President of India', 'c', 'hard', 'Test_user'),
(30, 'National Science Day is observed on', 'February 28', 'January 4', 'March 11', 'August 5', 'd', 'hard', 'Test_user');

-- --------------------------------------------------------

--
-- Table structure for table `maths_questions`
--

CREATE TABLE IF NOT EXISTS `maths_questions` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(300) NOT NULL,
  `option1` varchar(50) NOT NULL,
  `option2` varchar(50) NOT NULL,
  `option3` varchar(50) NOT NULL,
  `option4` varchar(50) NOT NULL,
  `answer` varchar(10) NOT NULL,
  `difficulty` varchar(10) NOT NULL,
  `entered_by` varchar(20) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `maths_questions`
--

INSERT INTO `maths_questions` (`sl_no`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `difficulty`, `entered_by`) VALUES
(1, ' I am a number. I have 7 in the ones place. I am less than 80 but greater than 70. What is my number?', '73', '71', '75', '77', 'd', 'easy', 'Test_user'),
(2, ' (9321   5406   1001) Ã· (498   929   660) =', '4.5', '3.5', '16.5', '7.5', 'd', 'average', 'Test_user'),
(3, 'If 6 is 50% of a number, what is the number?', '11', '10', '12', '13', 'c', 'easy', 'Test_user'),
(4, 'The quotient in a division sum is 403. The divisor is 100 and the remainder is 58. The dividend is', '34058', '40458', '43058', '40358', 'd', 'hard', 'Test_user'),
(5, 'Which least number should be added to 2600 to make it a perfect square?', '39', '3', '1', '5', 'c', 'average', 'Test_user'),
(6, 'How many months are equal to 45 days?', '1 Â¼ months', '1 Â½ months', 'Â¼ months', '2 Â¼ months', 'a', 'average', 'Test_user'),
(7, 'How much water is added to 750 g milk to get a 1-kilogram mixture of liquid?', '0.25 kg', '2.5 kg', '20.5 kg', '25.0 kg', 'b', 'hard', 'Test_user'),
(8, 'If 5 boys take 7 hours to pack 35 cartoons, then how many boys can pack 65 cartoons in 3 hours?', '39', '26', '45', 'None of these', 'd', 'hard', 'Test_user'),
(9, 'The value of 1.07 Ã— 65   1.07 Ã— 26   1.07 Ã— 9 is', '10.7', '10.73', '10.70', '107', 'd', 'average', 'Test_user'),
(10, 'What is 121 times 11?', '1313', '1331', '1133', '3131', 'a', 'easy', 'Test_user'),
(11, 'The total revenue in â‚¹ received from the sale of x units of an article is given by R(x) = 3xÂ²   36x   5. The marginal revenue when x = 15 is (in â‚¹ )', '116', '126', '96', '90', 'a', 'hard', 'Test_user'),
(12, 'The side of an equilateral triangle is increasing at the rate of 2 cm/s. The rate at which area increases when the side is 10 is', 'âˆš3 cmÂ²/s', '10 cmÂ²/s', '10âˆš3 cmÂ²/s', '10/3 cmÂ²/s', 'c', 'hard', 'Test_user'),
(13, 'The point(s) on the curve y = xÂ², at which y-coordinate is changing six times as fast as x-coordinate is/are', '(3, 9)', '(2, 4)', '(3, 9), (9, 3)', '(6, 2)', 'b', 'hard', 'Test_user'),
(14, 'The equation of the normal to the curve y = sin x at (0, 0) is', 'y = 0', 'x = 0', 'x   y = 0', 'x â€“ y = 0', 'c', 'hard', 'Test_user'),
(15, 'The line y = x   1 is a tangent to the curve y2 = 4x at the point', '(1, 2)', '(-1, 2)', '(1, -2)', '(2, 1)', 'b', 'hard', 'Test_user'),
(16, 'If the curves ay   x2 = 7 and x3 = y cut orthogonally at (1,1), then the value of a is', '0', '1', '-6', '6', 'd', 'hard', 'Test_user'),
(17, 'The distance of point (2, 5, 7) from the x-axis is', 'âˆš74', '2', 'âˆš29', 'âˆš53', 'b', 'hard', 'Test_user'),
(18, 'The equations of y-axis in space are', 'x = 0, z = 0', 'x = 0, y = 0', 'y = 0, z = 0', 'y = 0', 'b', 'easy', 'Test_user'),
(19, 'Feasible region is the set of points which satisfy', 'some of the given constraints', 'the objective functions', 'all of the given constraints', 'none of these', 'c', 'easy', 'Test_user'),
(20, 'Three balls are drawn from a bag containing 2 red and 5 black balls, if the random variable X represents the number of red balls drawn, then X can take values', '0, 1, 2,3', '0, 1, 2', '0', '1,2', 'a', 'easy', 'Test_user'),
(21, 'Area bounded by the curve y = sin x and the x-axis between x = 0 and x = 2Ï€ is', '0 sq units', '2 sq units', '3 sq units', '4 sq units', 'a', 'easy', 'Test_user'),
(22, 'The absolute maximum value of y = x3 â€“ 3x   2 in 0 â‰¤ x â‰¤ 2 is', '6', '4', '2', '0', 'a', 'easy', 'Test_user'),
(23, 'Let A and B be two given independent events such that P(A) =p and P(B) = q and P(exactly one of A, B) = 2/3, then value of 3p   3q â€“ 6pq is', '-2', '2', '4', '-4', 'a', 'easy', 'Test_user'),
(24, ' If P(A âˆ© B) = 70% and P(B) = 85%, then P(A/B) is equal to', '17/20', '14/17', '7/8', '1/8', 'a', 'easy', 'Test_user'),
(25, 'Two dice are thrown once. If it is known that the sum of the numbers on the dice was less than 6 the probability of getting a sum 3 is', '5/18', '1/18', '2/5', '1/5', 'd', 'average', 'Test_user'),
(26, 'âˆ«cotÂ²x dx equals to', 'cot x   x   C', 'cot x â€“ x   C', '-cot x   x   C', '-cot x â€“ x   C', 'd', 'average', 'Test_user'),
(27, 'If âˆ«secÂ²(7 â€“ 4x)dx = a tan (7 â€“ 4x)   C, then value of a is', '4', '7', '-3', '-1/4', 'd', 'average', 'Test_user'),
(28, 'The cross product of two parallel vectors is ?', '1', '0', 'parallel', 'perpendicular', 'a', 'average', 'Test_user'),
(29, 'The differentiation of sinx with respect to cosx is ?', '-tanx', 'tanx', 'cotx', '-cotx', 'd', 'average', 'Test_user'),
(30, 'Write the distance of the point (3, â€“ 5, 12) from the x-axis.', '11 units', '9 units', '13 units', '12 units', 'c', 'average', 'Test_user');

-- --------------------------------------------------------

--
-- Table structure for table `physics_questions`
--

CREATE TABLE IF NOT EXISTS `physics_questions` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) NOT NULL,
  `option1` varchar(50) NOT NULL,
  `option2` varchar(50) NOT NULL,
  `option3` varchar(50) NOT NULL,
  `option4` varchar(50) NOT NULL,
  `answer` varchar(10) NOT NULL,
  `difficulty` varchar(10) NOT NULL,
  `entered_by` varchar(20) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `physics_questions`
--

INSERT INTO `physics_questions` (`sl_no`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `difficulty`, `entered_by`) VALUES
(1, 'The absorption of ink by blotting paper involves', 'viscosity of ink', 'capillary action phenomenon', 'diffusion of ink through the blotting', 'siphon action', 'b', 'easy', 'big_admin'),
(2, 'Nuclear sizes are expressed in a unit named', 'fermi', 'angstrom', 'newton', 'tesla', 'a', 'easy', 'Test_user'),
(3, 'Light year is a unit of', 'time', 'distance', 'light', 'intensity of light', 'b', 'easy', 'big_admin'),
(4, 'Light from the Sun reaches us in nearly', '2 minutes', '4 minutes', '8 minutes', '16 minutes', 'c', 'average', 'Test_user'),
(5, 'Pa(Pascal) is the unit for', 'thrust', 'pressure', 'frequency', 'conductivity', 'b', 'average', 'Test_user'),
(6, 'Let a thin capillary tube be replaced with another tube of insufficient length then, we find water', 'will overflow', 'depressed', 'change its meniscus', 'will not rise', 'd', 'average', 'big_admin'),
(7, 'Pick out the scalar quantity', 'pressure', 'force', 'velocity', 'acceleration', 'a', 'average', 'big_admin'),
(8, 'out of the following, which is not emitted by radioactive substance?', 'Electrons', 'Electromagnetic radiations', 'Alpha particles', 'Neutrons', 'd', 'hard', 'Test_user'),
(9, 'Sound waves in air are', 'transverse', 'longitudinal', 'electromagnetic', 'polarised', 'b', 'hard', 'Test_user'),
(10, 'Magnetism at the centre of a bar magnet is', 'minimum', 'maximum', 'zero', 'minimum or maximum', 'c', 'hard', 'Test_user'),
(11, 'The dimension of magnetic field in M, L, T and C (Coulomb) is given as:', 'MT2Câˆ’2', 'MLTâˆ’1Câˆ’1', 'MTâˆ’1Câˆ’1', 'MTâˆ’2Câˆ’1', 'c', 'hard', 'Test_user'),
(12, 'Consider a uniform square plate of side â€˜aâ€™ and mass â€˜mâ€™. The moment of inertia of this plate about an axis perpendicular to its plane and passing through one of its corners is:', '2/3 ma2', '3/4 ma2', '4/6 ma2', '1/5 ma2', 'b', 'hard', 'Test_user'),
(14, 'An experiment is performed to find the refractive index of glass using a travelling microscope. In this experiment distance are measured by:', 'a standard laboratory scale', 'a vernier scale provided on the microscope', 'a meter scale provided on the microscope', 'a screw gauage provided on the microscope', 'a', 'hard', 'Test_user'),
(15, 'A bomb of mass 16 kg at rest explodes into two pieces of masses of 4 kg and 12 kg. The velocity of the 12 kg mass is 4 msâˆ’1. The kinetic energy of the other mass is:', '144 J', '96 J', '288 J', '192 J', 'c', 'hard', 'Test_user'),
(16, 'A particle of mass 100 g is thrown vertically upwards with a speed of 5 m/s. the work done by the force of gravity during the time the particle goes up is:', '-0.5 J', '0.5 J', '-1.25 J', '1.25 J', 'c', 'hard', 'Test_user'),
(17, 'The maximum velocity of a particle, executing simple harmonic motion with an amplitude 7 mm, is 4.4 m/s. The period of oscillation is:', '0.01 s', '100 s', '10 s', '0.1 s', 'b', 'average', 'Test_user'),
(18, 'The current I drawn from the 5 volt source will be', '0.33 A', '0.17 A', '0.5 A', '0.67 A', 'c', 'hard', 'Test_user'),
(19, 'Needles N1, N2 and N3 are made of a ferromagnetic, a paramagnetic and a diamagnetic substance respectively. A magnet when brought close to them will:', 'attract N1 and N2 strongly but repel N3', 'attract all three of them', 'attract N1 strongly, N2 weakly and repel N3 weakly', 'attract N1 strongly, but repel N2 and N3 weakly', 'c', 'hard', 'Test_user'),
(20, 'A thermocouple is made from two metals, Antimony and Bismuth. If one junction of the couple is kept hot and the other is kept cold then, an electric current will:', 'flow from Antimony to Bismuth at the hot junction', 'flow from Antimony to Bismuth at the cold junction', 'flow from Bismuth to Antimony at the cold junction', 'not flow through the thermocouple', 'a', 'easy', 'Test_user'),
(22, 'Stars which appear single to the naked eye but are double when seen through a telescope are:', 'binaries', 'novas and supernovas', 'asteroids', 'quasars', 'b', 'easy', 'Test_user'),
(23, 'Lux is the SI unit of:', 'luminous efficiency', 'intensity of illumination', 'luminous flux', 'luminous intensity', 'a', 'easy', 'Test_user'),
(24, 'Sound of frequency below 20 Hz is called:', 'infrasonic', 'audio sounds', 'ultrasonic', 'supersonics', 'b', 'easy', 'Test_user'),
(25, 'Pa(Pascal) is the unit for:', 'pressure', 'thrust', 'frequency', 'conductivity', 'b', 'easy', 'Test_user'),
(26, 'Find the maximum velocity for the overturn of a car moving on a circular track of radius 100 m. The co-efficient of friction between the road and tyre is 0.2:', '140 m/s', '0.14 m/s', '1.4 km/s', '14 m/s', 'd', 'easy', 'Test_user'),
(27, 'Light travels at the fastest speed in:', 'water', 'glass', 'hydrogen', 'vacuum', 'd', 'easy', 'Test_user'),
(28, ' Which of the following has maximum penetrating power?', 'Microwaves', 'Ultraviolet radiation', 'Î³-rays', 'Radio waves', 'c', 'average', 'Test_user'),
(29, 'Let the magnetic field on earth be modelled by that of a point magnetic dipole at the centre of earth. The angle of dip at a point on the geographical equator', 'can be zero at specific points.', 'is always zero.', 'cannot be positive or negative.', 'is not bounded.', 'b', 'average', 'Test_user'),
(30, 'The manifestation of band structure in solids is due to:', 'Pauliâ€™s exclusion principle', 'Heisenberg uncertainty priniciple', 'Bohrâ€™s correspondence principle', 'Boltzmann law', 'b', 'average', 'Test_user'),
(31, 'Region without free electrons and holes in a p-n junction is', 'p-region', 'n-region', 'depletion region', 'none of these', 'c', 'average', 'Test_user'),
(32, 'Which of the following is called heat radiation?', 'Microwave', 'Infrared radiation', 'Î³-rays', 'X-rays', 'a', 'average', 'Test_user'),
(33, 'The focal length of a biconvex lens of radii of each surface 50 cm and refractive index 1.5 is', '75 cm', '40.4 cm', '50 cm', '80 cm', 'c', 'average', 'Test_user');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE IF NOT EXISTS `student_details` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` int(15) NOT NULL,
  `approval_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sl_no`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`sl_no`, `name`, `email`, `phone`, `approval_status`) VALUES
(1, 'subin', 'subin@gmail.com', 8776768, 1),
(2, 'basit', 'basit@gmail.com', 2535233, 1),
(3, 'adona', 'adona@gmail.com', 642432615, 1),
(4, 'amal', 'amal@gmail.com', 9, 1),
(5, 'angana', 'angana@gmail.com', 5, 1),
(6, 'athira', 'athira@gmail.com', 4632, 1),
(7, 'bera', 'bera@gmail.com', 4552, 1),
(8, 'Charita', 'charita@gmail.com', 628522, 1),
(9, 'chandu', 'chandu@gmail.com', 595211, 0),
(10, 'dinah', 'dinah@gmail.com', 65621, 0),
(11, 'divya', 'divya@gmail.com', 5454, 1),
(12, 'dhivya', 'dhivya@gmail.com', 545222, 1),
(13, 'dani', 'dani@gmail.com', 131313, 0),
(14, 'debolina', 'debolina@gmail.com', 5218035, 0),
(15, 'esther', 'ether@gmail.com', 521, 0),
(16, 'jahan', 'jahan@gmail.com', 65255, 0),
(17, 'jaashree', 'jayashreen@gmail.com', 6525544, 0),
(18, 'Harsha', 'Harsha@gmail.com', 45233363, 0),
(19, 'James', 'James@gmail.com', 253322, 0),
(20, 'Kanishma', 'Kanishma@gmail.com', 97522, 0),
(21, 'Lakshmi', 'lakshmip@gmail.com', 842563, 0),
(22, 'lidiya', 'lidiya@gmail.com', 24154, 0),
(23, 'liya', 'liya@gmail.com', 52663624, 0),
(24, 'meena', 'meena@gmail.com', 952152, 0),
(25, 'meet', 'meet@gmail.com', 144, 0),
(26, 'minnu', 'minnu@gmail.com', 2562, 0),
(27, 'merin', 'merin@gmail.com', 28563, 0),
(28, 'manjunath', 'manjunath@gmail.com', 69522, 0),
(30, 'mehek', 'mehek@gmail.com', 66333, 0),
(31, 'mousumi', 'mousumi@gmail.com', 21552, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE IF NOT EXISTS `student_list` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `phone` int(15) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `time_physics` int(11) DEFAULT NULL,
  `time_chemistry` int(11) DEFAULT NULL,
  `time_maths` int(11) DEFAULT NULL,
  `time_gk` int(11) DEFAULT NULL,
  `physics_marks` int(11) DEFAULT NULL,
  `chemistry_marks` int(11) DEFAULT NULL,
  `maths_marks` int(11) DEFAULT NULL,
  `gk_marks` int(11) DEFAULT NULL,
  `exam_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sl_no`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`sl_no`, `name`, `phone`, `user_id`, `password`, `time_physics`, `time_chemistry`, `time_maths`, `time_gk`, `physics_marks`, `chemistry_marks`, `maths_marks`, `gk_marks`, `exam_status`) VALUES
(1, 'test no 1', 65155453, 'test1', 'test1', 23, 43, 16, 24, 6, 5, 8, 4, 1),
(2, 'test no 2', 655315431, 'test2', 'test2', 20, 26, 82, 76, 8, 9, 8, 6, 2),
(3, 'test no 3', 688436, 'test3', 'test3', 72, 81, 76, 88, 7, 8, 9, 3, 2),
(4, 'test no 4', 3253513, 'test4', 'test4', 76, 87, 65, 65, 8, 8, 9, 7, 1),
(5, 'test no 5', 312352453, 'test5', 'test5', 63, 54, 76, 56, 7, 8, 6, 9, 2),
(6, 'test no 6', 9765352, 'test6', 'test6', 10, 0, 0, 0, 1, 1, 0, 0, 1),
(7, 'subin', 8776768, 'subin@gmail.com', 'ylQnhYSR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 'basit', 2535233, 'basit@gmail.com', 'rJ3x0MH9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, 'amal', 9, 'amal@gmail.com', 'GCYBFApz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 'angana', 5, 'angana@gmail.com', 'QsJ0ihS2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 'Charita', 628522, 'charita@gmail.com', 'QKCk0o2i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, 'divya', 5454, 'divya@gmail.com', 'r7dngkRp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, 'dhivya', 545222, 'dhivya@gmail.com', 'as5Z2l4F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, 'adona', 642432615, 'adona@gmail.com', 'epG8CSkP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, 'athira', 4632, 'athira@gmail.com', 'eb7YNqD2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(16, 'bera', 4552, 'bera@gmail.com', 'ns1Hz3O2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
