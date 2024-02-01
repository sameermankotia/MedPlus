-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 27, 2024 at 12:51 AM
-- Server version: 10.3.39-MariaDB
-- PHP Version: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeart1_medplus`
--

-- --------------------------------------------------------

--
-- Table structure for table `casestudies`
--

CREATE TABLE `casestudies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department` int(11) NOT NULL,
  `history` text NOT NULL,
  `q_question` varchar(255) DEFAULT NULL,
  `options` text DEFAULT NULL,
  `correct_one` varchar(255) DEFAULT NULL,
  `test` text DEFAULT NULL,
  `diagnosis` text DEFAULT NULL,
  `medication` text DEFAULT NULL,
  `img` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mode` varchar(255) NOT NULL,
  `hint` text DEFAULT NULL,
  `diagnosis_correct_one` varchar(255) DEFAULT NULL,
  `test_correct_one` text DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `uital_signs` text NOT NULL,
  `quiz` varchar(255) NOT NULL,
  `history_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `casestudies`
--

INSERT INTO `casestudies` (`id`, `department`, `history`, `q_question`, `options`, `correct_one`, `test`, `diagnosis`, `medication`, `img`, `created_at`, `updated_at`, `mode`, `hint`, `diagnosis_correct_one`, `test_correct_one`, `title`, `uital_signs`, `quiz`, `history_image`) VALUES
(24, 5, 'History', 'Quiz Question', 'Option 1, Option 2, Option 3, Option 4', 'Option 2', NULL, NULL, NULL, NULL, '2023-07-01 21:07:46', '2023-07-09 11:00:21', 'classic_mode', NULL, NULL, NULL, 'Hello', 'vital signs', 'on', ''),
(25, 5, 'History', NULL, ', , , ', NULL, NULL, NULL, NULL, NULL, '2023-07-18 09:52:20', '2023-07-18 09:52:20', 'classic_mode', NULL, NULL, NULL, 'title', 'vital', '', ''),
(26, 6, 'History', NULL, ', , , ', NULL, NULL, NULL, NULL, NULL, '2023-07-18 10:39:56', '2023-07-18 10:39:56', 'study_mode', NULL, NULL, NULL, 'title', 'vital signs', '', ''),
(27, 4, 'history', NULL, ', , , ', NULL, NULL, NULL, NULL, NULL, '2023-07-18 10:50:29', '2023-07-22 12:57:52', 'classic_mode', NULL, NULL, NULL, 'title', 'vital', '', ''),
(28, 4, 'history', NULL, ', , , ', NULL, NULL, NULL, NULL, NULL, '2023-07-18 10:51:34', '2023-07-18 10:51:34', 'study_mode', NULL, NULL, NULL, 'title', 'vital', '', ''),
(35, 7, 'dgxgxf', NULL, ', , , ', NULL, NULL, NULL, NULL, NULL, '2023-08-22 11:33:03', '2023-08-22 11:33:03', 'classic_mode', NULL, NULL, NULL, 'sdrdf', 'reerdyrd', '', ''),
(37, 5, 'dxgxxg', NULL, ', , , ', NULL, NULL, NULL, NULL, NULL, '2023-08-22 11:37:58', '2023-08-22 11:43:11', 'classic_mode', NULL, NULL, NULL, 'ty', 'rersg', '', '1692724391.png'),
(38, 7, 'History', 'Which of the following would you expect to find on her eye exam?', 'Normal, Right Homonymous Hemianopsia, Right afferent pupillary defect. Visual Acuity OD 20/100, OS 20/20, Anisocoria with right pupil larger than left. Visual Acuity OD 20/100, OS 20/20', 'Option 3', NULL, NULL, NULL, NULL, '2023-09-05 14:33:00', '2023-09-05 14:33:00', 'classic_mode', NULL, NULL, NULL, 'Test Person', 'Some vitals', 'on', ''),
(39, 7, 'Madison Pike, a 35-year-old graphic designer living in Seattle, has recently been experiencing strange symptoms. Over the past two months, she has noticed intermittent numbness and tingling in her right hand and foot. She initially dismissed it as fatigue due to long hours working on her digital designs, but the symptoms persisted.\r\n\r\nShe then started experiencing episodes of blurry vision and double vision, especially in the evenings after work. Madison was worried but thought it might be due to eye strain from staring at computer screens for long periods. But she has come to the clinic today after she tripped and fell while out hiking, one of her favorite hobbies, because of a sudden balance problem.', 'Which of the following would you expect to find on her eye exam?', 'Normal, Right Homonymous Hemianopsia, Right afferent pupillary defect. Visual Acuity OD 20/100 OS 20/20, Anisocoria with right pupil larger than left. Visual Acuity OD 20/100 OS 20/20', 'Option 3', NULL, NULL, NULL, NULL, '2023-09-05 14:43:35', '2023-09-05 14:43:35', 'classic_mode', NULL, NULL, NULL, 'Ms', 'Mental Status: Normal\r\nMotor: Normal\r\nSensory: Normal\r\nGait: Normal\r\nCoordination: Normal', 'on', '1693944815.png'),
(41, 7, 'Madison Pike, a 35-year-old graphic designer living in Seattle, has recently been experiencing strange symptoms. Over the past two months, she has noticed intermittent numbness and tingling in her right hand and foot. She initially dismissed it as fatigue due to long hours working on her digital designs, but the symptoms persisted.\r\n\r\nShe then started experiencing episodes of blurry vision and double vision, especially in the evenings after work. Madison was worried but thought it might be due to eye strain from staring at computer screens for long periods. But she has come to the clinic today after she tripped and fell while out hiking, one of her favorite hobbies, because of a sudden balance problem.', 'Which of the following would you expect to find on her eye exam?', 'Normal, Right Homonymous Hemianopsia, Right afferent pupillary defect   Visual Acuity OD 20/100  OS 20/20, Anisocoria with right pupil larger than left   Visual Acuity OD 20/100 OS 20/20', 'Option 3', NULL, NULL, NULL, NULL, '2023-12-12 12:51:47', '2023-12-12 12:51:47', 'classic_mode', NULL, NULL, NULL, 'Madison Pike', 'Mental Status: Normal\r\nMotor: Normal\r\nSensory: Normal\r\nGait: Normal\r\nCoordination: Normal', 'on', '');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `img` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `detail`, `img`, `created_at`, `updated_at`) VALUES
(4, 'Deparment 1', 'Deparment 1', '1686076043.jpg', '2023-06-06 12:40:49', '2023-06-11 00:25:04'),
(5, 'Deparment 2', 'Deparment 2', '1686076043.jpg', '2023-06-06 12:40:49', '2023-06-11 00:25:23'),
(6, 'Deparment 3', 'Deparment 3', '1686462947.jpg', '2023-06-11 00:25:47', '2023-06-11 00:25:47'),
(7, 'Mind Brain and Behavior', 'Learn about the brain', '1692210192.png', '2023-08-16 12:53:12', '2023-08-16 12:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`id`, `title`, `created_at`, `updated_at`, `description`, `image`) VALUES
(444, 'Acoustic neuroma (vestibular schwannoma)', '2023-07-01 03:42:13', '2023-08-16 12:26:33', 'Acoustic neuroma (vestibular schwannoma), a benign tumor that develops on the vestibular nerve, often causing hearing loss, tinnitus, and balance problems', NULL),
(445, 'Albinism', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Albinism, a genetic condition characterized by a lack of pigment in the hair, skin, and eyes, leading to vision problems and increased sensitivity to light', NULL),
(446, ' Alzheimer\'s disease', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Alzheimer\'s disease, a progressive neurodegenerative disorder characterized by memory loss, cognitive decline, and changes in behavior and personality', NULL),
(447, ' Amyotrophic lateral sclerosis (ALS)', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Amyotrophic lateral sclerosis (ALS), a progressive motor neuron disease leading to muscle weakness, paralysis, and difficulty with speech, swallowing, and breathing', NULL),
(448, ' Angelman syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Angelman syndrome, a genetic disorder causing developmental delays, intellectual disability, movement and balance problems, and a characteristic happy and sociable demeanor', NULL),
(449, ' Amblyopia (lazy eye)', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Amblyopia, reduced vision in one eye due to abnormal visual development during childhood', NULL),
(450, ' Amaurosis Fugax', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Amaurosis Fugax, temporary vision loss or blindness in one eye caused by a lack of blood flow to the retina', NULL),
(451, ' Anterior cord syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Anterior cord syndrome, a spinal cord injury resulting in the loss of motor function, pain, and temperature sensation below the level of the injury', NULL),
(452, ' Astrocytoma', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Astrocytoma, a type of brain tumor that originates from astrocytes, a type of glial cell', NULL),
(453, ' Ataxia telangiectasia', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Ataxia telangiectasia, a rare genetic disorder causing progressive neurodegeneration, immunodeficiency, and difficulty with coordination and balance', NULL),
(454, ' Bells palsy', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Bell\'s palsy, sudden weakness or paralysis of the muscles on one side of the face, typically caused by facial nerve damage or inflammation', NULL),
(455, ' Blepharitis', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Blepharitis, inflammation of the eyelid margins, causing redness, irritation, and crusting', NULL),
(456, ' Brown-Séquard syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Brown-Séquard syndrome, a spinal cord injury resulting in paralysis and sensory loss on one side of the body', NULL),
(457, ' Carpal tunnel syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Carpal tunnel syndrome, compression of the median nerve in the wrist, leading to hand pain, numbness, and tingling', NULL),
(458, ' Cataracts', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Cataracts, clouding of the lens in the eye, leading to blurred vision and decreased visual acuity', NULL),
(459, ' Central herniation', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Central herniation, a life-threatening condition where brain structures are displaced downward due to increased intracranial pressure', NULL),
(460, ' Central scotoma', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Central scotoma, a visual field defect characterized by a loss of vision in the central part of the visual field', NULL),
(461, ' Central serous chorioretinopathy', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Central serous chorioretinopathy, a condition characterized by fluid accumulation under the retina, leading to vision distortion and decreased visual acuity', NULL),
(462, ' Central cord syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Central cord syndrome, a spinal cord injury resulting in weakness and loss of function in the upper extremities', NULL),
(463, ' Charcot-Marie-Tooth disease', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Charcot-Marie-Tooth disease, a group of inherited disorders affecting the peripheral nerves, causing muscle weakness and sensory abnormalities', NULL),
(464, ' Cholesteatoma', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Cholesteatoma, an abnormal growth of skin in the middle ear, leading to hearing loss, ear discharge, and ear pain', NULL),
(465, ' Color blindness', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Color blindness, a genetic condition causing an inability to perceive certain colors or color differences', NULL),
(466, ' Compressive Optic Neuropathy', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Compressive Optic Neuropathy, damage to the optic nerve due to compression by surrounding structures, leading to vision loss and changes in visual field', NULL),
(467, ' Conjunctivitis', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Conjunctivitis, inflammation of the conjunctiva, causing redness, itching, and discharge', NULL),
(468, ' Creutzfeldt-Jakob disease', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Creutzfeldt-Jakob disease, a rare degenerative brain disorder characterized by rapidly progressive dementia, muscle stiffness, and involuntary movements', NULL),
(469, ' Cerebral palsy', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Cerebral palsy, a group of motor disorders caused by damage to the developing brain, resulting in impaired movement and coordination', NULL),
(470, ' Diabetic neuropathy', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Diabetic neuropathy, nerve damage caused by diabetes, resulting in symptoms such as numbness, tingling, and pain in the extremities', NULL),
(471, ' Diabetic retinopathy', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Diabetic retinopathy, damage to the blood vessels of the retina due to diabetes, leading to vision loss if left untreated', NULL),
(472, ' Duret hemorrhage', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Duret hemorrhage, a life-threatening condition where bleeding occurs in the brainstem due to increased intracranial pressure', NULL),
(473, ' Encephalitis', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Encephalitis, inflammation of the brain, often caused by viral infection, leading to neurological symptoms and changes in mental status', NULL),
(474, ' Ependymoma', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Ependymoma, a type of brain or spinal cord tumor that arises from ependymal cells', NULL),
(475, ' Epidermolysis bullosa', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Epidermolysis bullosa, a group of inherited disorders characterized by fragile skin that blisters easily in response to minor trauma or friction', NULL),
(476, ' Epilepsy', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Epilepsy, a neurological disorder characterized by recurrent seizures due to abnormal brain activity', NULL),
(477, ' External herniation', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' External herniation, a condition where organs or tissues protrude through a defect in the body wall, such as an inguinal hernia or umbilical hernia', NULL),
(478, ' Facial nerve palsy', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Facial nerve palsy, weakness or paralysis of the muscles innervated by the facial nerve, leading to facial droop and difficulty with facial expressions', NULL),
(479, ' Fragile X syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Fragile X syndrome, a genetic disorder causing intellectual disability, developmental delays, and distinctive physical features', NULL),
(480, ' Friedreich\'s ataxia', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Friedreich\'s ataxia, a genetic disorder characterized by progressive muscle weakness, difficulty with coordination and balance, and heart problems', NULL),
(481, ' Glioblastoma', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Glioblastoma, a malignant brain tumor that arises from glial cells and grows rapidly, often causing neurological symptoms', NULL),
(482, ' Glaucoma', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Glaucoma, a group of eye conditions characterized by increased intraocular pressure, optic nerve damage, and vision loss if left untreated', NULL),
(483, ' Glossopharyngeal nerve (CN IX) issues', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Glossopharyngeal nerve (CN IX) issues, including neuralgias or disorders affecting the function of the glossopharyngeal nerve', NULL),
(484, ' Guillain-Barré syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Guillain-Barré syndrome, an autoimmune disorder characterized by progressive muscle weakness, paralysis, and sensory disturbances', NULL),
(485, ' Herpes zoster (shingles)', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Herpes zoster (shingles), a viral infection caused by the reactivation of the varicella-zoster virus, resulting in a painful rash along a specific dermatome', NULL),
(486, ' Horner syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Horner syndrome, a condition characterized by a combination of symptoms such as ptosis (drooping eyelid), miosis (constricted pupil), and anhidrosis (lack of sweating) due to disruption of the sympathetic nerve pathway', NULL),
(487, ' Huntington\'s disease', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Huntington\'s disease, a progressive genetic disorder causing motor abnormalities, cognitive decline, and psychiatric symptoms', NULL),
(488, ' Hypoglossal nerve (CN XII) issues', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Hypoglossal nerve (CN XII) issues, including neuralgias or disorders affecting the function of the hypoglossal nerve', NULL),
(489, ' Intracerebral hemorrhage', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Intracerebral hemorrhage, bleeding within the brain tissue, often caused by trauma or rupture of blood vessels', NULL),
(490, ' Keratoconus', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Keratoconus, a progressive eye condition characterized by thinning and bulging of the cornea, leading to distorted vision', NULL),
(491, ' Lambert-Eaton myasthenic syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Lambert-Eaton myasthenic syndrome, an autoimmune disorder causing muscle weakness, fatigue, and autonomic dysfunction', NULL),
(492, ' Landau-Kleffner syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Landau-Kleffner syndrome, a rare childhood disorder characterized by the loss of language and regression of communication skills', NULL),
(493, ' Leigh syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Leigh syndrome, a severe genetic disorder causing progressive neurological dysfunction, movement abnormalities, and respiratory problems', NULL),
(494, ' Lissencephaly', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Lissencephaly, a rare brain malformation characterized by smooth brain surfaces and severe developmental delays', NULL),
(495, ' Lateral medullary syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Lateral medullary syndrome (Wallenberg syndrome), a stroke or vascular lesion affecting the lateral part of the medulla oblongata, resulting in various neurological deficits', NULL),
(496, ' Left homonymous hemianopia', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Left homonymous hemianopia, a visual field defect characterized by loss of vision in the left half of the visual field of both eyes', NULL),
(497, ' Left homonymous inferior quadrantanopia', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Left homonymous inferior quadrantanopia, a visual field defect characterized by loss of vision in the lower left quadrant of the visual field of both eyes', NULL),
(498, ' Left homonymous superior quadrantanopia', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Left homonymous superior quadrantanopia, a visual field defect characterized by loss of vision in the upper left quadrant of the visual field of both eyes', NULL),
(499, ' Left bitemporal hemianopia', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Left bitemporal hemianopia, a visual field defect characterized by loss of vision in the outer (temporal) half of the visual field of both eyes', NULL),
(500, ' Left-sided visual field defect', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Left-sided visual field defect, a loss of vision in the left visual field of one or both eyes', NULL),
(501, ' Leukodystrophy', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Leukodystrophy, a group of genetic disorders causing abnormal development or destruction of the white matter in the brain, leading to neurological symptoms and progressive loss of function', NULL),
(502, ' Leukocoria', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Leukocoria, an abnormal white reflection in the eye, often indicative of underlying eye conditions, such as retinoblastoma or cataracts', NULL),
(503, ' Lissencephaly', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Lissencephaly, a rare brain malformation characterized by smooth brain surfaces and severe developmental delays', NULL),
(504, ' Macular hole', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Macular hole, a small break in the macula, the central part of the retina, leading to blurred or distorted central vision', NULL),
(505, ' Macular degeneration', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Macular degeneration, a progressive eye condition causing central vision loss, often associated with aging (age-related macular degeneration) or genetic factors (juvenile macular degeneration)', NULL),
(506, ' Medial medullary syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Medial medullary syndrome (Dejerine syndrome), a stroke or vascular lesion affecting the medial part of the medulla oblongata, resulting in various neurological deficits', NULL),
(507, ' Medulloblastoma', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Medulloblastoma, a malignant brain tumor that arises in the cerebellum, primarily affecting children', NULL),
(508, ' Meningitis (bacterial)', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Bacterial meningitis, inflammation of the meninges (protective membranes) surrounding the brain and spinal cord, caused by bacterial infection', NULL),
(509, ' Meningioma', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Meningioma, a usually benign tumor that arises from the meninges, the protective membranes surrounding the brain and spinal cord', NULL),
(510, ' Ménière\'s disease', '2023-07-01 03:42:13', '2023-07-01 03:42:13', '', NULL),
(511, ' Migraine', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Migraine, a neurological disorder characterized by recurrent episodes of severe headache, often accompanied by other symptoms such as nausea, vomiting, and sensitivity to light or sound', NULL),
(512, ' Multiple sclerosis', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Multiple sclerosis, a chronic autoimmune disease characterized by inflammation and damage to the central nervous system, leading to a wide range of neurological symptoms', NULL),
(513, ' Muscular dystrophy', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Muscular dystrophy, a group of genetic disorders causing progressive muscle weakness and degeneration', NULL),
(514, ' Myasthenia gravis', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Myasthenia gravis, an autoimmune disorder affecting the neuromuscular junction, causing muscle weakness and fatigue', NULL),
(515, ' Myelomeningocele (spina bifida)', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Myelomeningocele (spina bifida), a neural tube defect characterized by the incomplete closure of the spinal cord and surrounding structures during fetal development', NULL),
(516, ' Nasolacrimal duct obstruction', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Nasolacrimal duct obstruction, blockage or narrowing of the tear ducts, leading to excessive tearing or discharge from the eyes', NULL),
(517, ' Neurofibromatosis type 1 (NF1)', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Neurofibromatosis type 1 (NF1), a genetic disorder causing the growth of tumors along nerves, skin pigmentation changes, and other manifestations', NULL),
(518, ' Neurofibromatosis type 2 (NF2)', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Neurofibromatosis type 2 (NF2), a genetic disorder characterized by the growth of tumors on nerves, particularly affecting the auditory nerves and leading to hearing loss and balance problems', NULL),
(519, ' Neuroleptic malignant syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Neuroleptic malignant syndrome, a rare but potentially life-threatening reaction to certain medications, characterized by fever, muscle rigidity, altered mental status, and autonomic dysfunction', NULL),
(520, ' Ocular hypertension', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Ocular hypertension, higher-than-normal intraocular pressure, a potential risk factor for the development of glaucoma', NULL),
(521, ' Oculomotor nerve palsy', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Oculomotor nerve palsy, weakness or paralysis of the muscles controlled by the oculomotor nerve, leading to eye movement abnormalities and double vision', NULL),
(522, ' Ophthalmoplegia', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Ophthalmoplegia, paralysis or weakness of the eye muscles, resulting in impaired eye movements and diplopia (double vision)', NULL),
(523, ' Optic glioma', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Optic glioma, a tumor that arises from the glial cells of the optic nerve, often associated with neurofibromatosis type 1 (NF1)', NULL),
(524, ' Optic neuritis', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Optic neuritis, inflammation of the optic nerve, leading to vision loss or blurred vision, often associated with multiple sclerosis or other autoimmune conditions', NULL),
(525, ' Optic nerve hypoplasia', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Optic nerve hypoplasia, underdevelopment of the optic nerve, leading to vision impairment or blindness, often associated with other developmental abnormalities', NULL),
(526, ' Optic nerve atrophy', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Optic nerve atrophy, degeneration of the optic nerve fibers, leading to progressive vision loss', NULL),
(527, ' Ophthalmoplegia', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Ophthalmoplegia, paralysis or weakness of the eye muscles, resulting in impaired eye movements and diplopia (double vision)', NULL),
(528, ' Ophthalmoplegic migraine', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Ophthalmoplegic migraine, a type of migraine headache characterized by recurrent episodes of severe headache along with temporary paralysis or weakness of the eye muscles', NULL),
(529, ' Otitis media', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Otitis media, inflammation or infection of the middle ear, often associated with ear pain, fluid buildup, and hearing loss', NULL),
(530, ' Otosclerosis', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Otosclerosis, abnormal bone growth in the middle ear, leading to hearing loss and tinnitus', NULL),
(531, ' Parkinson\'s disease', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Parkinson\'s disease, a progressive neurodegenerative disorder characterized by tremors, rigidity, bradykinesia (slowness of movement), and postural instability', NULL),
(532, ' Paraneoplastic syndromes', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Paraneoplastic syndromes, a group of rare disorders that occur in the presence of cancer and result from an immune response to cancer cells, affecting various organ systems', NULL),
(533, ' Peripheral neuropathy', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Peripheral neuropathy, damage or dysfunction of the peripheral nerves, leading to numbness, tingling, weakness, and pain in the extremities', NULL),
(534, ' Periventricular leukomalacia', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Periventricular leukomalacia, brain injury characterized by the death or damage of white matter around the ventricles, often seen in premature infants', NULL),
(535, ' Phantom limb syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Phantom limb syndrome, the perception of sensations or pain in a limb that has been amputated or is no longer present', NULL),
(536, ' Pituitary adenoma', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Pituitary adenoma, a tumor that develops in the pituitary gland, leading to hormonal imbalances and potential visual field defects', NULL),
(537, ' Posterior cord syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Posterior cord syndrome, a spinal cord injury resulting in loss of proprioception (position sense), vibration sense, and fine touch sensation below the level of the injury', NULL),
(538, ' Presbycusis', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Presbycusis, age-related hearing loss, often characterized by a gradual decline in hearing ability', NULL),
(539, ' Prader-Willi syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Prader-Willi syndrome, a genetic disorder causing intellectual disability, hyperphagia (excessive eating), and various physical and behavioral abnormalities', NULL),
(540, ' Progressive multifocal leukoencephalopathy (PML)', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Progressive multifocal leukoencephalopathy (PML), a rare viral infection of the brain characterized by progressive neurological deficits', NULL),
(541, ' Progressive supranuclear palsy', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Progressive supranuclear palsy, a neurodegenerative disorder causing difficulties with balance, eye movements, and coordination, often mimicking Parkinson\'s disease', NULL),
(542, ' Ptosis', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Ptosis, drooping of the upper eyelid due to weakness or paralysis of the muscles responsible for eyelid elevation', NULL),
(543, ' Radiculopathy', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Radiculopathy, compression or irritation of a spinal nerve root, leading to pain, numbness, and weakness along the affected nerve pathway', NULL),
(544, ' Retinal artery occlusion', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Retinal artery occlusion, blockage of the retinal artery supplying blood to the retina, resulting in sudden vision loss in the affected eye', NULL),
(545, ' Retinal detachment', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Retinal detachment, separation of the retina from the underlying tissue, leading to vision loss and the perception of floating spots or flashes of light', NULL),
(546, ' Retinal vein occlusion', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Retinal vein occlusion, blockage of the retinal vein, causing vision loss and the appearance of retinal hemorrhages or edema', NULL),
(547, ' Retinitis pigmentosa', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Retinitis pigmentosa, a group of genetic disorders causing progressive degeneration of the retina, leading to vision loss and night blindness', NULL),
(548, ' Retinoblastoma', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Retinoblastoma, a rare childhood eye cancer that originates in the retina', NULL),
(549, ' Restless legs syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Restless legs syndrome, a neurological disorder characterized by an uncontrollable urge to move the legs, often accompanied by unpleasant sensations', NULL),
(550, ' Rett syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Rett syndrome, a genetic disorder predominantly affecting females and causing severe developmental regression, motor impairments, and intellectual disability', NULL),
(551, ' Right homonymous hemianopia', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Right homonymous hemianopia, a visual field defect characterized by loss of vision in the right half of the visual field of both eyes', NULL),
(552, ' Right homonymous inferior quadrantanopia', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Right homonymous inferior quadrantanopia, a visual field defect characterized by loss of vision in the lower right quadrant of the visual field of both eyes', NULL),
(553, ' Right homonymous superior quadrantanopia', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Right homonymous superior quadrantanopia, a visual field defect characterized by loss of vision in the upper right quadrant of the visual field of both eyes', NULL),
(554, ' Right bitemporal hemianopia', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Right bitemporal hemianopia, a visual field defect characterized by loss of vision in the outer (temporal) half of the visual field of both eyes', NULL),
(555, ' Right-sided visual field defect', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Right-sided visual field defect, a loss of vision in the right visual field of one or both eyes', NULL),
(556, ' Rhabdomyosarcoma', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Rhabdomyosarcoma, a malignant tumor arising from skeletal muscle tissue, often occurring in children', NULL),
(557, ' Schwannoma', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Schwannoma, a benign tumor originating from Schwann cells that surround peripheral nerves', NULL),
(558, ' Sjögren\'s syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Sjögren\'s syndrome, an autoimmune disorder characterized by dry eyes and dry mouth due to inflammation and dysfunction of the salivary and lacrimal glands', NULL),
(559, ' Spinal cord compression', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Spinal cord compression, compression of the spinal cord by surrounding structures, leading to neurological symptoms such as weakness, numbness, and problems with bowel or bladder control', NULL),
(560, ' Spinal cord contusion', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Spinal cord contusion, a spinal cord injury resulting from a bruise or localized hemorrhage, leading to temporary or permanent neurological deficits', NULL),
(561, 'Spinal cord injuries', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Spinal cord injuries, damage to the spinal cord resulting in loss of motor and sensory function below the level of injury', NULL),
(562, ' Spinal cord infections', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Spinal cord infections, such as meningitis or spinal epidural abscess, characterized by inflammation and infection of the spinal cord and surrounding tissues', NULL),
(563, ' Spinal cord ischemia', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Spinal cord ischemia, a condition caused by reduced blood flow to the spinal cord, resulting in ischemic injury and neurological deficits', NULL),
(564, ' Spinal cord tumors', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Spinal cord tumors, abnormal growths in or around the spinal cord, which can be benign or malignant and may cause compression and damage to the spinal cord', NULL),
(565, ' Spinal cord transection', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Spinal cord transection, complete severing of the spinal cord, resulting in complete loss of motor and sensory function below the level of injury', NULL),
(566, ' Spinocerebellar ataxia', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Spinocerebellar ataxia, a group of genetic disorders characterized by progressive degeneration of the cerebellum and spinal cord, leading to coordination and balance problems', NULL),
(567, ' Spinal muscular atrophy', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Spinal muscular atrophy, a genetic disorder causing progressive muscle weakness and atrophy due to the loss of specialized nerve cells in the spinal cord', NULL),
(568, ' Spinal stenosis', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Spinal stenosis, narrowing of the spinal canal or intervertebral foramina, resulting in compression of the spinal cord or nerve roots and symptoms such as pain, numbness, and weakness', NULL),
(569, ' Stiff-person syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Stiff-person syndrome, a rare neurological disorder characterized by muscle stiffness and spasms, often affecting the axial muscles and leading to impaired mobility', NULL),
(570, ' Stroke (ischemic and hemorrhagic)', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Stroke, a sudden interruption of blood supply to the brain, either due to a blockage (ischemic stroke) or bleeding (hemorrhagic stroke), leading to neurological deficits', NULL),
(571, ' Subarachnoid hemorrhage', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Subarachnoid hemorrhage, bleeding into the space surrounding the brain, often caused by the rupture of an intracranial aneurysm', NULL),
(572, ' Subdural hematoma', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Subdural hematoma, a collection of blood between the dura mater and arachnoid mater, often caused by head trauma, leading to neurological symptoms', NULL),
(573, ' Syringomyelia', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Syringomyelia, the formation of fluid-filled cavities within the spinal cord, often causing pain, sensory disturbances, and muscle weakness', NULL),
(574, ' Temporal arteritis', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Temporal arteritis (giant cell arteritis), inflammation of the arteries in the head and neck, leading to severe headaches, jaw pain, and vision problems', NULL),
(575, ' Tinnitus', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Tinnitus, a perception of noise or ringing in the ears, often associated with hearing loss or other underlying conditions', NULL),
(576, ' Tourette syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Tourette syndrome, a neurological disorder characterized by repetitive involuntary movements and vocalizations called tics, often accompanied by other behavioral or psychiatric symptoms', NULL),
(577, ' Transient ischemic attack (TIA)', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Transient ischemic attack, a temporary episode of neurological dysfunction caused by a brief interruption of blood supply to the brain, often a warning sign of an impending stroke', NULL),
(578, ' Trigeminal neuralgia', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Trigeminal neuralgia, a chronic pain condition affecting the trigeminal nerve, leading to intense facial pain and brief episodes of electric shock-like sensations', NULL),
(579, ' Trigeminal nerve (CN V) issues', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Trigeminal nerve issues, such as compression or inflammation, resulting in facial pain, sensory disturbances, and difficulty with chewing and speaking', NULL),
(580, ' Trochlear nerve palsy', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Trochlear nerve palsy, paralysis or weakness of the fourth cranial nerve, leading to double vision, particularly with downward gaze', NULL),
(581, ' Uncal herniation', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Uncal herniation, a life-threatening condition in which the temporal lobe of the brain herniates over the edge of the tentorium cerebelli, leading to increased intracranial pressure and compression of vital structures', NULL),
(582, ' Usher syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Usher syndrome, a genetic disorder causing hearing loss or deafness, along with progressive vision loss or blindness due to retinitis pigmentosa', NULL),
(583, ' Vagus nerve (CN X) issues', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Vagus nerve issues, such as compression or dysfunction, leading to various symptoms related to the vagus nerve\'s role in regulating cardiac, gastrointestinal, and respiratory functions', NULL),
(584, ' Vascular dementia', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Vascular dementia, a type of dementia caused by reduced blood flow to the brain, often due to a series of small strokes or other vascular conditions', NULL),
(585, ' Vestibular migraine', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Vestibular migraine, a type of migraine headache characterized by episodes of vertigo or dizziness, often accompanied by headache and other migraine symptoms', NULL),
(586, ' Vestibulocochlear nerve (CN VIII) issues', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Vestibulocochlear nerve issues, such as hearing loss or imbalance, resulting from dysfunction or damage to the eighth cranial nerve', NULL),
(587, ' Vitreous detachment', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Vitreous detachment, separation of the gel-like vitreous humor from the retina, often causing floaters and flashes of light in the visual field', NULL),
(588, ' Von Hippel-Lindau disease', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Von Hippel-Lindau disease, a genetic disorder causing the development of tumors in various organs, including the brain, spinal cord, and eyes', NULL),
(589, ' Wernicke-Korsakoff syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Wernicke-Korsakoff syndrome, a neurological disorder caused by thiamine (vitamin B1) deficiency, characterized by mental confusion, ataxia, and memory impairments', NULL),
(590, ' Williams syndrome', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Williams syndrome, a genetic disorder characterized by developmental delays, distinctive facial features, cardiovascular abnormalities, and cognitive difficulties', NULL),
(591, ' Wilson disease', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' Wilson disease, a genetic disorder causing abnormal copper metabolism and accumulation, leading to liver and neurological symptoms', NULL),
(592, ' X-linked adrenoleukodystrophy', '2023-07-01 03:42:13', '2023-07-01 03:42:13', ' X-linked adrenoleukodystrophy, a genetic disorder affecting the nervous system and adrenal glands, causing progressive neurological degeneration and adrenal insufficiency', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`, `group`) VALUES
(14, 'ankit', 'surajkumar0859@gmail.com', '$2y$10$dneLsa3Qjq8Vt5n9w.dNduYIQsr3qTF.goWzbRc6c26.Y0ie0orH.', '2023-06-24 13:41:43', '2023-06-24 13:41:43', NULL),
(15, 'sameer', 'sameermankotia2000@gmail.com', '$2y$10$bP4.6ga59tY3EyBnOS7Nl.zLlwd4mPBkd4l6KcQKvVSFlVeuU9VM2', '2023-08-15 12:06:25', '2023-08-15 12:06:25', NULL),
(16, 'Derrick Phillips', 'dphillips@uidaho.edu', '$2y$10$nEBq55FtfpCoD5Zo9Gvov.XyyoOH86SLFylBscVHQE3r0gOwtQns.', '2023-08-16 14:55:10', '2023-08-16 14:55:10', NULL),
(17, 'Tyler', 'tylerbland1@gmail.com', '$2y$10$qgzXMzmHDT.3Krhr0z4EuOZ/N.RMVA7FArJ0jZjPxePp3TyHNASda', '2023-09-11 16:10:25', '2023-09-11 16:10:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `title`, `created_at`, `updated_at`) VALUES
(2, 'hello yes', '2023-06-12 13:24:48', '2023-06-13 09:51:11'),
(3, 'hello 1', '2023-06-12 13:24:59', '2023-06-12 13:24:59');

-- --------------------------------------------------------

--
-- Table structure for table `medications`
--

CREATE TABLE `medications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medications`
--

INSERT INTO `medications` (`id`, `title`, `created_at`, `updated_at`, `description`, `image`) VALUES
(4, 'Amandatine', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Binds viral M2 protein that functions as an ion channel. Prevents acidificaiton of viral core. Blocks uncoating of virus in host cell', NULL),
(5, '4-factor prothrombin complex concentrates', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Lyophilized power containing human blood clotting factors II, VII, IX and X (replacement therapy)', NULL),
(6, '5-fluorouracil (5-FU)', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Metabolized to active FdUMP that binds and inhibits thymidylate synthetase (primary mechanism). Triphosphorylated forms incorporate into RNA and DNA to hinder nucleic acid function. Efficacy enhanced with leucovorin', NULL),
(7, '6-mercaptopurine', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Purine analog that inhibits the de novo synthesis of purine bases. Requires activation by HGPRT with addition of ribose phosphate', NULL),
(8, 'Abarelix', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'GnRH receptor antagonist. Rapidly inhibits LH/FSH secretion which decreases production of testosterone from the testis', NULL),
(9, 'Abiraterone', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Irreversibly inhibits CYP17A1 enzyme and blocks synthesis of androgen precursors in tumor cells and the testis. Antagonizes synthesis of DHEA and androstenedione', NULL),
(10, 'Acarbose', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Alpha-glucosidase inhibitor. Inhibits carbohydrate metabolism and absorption in the small intestine', NULL),
(11, 'Acetaminophen', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'CNS non-specific and reversible COX inhibitor', NULL),
(12, 'Acetazolamide', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Carbonic anhydrase inhibitor. Decreases CSF production', NULL),
(13, 'Acyclovir ', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Blocks viral DNA synthesis. Inhibits viral DNA polymerase and incorporates into DNA causing chain termination. Requires activation by viral  \"thymidine kinase\" ', NULL),
(14, 'Adalimumab', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'mAb against TNFa. Prevents TNFa binding and activation of TNF receptor ', NULL),
(15, 'Adenosine', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Adenosine receptor agonist', NULL),
(16, 'Albendazole', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Binds free b-tubulin and inhibits tubulin polymerization and microtubule dependent glucose uptake', NULL),
(17, 'Alemtuzumab', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'mAb against CD52. Leads to B and T cell depletion', NULL),
(18, 'Alendronate', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Incorporates into bone and is taken up by osteoclasts. Toxic to osteoclasts and causes apoptosis. Inhibits osteoclast-mediated bone resorption and slows bone loss', NULL),
(19, 'Allopurinol', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Xanthine oxidase inhibitor. Blocks uric acid formation from purines', NULL),
(20, 'All-trans retinoic acid (ATRA)', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Stimulates differentiation of leukemic promyelocytes into mature granulocytes', NULL),
(21, 'Alprostadil', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Vasodilates smooth muscle to increase perfusion to the penis', NULL),
(22, 'Alteplase', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Converts plasminogen to plasmin', NULL),
(23, 'Aminolevulinic acid', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Produced ROS when exposed to blue light', NULL),
(24, 'Amiodarone', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'K+ and Na+ channels inhibitor', NULL),
(25, 'Amitriptyline', '2023-08-13 03:09:17', '2023-08-13 03:09:17', '5-HT and NE reuptake inhibitor. Antagonist at 5-HT, histamine, adrenergic, muscarinic receptors', NULL),
(26, 'Amlodipine', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Vascular selective L-type Ca2+ channel blocker', NULL),
(27, 'Amoxicillin', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Looks like D-ala-D-ala, binds PBPs (transpeptidases), and blocks peptidoglycan cross-linking. Disrupts integrity of bacterial cell wall', NULL),
(28, 'Amphetamine', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Blocks reuptake and stimulates release of norepinephrine and dopamine ', NULL),
(29, 'Amphotericin B', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Binds ergosterol and forms pores in the yeast membrane. Increases membrane permeability', NULL),
(30, 'Anakinra', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Recombinant version of endogenous IL-1 receptor antagonist. Prevents IL-1 receptor activation and downstream signaling', NULL),
(31, 'Anastrozole', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Reversibly aromatase inhibitor. Blocks conversion of androgens to estrogens. Lowers estrogen levels', NULL),
(32, 'Andexanet alfa', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Recombinant modified Factor Xa protein. Decoy protein that binds FXa inhibitors with same affinity as natural FXa', NULL),
(33, 'Anti-thymocyte globulin (rATG)', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'pAb against a variety of T-cell surface antigens. Inactivates and depletes T-cells', NULL),
(34, 'Aprepitant', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Neurokinin-1 (NK1) receptor antagonist. Blocks substance P neuropeptide function in neurons involved in induction of vomiting', NULL),
(35, 'Artemether', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Binds iron in heme and breaks down peroxide bridges generating free radicals toxic to parasite', NULL),
(36, 'Artesunate', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Binds iron in heme and breaks down peroxide bridges generating free radicals toxic to parasite', NULL),
(37, 'Asparaginase', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Degrades asparagine in circulation. Starves lymphoid tumor cells that cannot synthesize asparagine', NULL),
(38, 'Aspirin (acetylsalicylic acid)', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Non-specific, covalent COX inhibitor. Inhibits production of prostaglandins, prostacyclins, and thromboxane', NULL),
(39, 'Atezolizumab', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Humanized mAb against PD-L1 (PD-1 receptor ligand). Blocks the inhibitory signal produced by the interaction of PD-L1 on tumors with PD-1 on T-cells. Leads to activation of cytotoxic T-cells and anti-tumor immune response', NULL),
(40, 'Atovaquone', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Blocks parasite mitochondrial electron transport chain', NULL),
(41, 'Atropine', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Non-selective muscarinic receptor antagonist', NULL),
(42, 'Avacopan', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Complement 5a (C5a) receptor allosteric antagonist. Inhibits C5a-mediated activation and migration of neutrophils', NULL),
(43, 'Azathioprine', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Metabolized into 6-mercaptopurine. Inhibits nucleotide synthesis and DNA replication which inhibits lymphocyte proliferation', NULL),
(44, 'Azithromycin ', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Reversible 50S ribosomal subunit inhibitor. Blocks translocation of ribosome during protein synthesis', NULL),
(45, 'Aztreonam', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Looks like D-ala-D-ala, binds PBPs (transpeptidases), and blocks peptidoglycan cross-linking. Disrupts integrity of bacterial cell wall', NULL),
(46, 'Bacitracin', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Prevents dephosphorylation of inactive lipid carrier (bactoprenol) to active form. Hinders transport of peptidylglycan building block from inside to outside of cell. Blocks cell wall formation', NULL),
(47, 'Baclofen', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'GABA-B receptor agonist', NULL),
(48, 'Baloxavir', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'Blocks influenza PA protein and inhibits cap-dependent endonuclease activity. Inhibits initiation of influenza RNA synthesis', NULL),
(49, 'Baricitinib', '2023-08-13 03:09:17', '2023-08-13 03:09:17', 'JAK1 and JAK2 inhibitor. Also inhibits numb associated kinases (NAK) needed for clatharin-mediated endocytosis', NULL),
(50, 'Basiliximab', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Chimeric mAb against the alpha-chain of IL-2 receptor on T-cells. Inhibits proliferation of T-cells involved in antibody-mediated allograft rejection', NULL),
(51, 'Belatacept', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Fusion protein consisting of CTLA4 linked to FC region of IgG. Binds to B7 (CD80/86) molecules and decreases T-cell activation ', NULL),
(52, 'Bempedoic acid', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'ATP citrate lyase inhibitor. Inhibits liver cholesterol synthesis.', NULL),
(53, 'Betamethasone', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'GR agonist. Stimulates fetal surfactant production and promotes fetal lung maturity and other organ maturation', NULL),
(54, 'Bevacizumab', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Humanized mAB against VEGF-A; Hinders binding of VEGF ligand to its receptor', NULL),
(55, 'Bismuth subsalicylate', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Protective coating for stomach lining, H. pylori antimicrobial activity', NULL),
(56, 'Bleomycin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Induces formation of free radicals that cause DNA strand breaks. G2 phase specific', NULL),
(57, 'Bortezomib', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Reversible 26S proteosomes inhibitor. Inhibits degradation of IkB leading to NF-kB signal inhibition. Leads to apoptosis and sensitizes tumor cells to cytotoxic chemo and radiation', NULL),
(58, 'Botulinum toxin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Cleaves neurotransmitter vessicle SNAREs at the neuromuscular junction. Inhibits ACh release and muscle activation.', NULL),
(59, 'Brentuximab-vedotin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'CD30-specific chimeric mAb linked to tubulin toxin. Binds CD30 expressed on lymphoma cells and is internalized. Intracellular cytotoxicity', NULL),
(60, 'Brimonidine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Alpha2-adrenergic receptor agonist. Initial reduction of aqueous humor production with subsequent increase in outflow ', NULL),
(61, 'Buproprion', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Inhibition of norepinephrine and dopamine reuptake', NULL),
(62, 'Cabergoline', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'D2 dopamine receptor agonist. Inhibits prolactin secretion', NULL),
(63, 'Magnesium hydroxide (Mg(OH)2)', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Weak bases, neutralize gastric acid', NULL),
(64, 'Aluminum hydroxide (Al(OH)3)', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Weak bases, neutralize gastric acid', NULL),
(65, 'Calcium carbonate (CaCO3)', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Weak bases, neutralize gastric acid', NULL),
(66, 'Calcipotriene', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Vitamin D3 analog (activates vitamin D receptor). Inhibits proliferation and stimulates differentiation of keratinocytes', NULL),
(67, 'Calcitonin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Inhibits osteoclast activity', NULL),
(68, 'Calcitriol', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Analog of 1,25 (OH)2 vitamin D. Activates vitamin D receptor', NULL),
(69, 'Canagliflozin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'SGLT2 inhibitor. Blocks glucose reuptake in the proximal tubule of the kidney.', NULL),
(70, 'Cannabidiol', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Mechanism not fully understood', NULL),
(71, 'Caplacizumab', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Humanized, variable-domain only mAb fragment against the A1 domain of von Willebrand factor. Inhibits interaction between VWF multimers and glycoprotein (GP) Ib-IX-V receptor on platelets. Reduces microvascular thrombi formation', NULL),
(72, 'Capsaicin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'TRPV1 (heat-activated channel) agonist', NULL),
(73, 'Carbamazepine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Voltage-gated Na channel inhibitor', NULL),
(74, 'Carbidopa', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Decarboxylase (DC) inhibitor. Blocks the peripheral conversion of levodopa to dopamine', NULL),
(75, 'Carboplatin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'DNA crosslinking agent. Causes DNA damage and disrupts DNA synthesis. Induces cell death', NULL),
(76, 'Carboprost tromethamine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Prostaglandin F2 alpha. Promotes myometrial contractility', NULL),
(77, 'Carvedilol', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'alpha1 and beta-adrenergic receptor antagonist', NULL),
(78, 'Caspofungin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Beta-glucan synthase complex inhibitor. Blocks synthesis of beta(1-3)-glucan, an essential cross-linking component of yeast cell wall', NULL),
(79, 'Cefazolin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', '1st gen cephalosporin. Looks like D-ala-D-ala, binds PBPs (transpeptidases), and blocks peptidoglycan cross-linking. Disrupts integrity of bacterial cell wall', NULL),
(80, 'Cefepime', '2023-08-13 03:09:18', '2023-08-13 03:09:18', '4th gen cephalosporin. Looks like D-ala-D-ala, binds PBPs (transpeptidases), and blocks peptidoglycan cross-linking. Disrupts integrity of bacterial cell wall', NULL),
(81, 'Ceftaroline', '2023-08-13 03:09:18', '2023-08-13 03:09:18', '5th gen cephalosporin. Looks like D-ala-D-ala, binds PBPs (transpeptidases), and blocks peptidoglycan cross-linking. Disrupts integrity of bacterial cell wall', NULL),
(82, 'Ceftriaxone', '2023-08-13 03:09:18', '2023-08-13 03:09:18', '3rd gen cephalosporin. Looks like D-ala-D-ala, binds PBPs (transpeptidases), and blocks peptidoglycan cross-linking. Disrupts integrity of bacterial cell wall', NULL),
(83, 'Cefuroxime', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Looks like D-ala-D-ala; _x000D_\nBinds PBPs (transpeptidases) and blocks peptidoglycan cross-linking;_x000D_\nDisrupts integrity of bacterial cell wall', NULL),
(84, 'Celecoxib ', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Selective reversible COX-2 inhibitor', NULL),
(85, 'Cetuximab', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Chimeric mAb against the extracellular domain of EGFR. Competitively inhibits EGF binding and prevents receptor activation', NULL),
(86, 'Chloramphenicol', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Bacterial 50S ribosomal subunit inhibitor. Inhibits peptidyltransferase reaction (peptide transfer) in protein synthesis', NULL),
(87, 'Chloroquine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Prevents heme polymerization to non-toxic hemozoin in parasitic digestive vacoules. Accumulate toxic levels of free heme', NULL),
(88, 'Cholestyramine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Binds free bile acids. Decreases colonic secretion and motility', NULL),
(89, 'Cinacalcet', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Calcium sensing receptor (CaSR) agonist', NULL),
(90, 'Ciprofloxacin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Bacterial DNA gyrase (topo II) & topoisomerase IV inhibitor. Disrupts bacterial DNA replication & chromosome segregation', NULL),
(91, 'Cisplatin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'DNA crosslinking agent. Causes DNA damage, disrupts DNA synthesis and induces cell death', NULL),
(92, 'Cladribine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Purine antagonist', NULL),
(93, 'Clavulanic acid', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'beta-lactamases inhibitor. Prevents degradation of beta lactam antiobiotics', NULL),
(94, 'Clindamycin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Bacterial 50S ribosomal subunit inhibitor', NULL),
(95, 'Clomiphene', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Estrogen receptor partial agonist. In females, blocks negative feedback effects of endogenous estradiol stimulating gonadotrophin secretion and induces ovulation.', NULL),
(96, 'Clonazepam', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Long acting GABA-A receptor positive allosteric modulator. Increases GABA activity', NULL),
(97, 'Clonidine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'alpha2 agonist in CNS. Inhibits sympathetic nerves system activity', NULL),
(98, 'Clopidogrel', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Non-competitive, irreversible P2Y12 receptor antagonist', NULL),
(99, 'Colchicine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Microtubule polymerization inhibitor. Prevents neutrophil recruitment to inflammed tissue & neutrophil adhesion. Inhibits NLRP3 inflammasome activation', NULL),
(100, 'Copper-IUD', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Prevents fertilization: decreases motility and viability of sperm and disrupts oocyte division', NULL),
(101, 'Crizanlizumab', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Humanized mAb against P-selectin. Blocks the interaction of P-selection with P-selectin glycoprotein ligand 1 on endothelial cells and platelets. Prevents aggregation of blood components', NULL),
(102, 'Cyclobenzaprine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Inhibits CNS motor neurons and 5-HT2 receptor antagonist', NULL),
(103, 'Cyclophosphamide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Crosslinks DNA (preference at guanines) to induce cell cycle arrest and apoptosis. Requires bioactivation by liver enzyme CYP2B', NULL),
(104, 'Cyclosporine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Calcineurin inhibitor (through activating cyclophillin). Prevents NFAT activation and cytokine transcription', NULL),
(105, 'Cytarabine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'DNA synthesis inhibitor. Potent inhibitor of DNA polymerase and incorporates into DNA to block chain elongation. Triphosphorylated form is active.', NULL),
(106, 'Dabigatran', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Direct thrombin inhibitor', NULL),
(107, 'Dactinomycin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Noncovalently intercalates between adjacent G:C DNA base pairs. Prevents RNA synthesis. Cell cycle non-specific', NULL),
(108, 'Dalfampridine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Voltage-dependent potassium channels inhibitor. Improves conduction in demyelinated axons ', NULL),
(109, 'Daptomycin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Binds calcium and forms pores in bacterial membrane. Causes leakage of small ions/molecules', NULL),
(110, 'Darunavir', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'HIV protease inhibitor. Prevents processing of viral polypeptide into mature proteins. Produces immature, noninfectious virions', NULL),
(111, 'Denosumab', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'mAb against RANK-L. Prevents activation of osteoclasts', NULL),
(112, 'Desmopressin (DDAVP)', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Vasopressin analog that selectively binds V2 receptor. Stimulates release of von Willebrand factor from endothelial cells', NULL),
(113, 'Dexamethasone', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Glucocorticoid receptor agonist. Activates expression of anti-inflammatory genes and inhibits expression of proinflammatory genes. Inhibits leucocyte function/trafficking and inhibits prostaglandin production.', NULL),
(114, 'Dexrazoxane', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Iron chelating agent. Interferes with generation of free radicals produced by anthracyclines that are toxic to cardiac cells.', NULL),
(115, 'Dicyclomine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Muscarinic (M1, M2, M3) antagonist. Decreases intestinal smooth muscle contraction', NULL),
(116, 'Digoxin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Na+/K+ ATPase inhibitor', NULL),
(117, 'Diltiazem', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Cardioselective L-type Ca2+ channel blocker (non-dihydropyridines)', NULL),
(118, 'Dimethyl fumarate', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Unknown', NULL),
(119, 'Dinoprostone     ', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Prostaglandin E2. Promotes cervical ripening and increases myometrial contractility', NULL),
(120, 'Diphenoxylate', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Mu opioid receptor agonist', NULL),
(121, 'Dipyridamole', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Phosphodiesterase inhibitor. Increases cAMP levels which inhibits platelet aggregation and adenosine uptake', NULL),
(122, 'Dobutamine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Beta1-adrenergic receptor agonist', NULL),
(123, 'Docusate', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Promotes incorporation of water/fat into stool', NULL),
(124, 'Dofetilide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Voltage-gated K+ channel inhibitor. ', NULL),
(125, 'Dolutegravir', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'HIV integrase inhibitor. Prevents integration of HIV DNA into host genome', NULL),
(126, 'Donepezil', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Competitive acetylcholinesterase (AChE) inhibitor', NULL),
(127, 'Dopamine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Dopamine receptor agonist (also alpha1 and beta1/2-adrenergic receptor agonist)', NULL),
(128, 'Dorzolamide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Carbonic anhydrase inhibitor. Reduces aqueous humor production ', NULL),
(129, 'Doxazosin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Alpha1-adrenergic receptor antagonist', NULL),
(130, 'Doxorubicin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Intercalates between DNA base pairs, inhibits topoisomerase II, and generates free radicals. All cause DNA strand breaks and inhibit DNA replication', NULL),
(131, 'Doxycycline', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Bacterial 30S ribosomal subunit reversible inhibitor. Prevents entry of aminoacyl-tRNA during protein synthesis', NULL),
(132, 'Dronaderone', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'K+ and Na+ channels inhibitor', NULL),
(133, 'Duloxetine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', '5-HT and NE reuptake transporters inhibitor', NULL),
(134, 'e-aminocaprioic acid', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Competitively inhibits activation of plasmin and disrupts fibrin binding (lysine analog that binds kingle domain of plasminogen). Noncompetively inhibits plasmin activity at higher concentrations', NULL),
(135, 'Eculizumab', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Humanized mAb against complement protein C5. Prevents cleavage of C5 to C5a and C5b. Blocks activation of complement terminal complex', NULL),
(136, 'Efavirenz', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Non-nucleoside reverse transcriptase inhibitors (NNRTIs). Binds reverse transcriptase and induces conformational change that inhibits enzyme activity. No metabolic activation required. ', NULL),
(137, 'Eltrombopag', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Thrombopoietin receptor agonist (nonpeptide small molecule). Stimulates megakaryocytes/platelet production and hematopoietic stem cell maintenance and differentiation', NULL),
(138, 'Eluxadoline', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Mu opioid agonist and Delta opioid antagonist', NULL),
(139, 'Emtricitabine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Nucleoside reverse transcriptase inhibitor (NRTI). Binds active site of reverse transcriptase and inhibits activity. Also incorporates into viral DNA causing chain termination. Require phosphorylation to triphosphate form (active form)', NULL),
(140, 'Enfuvirtide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Binds gp41 in complex with gp120. Prevents fusion of HIV with host cell membrane', NULL),
(141, 'Enoxaparin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Low molecular weight heparin. Factor Xa inhibitor (less effective at inhibiting thrombin)', NULL),
(142, 'Entacapone', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'COMT inhibitor. Prevents conversion of levodopa into dopamine.', NULL),
(143, 'Epinephrine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'beta > alpha adrenergic receptor agonist', NULL),
(144, 'Epitifibatide ', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Glycoprotein IIb/IIIa antagonist', NULL),
(145, 'Epoetin alfa', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'EPO receptor agonist. Stimulates proliferation and differentation of erythrocyte progenitors', NULL),
(146, 'Erlotinib', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'EGFR tyrosine kinase activity (binds ATP binding site). ', NULL),
(147, 'Erythromycin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Bacterial 50S ribosomal subunit reversible inhibitor. Blocks translocation of ribosome during protien synthesis', NULL),
(148, 'Etanercept', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Decoy TNFa receptor.Prevents TNFa binding and activation of TNFa receptor ', NULL),
(149, 'Ethambutol', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Arabinosyltransferase (EmbB) inhibitor. Prevents synthesis of arabinogalactan layer, essential component of myocobacterial cell wall', NULL),
(150, 'Ethinyl estradiol', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Estrogen receptor agonist. Activates genes important for female reproductive function', NULL),
(151, 'Ethosuximide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'T-type voltage-gated Ca++ channel inhibitor', NULL),
(152, 'Etoposide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Topoisomserase II inhibitor. Creates DNA strand breaks which disrupt DNA synthesis and induce apoptosis', NULL),
(153, 'Evolocumab', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'mAb against PCSK-9. Promotes LDL receptor recycling ', NULL),
(154, 'Exemestane', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Aromatase irreversible inhibitor (steroid analog). Blocks conversion of androgens to estrogens. Lowers estrogen levels', NULL),
(155, 'Ezetimibe', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'NPC1L1 cholesterol transporter inhibitor (intestinal brush border transporter)', NULL),
(156, 'Famotidine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Histamine receptor 2 (H2) antagonist', NULL),
(157, 'FiAsp', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Ultra fasting acting insulin', NULL),
(158, 'Filbanserin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', '5-HTA1 receptor agonist and 5-HTA2 receptor antagonist. Lowers serotonin in the brain and increases norepinephrine and dopamine neurotransmitters', NULL),
(159, 'Filgrastim', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Granulocyte-colony stimulating factor (G-CSF) analog. Stimulates the production and function of neutrophils from the bone marrow. Mobilizes hematopoietic stem cells from bone marrow into bloodstream', NULL),
(160, 'Finasteride', '2023-08-13 03:09:18', '2023-08-13 03:09:18', '5a-reductase inhibitor. Blocks the metabolism of testosterone to dihydrotestosterone (DHT). ', NULL),
(161, 'Fingolimod', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Sphingosine-1-phosphate agonist. Sequesters lymphocytes in the lymph node', NULL),
(162, 'Fish Oil', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Unknown', NULL),
(163, 'Flecainide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Voltage-gate Na+ channel inhibitor. Some K+ channel inhibition', NULL),
(164, 'Fluconazole', '2023-08-13 03:09:18', '2023-08-13 03:09:18', '14a-demethylase inhibitor. Blocks conversion of lanosterol to ergosterol. Disrupts yeast cell membrane. Blood-brain-barrier permeable', NULL),
(165, 'Flucytosine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Prodrug converted by yeast cytosine deaminase to active form 5-fluorouracil;_x000D_\nInhibits thymidylate synthetase and disrupts DNA and RNA synthesis;_x000D_\nNot effective on mold', NULL),
(166, 'Fludrocortisone', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Mineralocorticoid receptor agonist', NULL),
(167, 'Flumazenil', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Benzodiazepine antagonist', NULL),
(168, 'Fluoxetine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Serotonin reuptake inhibitor', NULL),
(169, 'Fluphenazine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Dopamine receptor antagonist ', NULL),
(170, 'Flutamide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Androgen receptor antagonist', NULL),
(171, 'Fondaparinux', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Factor Xa inhibitor (no thrombin inhibition)', NULL),
(172, 'Foscarnet', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Inhibits viral DNA polymerase activity. Binds pyrophosphate site of viral enzyme\n', NULL),
(173, 'Fostemsavir', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Binds HIV gp120 surface protein. Blocks conformational change needed for CD4 binding and virus attachment', NULL),
(174, 'Fresh frozen plasma', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Human plasma (blood component) containing coagulation factors ', NULL),
(175, 'Fulvestrant', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Binds ER and leads to degradation of receptor (inhibits estrogen signaling)', NULL),
(176, 'Furosemide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'NKCC2 co-transporter inhibitor', NULL),
(177, 'Gabapentin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Voltage-gated alpha-2-delta-1 subunit Ca++ channel inhibitor', NULL),
(178, 'Ganciclovir', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Blocks viral DNA synthesis. Inhibits viral DNA polymerase and incorporates into DNA causing chain termination. Requires activation by viral  \"thymidine kinase\" ', NULL),
(179, 'Gemfibrozil', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'PPAR-alpha agonist. Reduces hepatic VLDL production', NULL),
(180, 'Gentamicin  ', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Bacterial 30S ribosomal subunit irreversible inhibitor. Inhibits initiation of protein synthesis. Causes misreading of mRNA', NULL),
(181, 'Glatiramer acetate', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Peptide that mimics a protein in myelin. Prevents presentation of myelin autoantigen', NULL),
(182, 'Glipizide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Sulfonylurea receptor agonist. Inhibits ATP-gated K+ channel in pancreatic beta cells. Causes cell depolarization and stimulates insulin secretion. Can aid in beta cell fatigue and burnout.', NULL),
(183, 'Haloperidol', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'D2 dopamine receptor antagonist', NULL),
(184, 'Heparin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Factor Xa and thrombin inhibitor (activates antithrombin)', NULL),
(185, 'Histrelin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'GnRH receptor agonist. Overactives the system which leads to receptor downregulation. Decreases LH/FSH secretion, testosterone production from testis, or estrogen/progesterone production from ovaries', NULL),
(186, 'Hydralazine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Vascular smooth muscle K+ channel activator', NULL),
(187, 'Hydrocortisone', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Glucocorticoid receptor agonist. Activates expression of anti-inflammatory genes and inhibits expression of proinflammatory genes. Inhibits leucocyte function/trafficking and inhibits prostaglandin production.', NULL),
(188, 'Hydroxychloroquine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Weak base that accumulates in lysosomes and acidic inflammed tissue. Prevents phagolysosomal processing and antigen presentation on MHC class II', NULL),
(189, 'Hydroxyurea', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Increases hemoglobin F levels. Reduces WBC count (inhibits ribonucleotide reductase, blocks formation of deoxyribonucleotides, decreases DNA synthesis)', NULL),
(190, 'Ibuprofen', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Non-selective reversible binding COX inhibitor', NULL),
(191, 'Idarucizumab', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Fc antibody fragment against dabigatran', NULL),
(192, 'Imatinib', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Bcr-Abl tyrosine kinase inhibitor. Inhibits proliferation of leukemia cells that express Bcr-Abl. Also inhibits PDGF-R and c-Kit tyrosine kinase activity', NULL),
(193, 'Imiquimod', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Toll-like receptor 7 (TLR-7) agonist. Stimulates innate and adaptive immune cells', NULL),
(194, 'Indomethacin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Non-selective reversible COX inhibitor', NULL),
(195, 'Inhaled insulin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Very rapid correction of hyperglycemia and as mealtime coverage', NULL),
(196, 'Insulin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Insulin receptor agonist. Activates signaling pathways that affect glucose production, metabolism and utilization', NULL),
(197, 'Insulin glargine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Long acting insulin analog', NULL),
(198, 'Insulin lispro', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Fast acting insulin analog', NULL),
(199, 'Interferon Beta 1A', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Anti-inflammatory cytokine\nActivates expression of anti-inflammatory genes. Inhibits antigen presentation, T-cell activation/expansion, and inflammatory cytokine release', NULL),
(200, 'Ipilimumab', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Human mAb against CTLA-4. Enhances activation of cytotoxic T-cells for destruction of cancer cells', NULL),
(201, 'Irinotecan', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Inhibits topoisomerase I-DNA complex and prevents religation step. Single-stranded breaks lead to irreversible double-strand breaks during DNA synthesis', NULL),
(202, 'Isoniazid', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Inhibits synthesis of mycolic acid, important structural component unique to mycobacterial cell wall. Prodrug activated by mycobacterial catalase peroxidase encoded by KatG gene', NULL),
(203, 'Isoproterenol', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Non-selective beta-adrenergic receptor agonist', NULL),
(204, 'Isosorbide dinitrate', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Nitric oxide donor. Promotes vasodilation', NULL),
(205, 'IV immunoglobulins (IVIG)', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Blood product composed of pooled immunoglobulins from many people\'s plasma. Mechanism of action unclear, may interfere with macrophage uptake of autoantibody coated platelets', NULL),
(206, 'Ivabradine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Cardiac HCN channel inhibitor. Inhibits funny current (If)', NULL),
(207, 'Ivermectin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Opens glutamate sensitive chloride channels. Hyperpolarization causes paralysis and parasite death', NULL),
(208, 'Ketoconazole', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Azol anti-fungal that blocks 14-alpha-demethylase and prevents ergosterol synthesis (low dose). Human CYP inhibitor that blocks conversion of cholesterol to cortisol (high dose)', NULL),
(209, 'Labetalol', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'alpha1 and beta 1/2-adrenergic receptor antagonist', NULL),
(210, 'Lacosamide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Voltage-gated Na+ channel inhibitor', NULL),
(211, 'Lamotrigine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Blocks voltage-gated Na channels', NULL),
(212, 'Ledipasvir', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Hepatitis C NS5A inhibitor. Inhibits viral RNA synthesis complex assembly', NULL),
(213, 'Letrazole', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Aromatase reversible inhibitor. Inhibits conversion of testosterone to estradiol and androstenedione to estrone and reduces negative feedback on GnRH secretion. Induces spermatogenesis or ovulation', NULL),
(214, 'Leucovorin (folinic acid)', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Tetrahydrofolate analog taken into normal cells by folate carrier not expressed or at reduced function in some cancer cells. Bypasses normal DHFR pathway to rescue normal tissues from methotrexate toxicities. Enhances 5-FU efficacy', NULL),
(215, 'Leuprolide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'GnRH receptor agonist. Overactives the system which leads to receptor downregulation. Decreases LH/FSH secretion, testosterone production from testis, or estrogen/progesterone production from ovaries', NULL),
(216, 'Levetiracetam', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Binds to SV2A presynaptic proteins and decreases neurotransmitter release', NULL),
(217, 'Levodopa', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Dopamine precursor', NULL),
(218, 'Levothyroxine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Synthetic T4', NULL),
(219, 'L-glutamine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Generate antioxidants that help neutralize the oxidative stress causing increased stiffness of sickled RBCs. Sickle cells regain flexibility needed to carry oxygen throughout the body', NULL),
(220, 'Lidocaine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Voltage-gated Na+ channel inhibitor', NULL),
(221, 'Linezolid', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Bacterial 50S ribosomal subunit reversible inhibitor. Prevents formation of initiation complex for protein synthesis', NULL),
(222, 'Liraglutide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'GLP-1 receptor agonist (mimics GLP-1). Stimulate glucose-dependent insulin secretion (incretin effect), slows gastric emptying, induces satiety. Protective effects on pancreatic beta cells', NULL),
(223, 'Lisinopril', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Angiotensin converting enzyme (ACE) inhibitor. Inhibits the conversion of angiotensin I to active angiotensin II', NULL),
(224, 'Loperamide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Peripheral mu opioid receptor agonist. Bioavailability is <1% due to 1st pass metabolism', NULL),
(225, 'Losartan', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Angiontensin II Type 1 receptor (AT1R) antagonist. Blocks the effects of angiotensin II', NULL),
(226, 'Linaclotide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Guanylate cyclase-C agonists. cGMP activates intestinal CFTR Cl- channel. Induces salt secretion into the intestines and water follows. ', NULL),
(227, 'Lubiprostone', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Intestinal Cl- channel activator. Induces salt secretion into the intestines and water follows.', NULL),
(228, 'Magnesium sulfate', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Non-selective calcium channel blocker. Stabilizes smooth muscle membranes preventing vasospasms', NULL),
(229, 'Mannitol', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Osmotically active and cannot cross the BBB. Draws water out of the brain parenchyma and into the intravascular space. Promotes osmotic diuresis', NULL),
(230, 'Maraviroc', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Binds CCR5. Blocks interaction with HIV Env gp120 preventing membrane fusion and viral entry', NULL),
(231, 'Memantine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Non-competitive NMDA receptor antagonist', NULL),
(232, 'Menthol', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'TRPM8 (cold-activated channel) agonist', NULL),
(233, 'Meropenem ', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Looks like D-ala-D-ala, binds PBPs (transpeptidases), and blocks peptidoglycan cross-linking. Disrupts integrity of bacterial cell wall', NULL),
(234, 'Mesna', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Binds and inactivates acrolein (toxic metabolite of cyclophosphamide) in the urine. Neutralized thioester formed is excreted', NULL),
(235, 'Metformin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'AMPK activator. Activates insulin signaling pathways to reduce gluconeogenesis (liver) and GLUT4 insertion (muscle)', NULL),
(236, 'Propylthiouracil (PTU)', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'TPO inhibitor. Blocks thyroid hormone production. Also blocks peripheral conversion of T4 to T3', NULL),
(237, 'Methimazole', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'TPO inhibitor. Blocks thyroid hormone production (PTU also blocks peripheral conversion of T4 to T3)', NULL),
(238, 'Methotrexate', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Low dose: Increases levels of extracellular adenosine and adenosine receptor activation (antiinflammatory). High dose: Inhibits dihydrofolate reductase (DHFR). Blocks synthesis of precusors needed for DNA synthesis and repair (cytotoxic)', NULL),
(239, 'Methyldopa', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Converted to alpha-methyl-norepinephrine, which acts as a selective CNS alpha2 receptor agonist. Decreases sympathetic outflow', NULL),
(240, 'Methylergonovine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Directly stimulates myometrial smooth muscles to contract', NULL),
(241, 'Methylprednisolone', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Glucocorticoid receptor agonist. Activates expression of anti-inflammatory genes and inhibits expression of proinflammatory genes. Inhibits leucocyte function/trafficking and inhibits prostaglandin production.', NULL),
(242, 'Metoclopramide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', '5HT4 serotonin receptor agonist / D2 dopamine receptor antagonist', NULL),
(243, 'Metoprolol', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Beta 1-adrenergic receptor antagonist', NULL),
(244, 'Metronidazole', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Produces toxic free radicals and forms reduced intermediates that interact with and damage DNA. Prodrug', NULL),
(245, 'Midodrine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'alpha1-adrenergic receptor agonist', NULL),
(246, 'Mifepristone', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Corticosteroid receptor and progesterone receptor inhibitor', NULL),
(247, 'Milrinone', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Phosphodiesterase III (PDE3) inhibitor', NULL),
(248, 'Misoprostol', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Prostaglandin receptor agonist. Activates metalloproteinases that disrupt cervical collagen, promotes cervical ripening, and increases myometrial contractility. Causes uterine contractions', NULL),
(249, 'Mitotane', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'CYP11A1 and CYP11B1 inhibitor. Inhibits steroid hormone synthesis in adrenal cortex', NULL),
(250, 'Modafinil ', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Dopamine reuptake inhibitor', NULL),
(251, 'Morphine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Short-acting mu opioid receptor agonist', NULL),
(252, 'Mupirocin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Inhibits isoleucyl-tRNA synthase', NULL),
(253, 'Mycophenolate mofetil\n', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Inhibits inosine monophosphate dehydrogenase. Depletes cells of guanosine nucleotides.Inhibits T-cell and B-cell proliferation', NULL),
(254, 'Nafcillin\n', '2023-08-13 03:09:18', '2023-08-13 03:09:18', '', NULL),
(255, 'Naloxone', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Opioid receptor antagonist. Not orally active', NULL),
(256, 'Naproxen', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Non-selective reversible COX inhibitor. Long acting', NULL),
(257, 'Natalizumab', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'mAb against the alpha4 subunit of integrin. Prevents leukocyte extravasation into the brain and gut', NULL),
(258, 'Niacin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Unknown', NULL),
(259, 'Nifedipine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Vascular specific calcium channel blocker. Promotes relaxation of smooth muscle and vasodilation', NULL),
(260, 'Nirmatrelvir', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Reversible SARS-CoV-2 protease inhibitor', NULL),
(261, 'Nitroglycerin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Nitric oxide donor', NULL),
(262, 'Norepinephrine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'alpha > beta1-adrenergic receptor agonist', NULL),
(263, 'Norethindrone (oral)', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Progesterone receptor agonist. Inhibits ovulation and thickens cervical mucus to block sperm entry. Inhibits estrogen-driven endometrial cell proliferation and thins endometrium, decreases sperm motility in fallopian tubes', NULL),
(264, 'Nortriptyline', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Blocks 5-HT and NE reuptake transporters. 5-HT, histamine, adrenergic, muscarinic receptors antagonist', NULL),
(265, 'NPH insulin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Intermediate acting insulin', NULL),
(266, 'Nusinersen', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Antisense oligonucleotide that modulates splicing of SMN2. Rescues loss of SMN1', NULL),
(267, 'Ocrelizumab', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'mAb against CD20. Depletes B-cells', NULL),
(268, 'Octreotide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Somatostatin receptor agonist. Inhibits GH secretion', NULL),
(269, 'Ombitasvir', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Hepatitis C NS5A inhibitor. Inhibits viral RNA synthesis complex assembly', NULL),
(270, 'Omeprazole', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Irreversible H+/K+ proton pump inhibitor. Prodrug that becomes activated in the acidic parietal cell canaliculi', NULL),
(271, 'Onasemnogene abeparvovec-xioi', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Adeno-associated virus delivery of the SMN1 gene', NULL),
(272, 'Ondansetron', '2023-08-13 03:09:18', '2023-08-13 03:09:18', '5HT3 serotonin receptor antagonist', NULL),
(273, 'Oseltamivir', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Neurominidase inhibitor. Blocks release of influenza virus from infected cells', NULL),
(274, 'Ospemifine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Estrogen receptor agonist in vaginal epithelium. Builds vaginal wall thickness', NULL),
(275, 'Oxcabazepine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Voltage-gated Na channel inhibitor', NULL),
(276, 'Oxygen', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Unknown', NULL),
(277, 'Oxytocin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Oxytocin receptor agonist. Induces uterine contractions by elevating intracellular calcium', NULL),
(278, 'Paclitaxel', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Microtubule poison (prevents disassembly). Interferes with mitotic spindle function during mitosis', NULL),
(279, 'Methylnaltrexone', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Peripheral mu opioid receptor antagonist (PAMORA)', NULL),
(280, 'Paritaprevir', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Hepatitis C NS3/NS4A protease inhibitor. Prevents processing of HCV polyprotein', NULL),
(281, 'Paroxetine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Blocks the reuptake of serotonin into cells', NULL),
(282, 'Polyethyline glycol (PEG)', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Non-absorbable osmotic laxative', NULL),
(283, 'Pegloticase', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Converts uric acid to allantoin, an inert highly water-soluble metabolite excreted by the kidney', NULL),
(284, 'Pegvisomant', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Growth hormone (GH) receptor antagonist. Inhibits liver secretion of IGF-1', NULL),
(285, 'Pembrolizumab', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Humanized mAb that binds Programmed Death 1 (PD-1) receptors on T-cells that inhibit the immune response. Stimulates anti-tumor activity of T-cells. Most effective in tumors overexpressing PD-L1 (ligand for PD-1 receptor)', NULL),
(286, 'Penicillin G', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Looks like D-ala-D-ala, binds PBPs (transpeptidases), and blocks peptidoglycan cross-linking. Disrupts integrity of bacterial cell wall', NULL),
(287, 'Phenobarbital', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Increases GABA activity via increasing opening duration', NULL),
(288, 'Phenoxybenzamine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Non-selective covalent (long-acting) alpha-adrenergic receptor antagonist', NULL),
(289, 'Phentolamine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Non-selective alpha-adrenergic receptor antagonist', NULL),
(290, 'Phenylephrine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'alpha1-adrenergic receptor agonist', NULL),
(291, 'Phenytoin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Voltage-gated Na+ channel inhibitor', NULL),
(292, 'Pilocarpine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Cholinergic receptor agonist. Increase in aqueous humor outflow ', NULL),
(293, 'Pioglitazone', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'PPAR gamma agonist. Increases transcription of genes involved in insulin resistance/sensitivity', NULL),
(294, 'Piperacillin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Looks like D-ala-D-ala, binds PBPs (transpeptidases), and blocks peptidoglycan cross-linking. Disrupts integrity of bacterial cell wall', NULL),
(295, 'Polymyxins', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Cation polypeptide that binds phospholipids of gram negative cell membrane. Disrupts packaging causing leakage and cell death', NULL),
(296, 'Potassium iodide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Thyroid inhibitor. Inhibits iodine uptake and T3/T4 production', NULL),
(297, 'Pramipexole', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Dopamine receptor agonist', NULL),
(298, 'Praziquantel ', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Increases cell membrane permeability to calcium. Causes strong contractions and paralysis of worm musculature', NULL),
(299, 'Prednisone', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Glucocorticoid receptor agonist. Activates expression of anti-inflammatory genes and inhibits expression of proinflammatory genes. Inhibits leucocyte function/trafficking and inhibits prostaglandin production.', NULL),
(300, 'Primaquine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Generates reactive oxygen species. Interferes with parasite electron transport', NULL),
(301, 'Primidone ', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Metabolized to phenobarbital which increases GABA activity', NULL),
(302, 'Probenecid', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'URAT1 inhibitor. Prevents renal uric acid reabsorption', NULL);
INSERT INTO `medications` (`id`, `title`, `created_at`, `updated_at`, `description`, `image`) VALUES
(303, 'Procainamide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Voltage-gated Na+ channel inhibitor. Also inhibits K+ channels', NULL),
(304, 'Prochlorperazine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'D2 dopamine receptor antagonist', NULL),
(305, 'Promethazine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'H1 histamine receptor antagonist', NULL),
(306, 'Propranolol', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Non-selective beta-adrenergic receptor antagonist', NULL),
(307, 'Protamine sulfate', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Heparin reversal agent', NULL),
(308, 'Prucalopride', '2023-08-13 03:09:18', '2023-08-13 03:09:18', '5HT4 serotonin receptor agonist', NULL),
(309, 'Pyrantel', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Promotes acetylcholine release and inhibits cholinesterases. Leads to extensive depolarization of parasite muscles and paralysis', NULL),
(310, 'Pyrazinamide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Inhibits mycolic acid synthesis. Disrupts metabolic and transport functions of mycobacterial cell membrane. Prodrug metabolized by mycobacterial pyrazinamidase (PncA) to active form.\n\n', NULL),
(311, 'Pyridostigmine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Reversible acetylcholinesterase (AChE) inhibitor', NULL),
(312, 'Pyrimethamine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Inhibits protozoal DHFR. Prevents synthesis of tetrahydrofolate, an essential precursor for amino acids and nucleic acids.', NULL),
(313, 'Raloxifene', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Estrogen receptor agonist in bone and antagonist in breast and uterus', NULL),
(314, 'Ranolazine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Late phase N+ current (INa) inhibitor in cardiac muscle. Reduces diastolic wall tension and myocardial oxygen consumption in damaged tissue', NULL),
(315, 'Rasagiline', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'MAO-B inhibitor (preserves existing dopamine)', NULL),
(316, 'Rasburicase', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Catalyzes oxidation of uric acid to inactive soluble metabolites. Reduces uric acid levels during tumor lysis', NULL),
(317, 'Recombinant FIX', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Recombinant factor IX replacement', NULL),
(318, 'Recombinant FVIIa', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Recombinant factor VIIa replacement', NULL),
(319, 'Recombinant FVIII', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Recombinant factor VIII replacement', NULL),
(320, 'Recombinant glucagon', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Activates hepatic glucagon receptors (GPCRs) stimulating glycogenolysis', NULL),
(321, 'Recombinant human growth hormone (rhGH)', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Activates GH receptor', NULL),
(322, 'Remdesivir', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Viral RdRp inhibitor that causes delayed viral RNA chain termination at postion +3. Prodrug with triphosphate form incorporates into viral RNA', NULL),
(323, 'Rho (D) immune globulin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Ab against Rh D-antigen. Blocks development of antibodies by Rh-negative maternal immune system', NULL),
(324, 'Rifampin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Bacterial RNA polymerase inhibitor. Binds to beta subunit of RNA polymerase', NULL),
(325, 'Rifaximin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Non-absorable antibiotic that can alter gut flora', NULL),
(326, 'Riluzole', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Inhibits glutamate release and voltage-gated Na+ channels. Inhibition excitatory neurotransmitters.', NULL),
(327, 'Ritonavir', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'HIV protease inhibitor. Strong CYP3A4 inhibitor at low dose', NULL),
(328, 'Rituximab', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Chimeric mAb against CD20. Depletes CD20+ B-cells and cancer cells by antibody-dependent cellular cytotoxicity and complement induced lysis.', NULL),
(329, 'Rivaroxaban', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Directly inhibits Factor Xa', NULL),
(330, 'Romiplostim', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Thrombopoietin receptor agonist (IgG-peptide fusion/peptibody). Stimulates proliferation and survival of megakaryocytes/platelet production', NULL),
(331, 'Romosozumab', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Human mAb against sclerostin. Dual anabolic and anti-resorptive action promotes bone formation', NULL),
(332, 'Rosuvastatin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'HMG-CoA reductase inhibitor. Prevents hepatic cholesterol synthesis', NULL),
(333, 'Rotigotine ', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Dopamine receptor agonist', NULL),
(334, 'Sacubitril', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Neprilysin inhibitor. Prevents degradation of naturetic peptides', NULL),
(335, 'Salicylates', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Mechanism not fully understood. Desensitizes cutaneous nerves', NULL),
(336, 'Senna', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Stimulates colonic peristaltic action and H2O/salt secretion', NULL),
(337, 'Sildenafil', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'PDE5 inhibitor. Causes an increase in cGMP levels which leads to smooth muscle relaxation. Increased blood flow fascilitates penile erection', NULL),
(338, 'Simvastatin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'HMG-CoA reductase inhibitor. Prevents hepatic cholesterol synthesis', NULL),
(339, 'Sirolimus', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'mTOR inhibitor (activates FKBP-12). Prevents IL-2 receptor signaling and T cell proliferation', NULL),
(340, 'Sitagliptin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'DPP-4 (dipeptidyl peptidase 4) inhibitor. Prevents breakdown of GLP-1', NULL),
(341, 'Sodium Oxybate ', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'GABA modulator', NULL),
(342, 'Sofosbuvir', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Hepatitis C RNA polymerase NS5B inhibitor', NULL),
(343, 'Sotalol', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'K+ channel and beta-adrenergic receptor inhibitor', NULL),
(344, 'Spironolactone', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Mineralocorticoid receptor (MR) and androgen receptor (AR) inhibitor. Inhibits testosterone secretion (AR) and renal sodium/H2O reabsorption (MR)', NULL),
(345, 'Streptokinase', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Activates tPA. Promotes clot dissolution', NULL),
(346, 'Sucralfate', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Sucrose-aluminum salt forms protective barrier', NULL),
(347, 'Sulfadoxine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Protozoal dihydropteroate synthase inhibitor. Prevents synthesis of tetrahydrofolate, an essential precursor for amino acids and nucleic acids.', NULL),
(348, 'Sulfamethoxazole', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Competitive dihydropteroate synthase inhibitor. Prevents synthesis of tetrahydrofolate, an essential precursor for amino acids and nucleic acids', NULL),
(349, 'Sulfasalazine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Anti-inflammatory mechanism not fully understood', NULL),
(350, 'Sumatriptan', '2023-08-13 03:09:18', '2023-08-13 03:09:18', '5-HT1B receptor agonist', NULL),
(351, 'Sunitinib', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'VEGF-R, PDGF-R, c-Kit tyrosine kinases domain inhibitor. Competitively inhibits ATP binding', NULL),
(352, 'Suvorexant', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Orexin receptor antagonist', NULL),
(353, 'Tacrolimus', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Calcineurin inhibitor (activates cyclophillin). Prevents NFAT activation and cytokine transcription', NULL),
(354, 'Tamoxifen', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Estrogen receptor (ER) antagonist in mammary tissue and agonist in uterine tissue.', NULL),
(355, 'Tamsulosin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'alpha1A/D-adrenergic receptor antagonist. Promotes smooth muscle relaxation in prostatic musculature', NULL),
(356, 'Tenofovir', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Nucleoside reverse transcriptase inhibitor (NRTI). Binds active site of reverse transcriptase and inhibits activity. Also incorporates into viral DNA causing chain termination. Require phosphorylation to triphosphate form (active form)', NULL),
(357, 'Terazosin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'alpha1-adrenergic receptor antagonist. Promotes smooth muscle relaxation in prostatic musculature', NULL),
(358, 'Terbinafine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Squalene epoxidase inhibitor. Inhibits production of ergosterol and leads to accumulation of squalene which is toxic to yeast', NULL),
(359, 'Terbutaline', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Beta2-adrenergic receptor agonist. Promotes smooth muscle relaxation. ', NULL),
(360, 'Teriflunomide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Pyrimidine synthesis inhibitor. Inhibits nucleotide synthesis and leukocyte production', NULL),
(361, 'Teriparatide', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Parathyroid hormone receptor agonist. Pulsatile large dose preferentially activates osteoblast to stimulate bone formation', NULL),
(362, 'Testosterone', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Androgen receptor (AR) agonist. Promotes gene expression that develops male secondary sex characteristics', NULL),
(363, 'Tetrabenazine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Vesicular monoamine transporter type 2 (VMAT2) inhibitor. Prevents packaging of DA into vesicles', NULL),
(364, 'Tetrahydrocannabinol (THC)', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'CB1 and CB2 receptor agonist', NULL),
(365, 'Tigecycline', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Reversibly 30S ribosomal subunit inhibitor. Prevents entry of aminoacyl-tRNA during protein synthesis', NULL),
(366, 'Timolol', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Beta-adrenergic receptor antagonist. Reduces aqueous humor production ', NULL),
(367, 'Tocilizumab', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Humanized mAb against soluble and membrane bound IL-6 receptors. Prevents IL-6 signaling', NULL),
(368, 'Tofacitinib', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Janus kinase (JAK) inhibitor. Prevents intracellular inflammatory signalling downstream of multiple cytokine receptors.\n', NULL),
(369, 'Topiramate', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Voltage-gated Na+ and Ca2+ channel inhibitor and enhances GABA signaling', NULL),
(370, 'Tramadol', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'mu opioid receptor agonist.Iinhibits reuptake of serotonin and norepinephrine', NULL),
(371, 'Tranexamic acid (TXA)', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Competitively inhibits the activation of plasminogen to plasmin', NULL),
(372, 'Trastuzumab', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Humanized mAb against HER2 receptor. Blocks receptor activation and signaling. Activates antibody-dependent cellular cytotoxicity', NULL),
(373, 'Trastuzumab-deruxtecan (T-DXd)', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Backbone of trastuzumab mAb linked to topo I inhibitor. Binds HER2 receptor and internalized into tumor cell. Topo I inhibitor released by cathepsin cleavage in lysosomes of tumor cell and membrane permeable. Retains trastuzumab activity of blocking signaling and ADCC', NULL),
(374, 'Trastuzumab-emtansin \n(T-MD1)', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Backbone of trastuzumab mAb linked to microtubule inhibitor. Binds HER2 receptor and is internalized in tumor cell. mAb-microtubule inhibitor link non-cleavable.', NULL),
(375, 'Travoprost', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Prostaglandin receptor agonist. Increases aqueous humor outflow', NULL),
(376, 'Trazodone', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Serotonin reuptake inhibitor (treats depression). Blocks alpha1-adrenergic receptors. Promotes smooth muscle relaxation (treats ED)', NULL),
(377, 'Tretinoin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Retinoic acid receptor (RAR) agonist. Corrects desquamation in acne', NULL),
(378, 'Triamcinolone', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Glucocorticoid receptor agonist. Activates expression of anti-inflammatory genes and inhibits expression of proinflammatory genes. Inhibits leucocyte function/trafficking and inhibits prostaglandin production.', NULL),
(379, 'Trihexyphenidyl', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Muscarinic receptor antagonist (anti-cholinergic)', NULL),
(380, 'Trimethoprim', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Competitive bacterial DHFR (dihydrofolate reductase) inhibitor. Inhibits folate synthesis pathway', NULL),
(381, 'Ulipristal acetate', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Progesterone receptor partial agonist. Acts an a competitive antagonist with high levels of progesterone. Inhibits ovulation and makes endometrium unsuitable for implantation', NULL),
(382, 'Vaginal estrogen (estradiol or conjugated estrogen)', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Estrogen receptor (ER) agonist in vaginal epithelium. Stimulates proliferation and wall thickening', NULL),
(383, 'Valproate', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Voltage-gated Na+ and Ca2+ channel inhibitor and enhances GABA signaling', NULL),
(384, 'Vancomycin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Binds D-ala-D-ala of cell wall precursors. Inhibits elongation of peptidoglycan chain', NULL),
(385, 'Vemurafenib', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Competitive BRAF V600E inhibitor. Especially potent in blocking proliferation of melanoma cells with V600E mutation ', NULL),
(386, 'Venlafaxine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Blocks 5-HT and NE reuptake transporters', NULL),
(387, 'Verapamil', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Cardioselective L-type Ca2+ channel inhibitor', NULL),
(388, 'Vincristine', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Binds free tubulin and blocks microtubule polymerization. Loss of microtubules prevents mitotic spindle formation and arrests mitosis', NULL),
(389, 'Vitamin K', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Promotes activation of vitamin K dependent blood clotting factors ', NULL),
(390, 'Voriconazole', '2023-08-13 03:09:18', '2023-08-13 03:09:18', '14a-demethylase inhibitor. Blocks conversion of lanosterol to ergosterol. Disrupts yeast cell membrane. ', NULL),
(391, 'Voxelotor', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Allosteric modulator of hemoglobin that increases oxygen affinity and stabilizes the high affinity conformation. Decreases the concentration of deoxygenated HbS which forms polymers and reduces red blood cell sickling', NULL),
(392, 'Warfarin', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Vitamin K epoxide reductase inhibitor. Impairs production of active vitamin K dependent active clotting factors (II, VII, IX, X) and anti-clotting factors (protein S and C)', NULL),
(393, 'Zinc (Zn)', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Increases intestinal clearance of copper', NULL),
(394, 'Zoledronic acid', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Incorporates into bone and is taken up by osteoclasts. Toxic to osteoclasts and causes apoptosis. Inhibits osteoclast-mediated bone resorption and slows bone loss', NULL),
(395, 'Zolmitriptan', '2023-08-13 03:09:18', '2023-08-13 03:09:18', '5-HT1B receptor agonist', NULL),
(396, 'Zolpidem ', '2023-08-13 03:09:18', '2023-08-13 03:09:18', 'Non-benzodiazepine, GABA-benzodiazepine receptor agonists', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_04_173819_create_departments_table', 1),
(6, '2023_06_07_165811_create_casestudies_table', 2),
(7, '2023_06_08_154746_add_mode_to_casestudies', 3),
(8, '2023_06_10_035334_create_doctors_table', 4),
(9, '2023_06_11_034754_create_results_table', 5),
(10, '2023_06_11_064227_add_title_to_casestudies', 6),
(11, '2023_06_12_183029_create_groups_table', 7),
(12, '2023_06_13_151106_add_group_to_doctors_table', 8),
(13, '2023_06_18_185259_create_tests_table', 9),
(14, '2023_06_18_185356_create_diagnosis_table', 9),
(15, '2023_06_18_185432_create_medications_table', 9),
(16, '2023_06_18_190946_add_uital_signs_to_casestudies_table', 10),
(17, '2023_06_19_150319_create_sub_casestudies_table', 11),
(18, '2023_06_19_181312_make_test_nullable_in_casestudies', 12),
(19, '2023_06_19_183409_add_case_id_to_sub_casestudies', 13),
(20, '2023_06_20_145548_make_hint_image_nullable_in_sub_casestudies', 14),
(21, '2023_06_25_071104_add_quiz_to_casestudies', 15),
(22, '2023_06_25_073919_add_description_to_medications', 16),
(23, '2023_06_25_073938_add_description_to_diagnosis', 16),
(24, '2023_06_25_074001_add_description_to_tests', 16),
(26, '2023_06_27_154927_add_followupquiz_to_sub_casestudies_table', 17),
(28, '2023_06_28_181116_add_history_image_in_casestudies_table', 18),
(29, '2023_07_15_070659_create_quiz_attempts_table', 19),
(30, '2023_07_15_125859_add_comment_to_quiz_attempts_table', 20),
(31, '2023_07_15_181115_add_followup_quiz_to_quiz_attempts_table', 21),
(33, '2023_07_22_135416_add_column_to_quiz_attempts_table', 22),
(37, '2023_08_13_062208_add_image_to_tests_table', 23),
(38, '2023_08_13_062446_add_image_to_medications_table', 23),
(39, '2023_08_13_062519_add_image_to_diagnosis_table', 23);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('dphillips@uidaho.edu', 'zUpy06VUVkDs7Okcwt5oEo2Vz7Q3BKIgtD09vr8F2efEJ8WhMrutPaWj0YcIR8fg', '2023-08-16 14:55:27'),
('sameermankotia2000@gmail.com', 'O11yLRFaXFNtU6HxInZ5dP4s56V8mnpYmau3PcQ89JuueG4mmFwpkGqTig6tQ8bw', '2023-08-22 11:40:07'),
('surajkumar0859@gmail.com', 'rlfnXb5F1y5cH6MLceaaCUmsgoD07DoPq02soI9PwPpMus0jGO3GeVlzsZ38pUg6', '2023-08-23 13:47:56'),
('surajkumar9218@gmail.com', 'vrHLGCn1dzKODwEBpEzt7PLma8EkA1oGLknZ92LvhyffihFNVet9bvvEKKXrXfYR', '2023-08-21 12:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_attempts`
--

CREATE TABLE `quiz_attempts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `history` tinyint(1) DEFAULT NULL,
  `quiz_answer` text DEFAULT NULL,
  `tests` text DEFAULT NULL,
  `diagnosis` text DEFAULT NULL,
  `medication` text DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `followup_tests` text DEFAULT NULL,
  `followup_diagnosis` text DEFAULT NULL,
  `followup_medication` text DEFAULT NULL,
  `tests_score` int(11) DEFAULT NULL,
  `diagnosis_score` int(11) DEFAULT NULL,
  `medication_score` int(11) DEFAULT NULL,
  `quiz_score` int(11) DEFAULT NULL,
  `followup_quiz_tests_score` int(11) DEFAULT NULL,
  `followup_quiz_diagnosis_score` int(11) DEFAULT NULL,
  `followup_quiz_medication_score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_attempts`
--

INSERT INTO `quiz_attempts` (`id`, `case_id`, `user_id`, `history`, `quiz_answer`, `tests`, `diagnosis`, `medication`, `score`, `created_at`, `updated_at`, `comment`, `followup_tests`, `followup_diagnosis`, `followup_medication`, `tests_score`, `diagnosis_score`, `medication_score`, `quiz_score`, `followup_quiz_tests_score`, `followup_quiz_diagnosis_score`, `followup_quiz_medication_score`) VALUES
(32, 28, 14, 1, NULL, '6', '447', '2', 5, '2023-07-23 00:11:52', '2023-07-23 00:12:20', 'yes', NULL, NULL, NULL, 5, 0, 0, NULL, NULL, NULL, NULL),
(33, 27, 14, 1, NULL, '5', '444', '4', 0, '2023-07-23 00:17:43', '2023-09-01 13:09:20', 'hidden', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL),
(34, 24, 14, 1, 'Option 1', '7, 8', '447', NULL, NULL, '2023-07-23 09:42:09', '2023-07-24 09:48:21', NULL, 'followup option2 1, how are you', 'option 1', NULL, 5, 0, NULL, 0, 5, 0, NULL),
(35, 24, 15, 1, 'Option 1', '20, 22, 31', '448', '6', NULL, '2023-08-16 11:38:29', '2023-08-16 14:49:49', NULL, 'followup option2 1, hello', NULL, NULL, 0, 0, 0, 0, 5, NULL, NULL),
(36, 25, 15, 1, NULL, NULL, NULL, NULL, NULL, '2023-08-16 11:45:13', '2023-08-16 11:45:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 36, 16, 1, 'Right afferent pupillary defect. Visual Acuity OD 20/100', '315', NULL, '5', 0, '2023-08-22 11:41:45', '2023-08-22 12:09:19', 'Best game ever', NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL),
(38, 37, 16, 1, NULL, NULL, NULL, NULL, NULL, '2023-08-22 11:43:45', '2023-08-22 11:43:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 24, 16, 1, NULL, NULL, NULL, NULL, NULL, '2023-08-22 12:13:00', '2023-08-22 12:13:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 30, 15, 1, 'Right Homonymous Hemianopsia', '141', '446', '5', 0, '2023-08-28 11:33:00', '2023-09-18 15:19:49', 'hidden', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL),
(41, 36, 15, 1, NULL, NULL, NULL, NULL, NULL, '2023-08-30 13:02:07', '2023-08-30 13:02:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 38, 16, 1, 'Right afferent pupillary defect. Visual Acuity OD 20/100', '315', NULL, '199', 5, '2023-09-05 14:33:42', '2023-09-05 14:37:31', 'hidden', NULL, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL),
(43, 39, 16, 1, 'Right afferent pupillary defect. Visual Acuity OD 20/100 OS 20/20', '315', NULL, '199', 0, '2023-09-05 14:44:22', '2023-09-05 14:45:30', 'hidden', NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL),
(44, 30, 16, 1, 'Right afferent pupillary defect. Visual Acuity OD 20/100', '315', '512', '199', 0, '2023-09-08 14:42:09', '2023-11-16 16:44:59', 'hidden', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL),
(45, 27, 17, 1, NULL, NULL, NULL, NULL, NULL, '2023-09-11 16:10:49', '2023-09-11 16:10:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 26, 15, 1, NULL, NULL, NULL, NULL, NULL, '2023-11-15 13:51:44', '2023-11-15 13:51:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 40, 16, 1, 'Right afferent pupillary defect. Visual Acuity OD 20/100', '315', '512', '199', 0, '2023-12-11 16:10:12', '2023-12-11 16:37:09', 'hidden', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL),
(48, 41, 16, 1, 'Right afferent pupillary defect   Visual Acuity OD 20/100  OS 20/20', '311, 315', NULL, NULL, NULL, '2023-12-12 14:55:40', '2023-12-13 16:06:12', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `caseid` int(11) NOT NULL,
  `quizanswer` text NOT NULL,
  `testanswers` text NOT NULL,
  `diagnosisanswer` text NOT NULL,
  `medication` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `userid`, `caseid`, `quizanswer`, `testanswers`, `diagnosisanswer`, `medication`, `created_at`, `updated_at`) VALUES
(1, 12, 2, 'Option 3', 'test', 'Diagnosis', 'yes', '2023-06-11 04:53:21', '2023-06-11 04:53:21'),
(2, 12, 2, 'Option 3', 'test', 'Diagnosis', 'yes', '2023-06-11 04:53:54', '2023-06-11 04:53:54'),
(3, 12, 2, 'Option 3', 'test', 'Diagnosis', 'hello', '2023-06-11 08:19:45', '2023-06-11 08:19:45'),
(4, 12, 2, 'Option 3', 'test', 'Diagnosis', 'hello', '2023-06-13 12:18:49', '2023-06-13 12:18:49'),
(5, 12, 2, 'Option 3', 'test, test', 'Diagnosis', 'hello', '2023-06-13 12:19:34', '2023-06-13 12:19:34');

-- --------------------------------------------------------

--
-- Table structure for table `sub_casestudies`
--

CREATE TABLE `sub_casestudies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `hint_first` varchar(255) DEFAULT NULL,
  `hint_image_1` varchar(255) DEFAULT NULL,
  `hint_second` varchar(255) DEFAULT NULL,
  `hint_image_2` varchar(255) DEFAULT NULL,
  `hint_third` varchar(255) DEFAULT NULL,
  `hint_image_3` varchar(255) DEFAULT NULL,
  `followup_question` varchar(255) DEFAULT NULL,
  `followup_option_1` varchar(255) DEFAULT NULL,
  `followup_option_2` varchar(255) DEFAULT NULL,
  `followup_option_3` varchar(255) DEFAULT NULL,
  `followup_option_4` varchar(255) DEFAULT NULL,
  `followup_correct_one` varchar(255) DEFAULT NULL,
  `feedback_text` varchar(255) DEFAULT NULL,
  `feedback_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `case_id` int(11) NOT NULL,
  `followupquiz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_casestudies`
--

INSERT INTO `sub_casestudies` (`id`, `type`, `name`, `result`, `image`, `hint_first`, `hint_image_1`, `hint_second`, `hint_image_2`, `hint_third`, `hint_image_3`, `followup_question`, `followup_option_1`, `followup_option_2`, `followup_option_3`, `followup_option_4`, `followup_correct_one`, `feedback_text`, `feedback_image`, `created_at`, `updated_at`, `case_id`, `followupquiz`) VALUES
(8, NULL, 'hello', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(22, 2, 'Albinism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'followup quiz', 'option 1', 'option 2', 'option 3', 'option 5', 'option 2', 'feedback', NULL, '2023-07-01 21:07:46', '2023-07-01 21:07:46', 24, 'on'),
(23, 3, 'ADHD Screening', 'result', '1688265466.jpg', 'hint2 1', '1690136457image_first1.png', 'hint2 2', '1690136457image_second1.png', 'hint2 3', '1690136457image_third1.png', 'followup quesiton 2', 'followup option2 1', 'followup option2 2', 'followup option2 3', 'followup option2 4', 'followup option2 1', 'feedback', NULL, '2023-07-01 21:07:46', '2023-07-23 12:50:57', 24, 'on'),
(24, 1, 'medi yes', 'result', '1688265466.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'test test', 'tst1', 'tst2', 'tst3', 'tst4', 'tst3', 'feedback', NULL, '2023-07-01 21:07:46', '2023-07-16 01:35:18', 24, 'on'),
(25, 2, 'Alzheimer\'s disease', NULL, NULL, 'diag hint', NULL, 'diag hint', NULL, 'diag hint', NULL, 'followup quiz', 'option 1', 'option 2', 'option 3', 'option 5', 'option 2', 'feedback', NULL, '2023-07-18 09:52:20', '2023-07-18 10:36:45', 25, 'on'),
(26, 3, 'Acid-Fast Bacillus (AFB) Tests', 'result', '1689693740.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'feedback', NULL, '2023-07-18 09:52:20', '2023-07-18 09:52:20', 25, NULL),
(27, 1, 'medi yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'feedback', NULL, '2023-07-18 09:52:20', '2023-07-18 09:52:20', 25, NULL),
(28, 2, 'Amyotrophic lateral sclerosis (ALS)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'diagnosis', NULL, '2023-07-18 09:52:20', '2023-07-18 09:52:20', 25, NULL),
(29, 1, 'medi yes', NULL, NULL, 'Hint', NULL, 'Hint', NULL, 'Hint', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Feedback', NULL, '2023-07-18 10:39:56', '2023-07-18 10:39:56', 26, NULL),
(30, 3, 'ADHD Screening', 'result', NULL, 'Hint', NULL, 'Hint', NULL, 'Hint', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Feedback', NULL, '2023-07-18 10:39:56', '2023-07-18 10:39:56', 26, NULL),
(31, 2, 'Amyotrophic lateral sclerosis (ALS)', NULL, NULL, 'Hint', NULL, 'Hint', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'feedback', NULL, '2023-07-18 10:39:56', '2023-07-18 10:39:56', 26, NULL),
(32, 3, 'ADHD Screening', 'Result', NULL, 'Hint', NULL, 'Hint', NULL, 'Hint', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Feedback', NULL, '2023-07-18 10:39:56', '2023-07-18 10:39:56', 26, NULL),
(33, 3, 'Acetaminophen Level', 'result', '1689697229.png', 'hint', NULL, 'hint', NULL, 'hint', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'feedback', NULL, '2023-07-18 10:50:29', '2023-07-18 10:50:29', 27, NULL),
(34, 2, 'Albinism', NULL, NULL, 'Hint', NULL, 'Hint', NULL, 'Hint', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'feedback', NULL, '2023-07-18 10:50:29', '2023-07-18 10:50:29', 27, NULL),
(35, 3, 'ADHD Screening', 'result', '1689697229.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'feedback', NULL, '2023-07-18 10:50:29', '2023-07-18 10:50:29', 27, NULL),
(36, 3, 'Acetaminophen Level', 'result', '1689697294.png', 'hint', NULL, 'hint', NULL, 'hint', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'feedback', NULL, '2023-07-18 10:51:34', '2023-07-18 10:51:34', 28, NULL),
(37, 2, 'Albinism', NULL, NULL, 'Hint', NULL, 'Hint', NULL, 'Hint', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'feedback', NULL, '2023-07-18 10:51:34', '2023-07-18 10:51:34', 28, NULL),
(38, 3, 'ADHD Screening', 'result', '1689697294.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'feedback', NULL, '2023-07-18 10:51:34', '2023-07-18 10:51:34', 28, NULL),
(39, 3, 'Albumin Blood Test', 'hello', '1690083442.png', 'Hint 1', '1690134180.png', 'Hint 2', '1690134180.png', 'Hint 3', '1690134180.png', 'test questoin', 'hello', 'hi', 'how are you', 'yes', 'yes', 'yes', NULL, '2023-07-22 22:07:22', '2023-07-23 12:13:00', 24, 'on'),
(42, 1, 'Amandatine', NULL, NULL, 'a', NULL, 's', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ywsa', NULL, '2023-08-22 11:33:03', '2023-08-22 11:33:03', 35, NULL),
(43, 2, 'Alzheimer\'s disease', NULL, NULL, 'ws', NULL, 'wsw', NULL, 'wswx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tw', NULL, '2023-08-22 11:33:03', '2023-08-22 11:33:03', 35, NULL),
(44, 3, 'Acetaminophen Level', NULL, NULL, 'Unexplained, intermittent neurological symptoms suggest a potential central nervous system issue.', NULL, 'The combination of visual disturbances, balance issues, and sensory symptoms points towards a possible demyelinating disease.', NULL, 'MRI would help identify characteristic lesions of a demyelinating disease.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wewas', NULL, '2023-08-22 11:37:58', '2023-08-22 11:37:58', 37, NULL),
(45, 1, 'Trastuzumab-deruxtecan (T-DXd)', NULL, NULL, 'aaa', NULL, 'ss', NULL, 'vvv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tyf', NULL, '2023-08-22 11:37:58', '2023-08-22 11:37:58', 37, NULL),
(46, 3, 'MRI: Brain', 'Bad', NULL, 'Unexplained, intermittent neurological symptoms suggest a potential central nervous system issue.', NULL, 'The combination of visual disturbances, balance issues, and sensory symptoms points towards a possible demyelinating disease.', NULL, 'MRI would help identify characteristic lesions of a demyelinating disease.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Go team go', NULL, '2023-09-05 14:33:00', '2023-09-05 14:33:00', 38, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `title`, `created_at`, `updated_at`, `description`, `image`) VALUES
(4, 'Acetaminophen Level', NULL, NULL, 'Acetaminophen Level - measures the amount of acetaminophen (a pain reliever and fever reducer) in the blood. Used to diagnose acetaminophen overdose and monitor treatment.', NULL),
(5, 'Acid-Fast Bacillus (AFB) Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Acid-Fast Bacillus (AFB) Tests - identifies the presence of acid-fast bacilli (bacteria) in a sample. Used to diagnose tuberculosis (TB) and other mycobacterial infections.', NULL),
(6, 'ADHD Screening', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'ADHD Screening - an evaluation of symptoms, behaviors, and functional impairment to diagnose attention deficit hyperactivity disorder (ADHD).', NULL),
(7, 'Adrenocorticotropic Hormone (ACTH)', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Adrenocorticotropic Hormone (ACTH) - measures the levels of ACTH in the blood. Used to diagnose conditions affecting the pituitary gland or adrenal glands, such as adrenal insufficiency or Cushing\'s syndrome.', NULL),
(8, 'Albumin Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Albumin Blood Test - measures the level of albumin, a protein, in the blood. Used to evaluate liver function, nutrition status, and overall health.', NULL),
(9, 'Alcohol Use Screening Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Alcohol Use Screening Tests - tests to determine the presence and level of alcohol in the body. Used to diagnose alcohol abuse or dependence.', NULL),
(10, 'Aldosterone Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Aldosterone Test - measures the levels of the hormone aldosterone in the blood. Used to diagnose conditions affecting the adrenal glands, such as adrenal insufficiency or hyperaldosteronism.', NULL),
(11, 'Alkaline Phosphatase', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Alkaline Phosphatase - measures the levels of the enzyme alkaline phosphatase in the blood. Used to evaluate liver and bone health.', NULL),
(12, 'Allergy Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Allergy Blood Test - measures the levels of specific antibodies in the blood to identify allergies.', NULL),
(13, 'Allergy Skin Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Allergy Skin Test - a skin test to determine if a person is allergic to specific allergens.', NULL),
(14, 'Alpha Fetoprotein (AFP) Tumor Marker Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Alpha Fetoprotein (AFP) Tumor Marker Test - measures the level of alpha-fetoprotein in the blood. Used as a marker for certain cancers, such as liver cancer.', NULL),
(15, 'Alpha-1 Antitrypsin Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Alpha-1 Antitrypsin Test - measures the levels of the protein alpha-1 antitrypsin in the blood. Used to diagnose alpha-1 antitrypsin deficiency, which can lead to liver and lung diseases.', NULL),
(16, 'Alpha-Fetoprotein (AFP) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Alpha-Fetoprotein (AFP) Test - measures the level of alpha-fetoprotein in the blood. Used to monitor certain cancers, such as liver cancer, and to screen for neural tube defects during pregnancy.', NULL),
(17, 'ALT Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'ALT Blood Test - measures the levels of the enzyme ALT in the blood. Used to evaluate liver function.', NULL),
(18, 'Ammonia Levels', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Ammonia Levels - measures the levels of ammonia in the blood. Used to diagnose liver and neurological disorders.', NULL),
(19, 'Amniocentesis (amniotic fluid test)', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Amniocentesis (amniotic fluid test) - a procedure to obtain a sample of the amniotic fluid surrounding the fetus. Used to diagnose certain chromosomal or genetic disorders, such as Down syndrome.', NULL),
(20, 'Amylase Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Amylase Test - measures the levels of the enzyme amylase in the blood. Used to diagnose and monitor pancreatitis.', NULL),
(21, 'ANA (Antinuclear Antibody) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'ANA (Antinuclear Antibody) Test - measures the levels of antinuclear antibodies in the blood. Used to diagnose autoimmune disorders, such as systemic lupus erythematosus (SLE).', NULL),
(22, 'Anion Gap Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Anion Gap Blood Test - measures the difference between certain ions in the blood. Used to evaluate acid-base balance and detect certain metabolic disorders.', NULL),
(23, 'Anoscopy', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Anoscopy - a visual examination of the anus and lower rectum using a lighted instrument. Used to diagnose and treat conditions affecting the anus and rectum, such as hemorrhoids or anal fissures.', NULL),
(24, 'Anti-Müllerian Hormone Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Anti-Müllerian Hormone Test - measures the levels of anti-Müllerian hormone in the blood. Used to evaluate ovarian function and to predict the onset of menopause.', NULL),
(25, 'Antibiotic Sensitivity Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Antibiotic Sensitivity Test - a test to determine which antibiotics are effective against a specific bacteria. Used to guide the selection of antibiotics for treatment of infections.', NULL),
(26, 'Antibody Serology Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Antibody Serology Tests - tests to measure the levels of specific antibodies in the blood. Used to diagnose infections and autoimmune disorders.', NULL),
(27, 'Antineutrophil Cytoplasmic Antibodies (ANCA) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Antineutrophil Cytoplasmic Antibodies (ANCA) Test - measures the levels of antineutrophil cytoplasmic antibodies in the blood. Used to diagnose autoimmune vasculitis, such as Wegener\'s granulomatosis.', NULL),
(28, 'Appendicitis Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Appendicitis Tests - tests to diagnose appendicitis, including a physical exam, blood tests, and imaging tests such as ultrasound or CT scan.', NULL),
(29, 'Arterial Blood Gas (ABG) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Arterial Blood Gas (ABG) Test - measures the levels of oxygen and carbon dioxide in the blood and the acid-base balance of the blood. Used to diagnose and monitor lung function and conditions affecting the respiratory system.', NULL),
(30, 'AST Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'AST Test - measures the levels of the enzyme AST in the blood. Used to evaluate liver function and to diagnose liver diseases, such as hepatitis.', NULL),
(31, 'At-Home Medical Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'At-Home Medical Tests - self-administered medical tests, such as pregnancy tests or home cholesterol tests, used for convenient and private health screening.', NULL),
(32, 'Autism Spectrum Disorder (ASD) Screening', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Autism Spectrum Disorder (ASD) Screening - an evaluation of symptoms and behaviors to diagnose autism spectrum disorder (ASD).', NULL),
(33, 'Autonomic Testing', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Autonomic Testing: Evaluates the function of the autonomic nervous system, which controls unconscious body processes such as heart rate and blood pressure.', NULL),
(34, 'Bacteria Culture Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Bacteria Culture Test: A sample of fluid or tissue is taken and grown in a lab to identify the specific type of bacteria present, which can indicate an infection.', NULL),
(35, 'Bacterial Vaginosis Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Bacterial Vaginosis Test: Tests for the presence of bacterial vaginosis, an imbalance in the normal bacteria found in the vagina.', NULL),
(36, 'Balance Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Balance Tests: Assesses a person\'s balance and coordination, useful for identifying conditions such as vestibular problems or neuropathy.', NULL),
(37, 'Barium Swallow', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Barium Swallow: A test to evaluate the digestive system, involves drinking a contrast solution containing barium and taking X-rays.', NULL),
(38, 'Basic Metabolic Panel (BMP)', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Basic Metabolic Panel (BMP): Measures levels of glucose, electrolytes, kidney function, and fluid balance.', NULL),
(39, 'BCR ABL Genetic Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'BCR ABL Genetic Test: Tests for the Philadelphia chromosome, a genetic marker associated with Chronic Myeloid Leukemia.', NULL),
(40, 'Beta 2 Microglobulin (B2M) Tumor Marker Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Beta 2 Microglobulin (B2M) Tumor Marker Test: A blood test to measure levels of beta-2 microglobulin, which can indicate the presence of certain types of cancer.', NULL),
(41, 'Bilirubin Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Bilirubin Blood Test: Measures the level of bilirubin in the blood, which can indicate liver or blood disorders.', NULL),
(42, 'Bilirubin in Urine', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Blood Alcohol Level: Tests the level of alcohol in a person\'s bloodstream, used to determine alcohol impairment.', NULL),
(43, 'Blood Alcohol Level', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Blood Differential: Analyzes the different types of cells in a blood sample, used to diagnose blood disorders or infections.', NULL),
(44, 'Blood Differential', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Blood Glucose Test: Measures the level of glucose in the blood, used to diagnose and manage diabetes.', NULL),
(45, 'Blood Glucose Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Blood in Urine: Tests for the presence of red blood cells in the urine, which can indicate kidney or bladder problems.', NULL),
(46, 'Blood in Urine', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Blood Smear: A sample of blood is spread on a slide and examined under a microscope, used to diagnose blood disorders such as anemia.', NULL),
(47, 'Blood Smear', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Blood Smear: A blood smear is a laboratory test where a drop of blood is spread out on a glass slide to examine the shape and size of individual blood cells under a microscope. This test is done to help diagnose various conditions such as anemia, leukemia, and infections.', NULL),
(48, 'Bone Density Scan', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Bone Density Scan: A bone density scan is a type of X-ray that measures the mineral density of bones, especially the spine, hip, and wrist. This test is done to assess the risk of osteoporosis and other bone conditions.', NULL),
(49, 'Bone Marrow Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Bone Marrow Tests: Bone marrow tests involve removing a sample of bone marrow through a needle inserted into the hipbone. The sample is then examined under a microscope to look for abnormal cells and diagnose conditions such as anemia, leukemia, and lymphoma.', NULL),
(50, 'BRAF Genetic Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'BRAF Genetic Test: The BRAF genetic test is a laboratory test that analyzes the DNA for mutations in the BRAF gene. This test can be done to help diagnose certain types of cancer, including melanoma and colon cancer.', NULL),
(51, 'BRCA Genetic Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'BRCA Genetic Test: The BRCA genetic test is a laboratory test that analyzes the DNA for mutations in the BRCA1 and BRCA2 genes. This test can be done to assess the risk of breast and ovarian cancers.', NULL),
(52, 'Breast Biopsy', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Breast Biopsy: A breast biopsy is a procedure where a small tissue sample is removed from the breast for examination under a microscope. This test is done to diagnose breast cancer or other breast conditions.', NULL),
(53, 'Bronchoscopy and Bronchoalveolar Lavage (BAL)', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Bronchoscopy and Bronchoalveolar Lavage (BAL): Bronchoscopy is a procedure where a flexible tube with a camera is inserted through the nose or mouth into the lungs. Bronchoalveolar lavage (BAL) is a procedure where fluid is squirted into the lungs through the bronchoscope and then collected for analysis. These tests are done to diagnose lung conditions such as infections, inflammation, and cancer.', NULL),
(54, 'BUN (Blood Urea Nitrogen)', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'BUN (Blood Urea Nitrogen): BUN is a laboratory test that measures the level of urea nitrogen in the blood. Urea nitrogen is a waste product of protein metabolism. This test is done to assess kidney function and monitor patients with kidney disease.', NULL),
(55, 'Burn Evaluation', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Burn Evaluation: A burn evaluation is a physical examination to assess the extent and severity of a burn injury. This evaluation is done to determine the type and amount of treatment needed, including wound care and pain management.', NULL),
(56, 'C-Peptide Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'C-Peptide Test: The C-peptide test is a laboratory test that measures the level of C-peptide in the blood. C-peptide is a byproduct of insulin production. This test is done to diagnose type 1 and type 2 diabetes, assess insulin secretion, and monitor treatment efficacy.', NULL),
(57, 'C-Reactive Protein (CRP) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'C-Reactive Protein (CRP) Test: This is a blood test that measures the amount of CRP, a protein that is produced by the liver in response to inflammation. The test can be used to help diagnose an infection, inflammation, injury, or some autoimmune diseases.', NULL),
(58, 'C. diff Testing', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'C. diff Testing: This test is used to detect the presence of Clostridium difficile bacteria in the stool, which can cause severe diarrhea and colitis.', NULL),
(59, 'CA 19-9 Blood Test (Pancreatic Cancer)', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'CA 19-9 Blood Test (Pancreatic Cancer): CA 19-9 is a type of protein that is produced by certain types of cancer cells, including those found in the pancreas. A high level of CA 19-9 in the blood can indicate the presence of pancreatic cancer.', NULL),
(60, 'CA-125 Blood Test (Ovarian Cancer)', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'CA-125 Blood Test (Ovarian Cancer): This test measures the amount of the CA-125 protein in the blood, which is produced by ovarian cancer cells. A high level of CA-125 can indicate the presence of ovarian cancer.', NULL),
(61, 'Calcitonin Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Calcitonin Test: This is a blood test that measures the amount of calcitonin, a hormone produced by the thyroid gland. It is used to diagnose hyperparathyroidism and medullary thyroid cancer.', NULL),
(62, 'Calcium Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Calcium Blood Test: This test measures the amount of calcium in the blood, which is important for proper muscle and nerve function, as well as for the formation of bones and teeth. High or low levels of calcium can indicate a variety of health problems.', NULL),
(63, 'Calcium in Urine Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Calcium in Urine Test: This test measures the amount of calcium in a urine sample. High levels of calcium in the urine can indicate problems with the kidneys, parathyroid gland, or bones.', NULL),
(64, 'Carbon Dioxide (CO2) in Blood', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Carbon Dioxide (CO2) in Blood: This test measures the amount of CO2 in the blood, which is a waste product of cellular metabolism. It can be used to help diagnose problems with the respiratory system or kidney function.', NULL),
(65, 'Catecholamine Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Catecholamine Tests: This group of tests measures the levels of catecholamines, hormones produced by the adrenal gland, in the blood. Catecholamine tests are used to diagnose problems with the adrenal gland or to detect certain types of tumors.', NULL),
(66, 'CCP Antibody Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'CCP Antibody Test: This is a blood test that measures the presence of antibodies to cyclic citrullinated peptides (CCPs), which are proteins found in joints. The test can be used to help diagnose rheumatoid arthritis.', NULL),
(67, 'CD4 Lymphocyte Count', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'CD4 Lymphocyte Count: This is a blood test that measures the number of CD4 cells in the blood. CD4 cells are a type of white blood cell that help the body fight infection. A low CD4 count can indicate that a person has a weakened immune system, such as in HIV infection.', NULL),
(68, 'CEA Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'CEA Test: This is a blood test that measures the level of carcinoembryonic antigen (CEA), a protein produced by some types of cancer cells. The test can be used to monitor the progression of certain types of cancer, such as colorectal cancer.', NULL),
(69, 'Celiac Disease Screening', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Celiac Disease Screening: This group of tests is used to diagnose celiac disease, an autoimmune condition that affects the small intestine and interferes with the absorption of nutrients from food. The tests can include blood tests, stool tests, and biopsy of the small intestine.', NULL),
(70, 'Cerebrospinal Fluid (CSF) Analysis', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Cerebrospinal Fluid (CSF) Analysis: This test involves collecting a sample of the fluid that surrounds the brain and spinal cord, known as cerebrospinal fluid. The sample is then tested to help diagnose conditions such as infections, bleeding, and certain types of tumors.', NULL),
(71, 'Ceruloplasmin Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Ceruloplasmin Test - measures the level of ceruloplasmin, a protein in the blood involved in iron metabolism. This test is used to diagnose Wilson\'s disease, a rare genetic disorder that affects copper metabolism.', NULL),
(72, 'Chickenpox and Shingles Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Chickenpox and Shingles Tests - used to diagnose chickenpox or shingles by detecting the presence of the varicella zoster virus in a sample of blood or skin.', NULL),
(73, 'Chlamydia Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Chlamydia Test - a sexually transmitted infection (STI) test used to diagnose chlamydia, a bacterial infection that can cause genital, rectal, or eye infections.', NULL),
(74, 'Chloride Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Chloride Blood Test - measures the amount of chloride in the blood. This test is often included in a comprehensive metabolic panel to evaluate electrolyte levels and help diagnose conditions such as dehydration, metabolic alkalosis, or kidney disease.', NULL),
(75, 'Cholesterol Levels', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Cholesterol Levels - a blood test that measures the levels of low-density lipoprotein (LDL), high-density lipoprotein (HDL), and total cholesterol in the blood. This test is used to evaluate heart disease risk and monitor treatment for high cholesterol.', NULL),
(76, 'Chorionic Villus Sampling (CVS)', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Chorionic Villus Sampling (CVS) - a prenatal test that involves taking a small sample of tissue from the placenta to diagnose genetic disorders or chromosomal abnormalities in a developing fetus.', NULL),
(77, 'Chymotrypsin in Stool', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Chymotrypsin in Stool - measures the level of an enzyme called chymotrypsin in a stool sample. This test is used to evaluate the function of the pancreas and diagnose digestive disorders such as pancreatitis.', NULL),
(78, 'Coagulation Factor Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Coagulation Factor Tests - measures the levels of various proteins involved in blood clotting. This test is used to diagnose bleeding disorders, monitor the effectiveness of anticoagulant medications, or assess the risk of excessive bleeding during surgery.', NULL),
(79, 'Cognitive Testing', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Cognitive Testing - assesses mental abilities and skills, such as memory, attention, language, and problem-solving. This test is used to diagnose cognitive disorders, evaluate the impact of neurological conditions, or assess cognitive function after a head injury.', NULL),
(80, 'Cold Stimulation Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Cold Stimulation Test - measures the body\'s response to cold exposure by monitoring changes in heart rate, blood pressure, and other physiological parameters. This test is used to diagnose neurogenic syncope, a type of fainting disorder caused by a malfunction in the nervous system\'s response to cold exposure.', NULL),
(81, 'Colorectal Cancer Screening Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Colorectal Cancer Screening Tests - a group of tests used to detect colorectal cancer, such as colonoscopy, stool tests, and X-rays.', NULL),
(82, 'Colposcopy', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Colposcopy - an exam used to examine the cervix, vulva, and vagina for signs of abnormal or precancerous cells.', NULL),
(83, 'Complement Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Complement Blood Test - measures the levels of proteins in the blood that make up the complement system, which is involved in the body\'s immune response. This test is used to diagnose autoimmune diseases or monitor the effectiveness of treatment.', NULL),
(84, 'Complete Blood Count (CBC)', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Complete Blood Count (CBC) - a blood test that measures various components of the blood, including red and white blood cells and platelets. This test is used to diagnose and monitor a wide range of conditions, including anemia, infections, and blood disorders.', NULL),
(85, 'Comprehensive Metabolic Panel (CMP)', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Comprehensive Metabolic Panel (CMP) - a blood test that measures the levels of various substances in the blood, including glucose, electrolytes, and liver and kidney function markers. This test is used to diagnose and monitor a wide range of medical conditions.', NULL),
(86, 'Concussion Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Concussion Tests: Concussion tests are a series of physical, cognitive, and balance assessments used to diagnose a concussion and evaluate the severity of injury. The tests can include a Glasgow Coma Scale assessment, memory and cognitive tests, and balance assessments. They help determine the extent of injury and guide treatment decisions.', NULL),
(87, 'Cord Blood Testing and Banking', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Cord Blood Testing and Banking: Cord blood testing is a medical procedure performed on the blood left in the placenta and umbilical cord after birth. It can be collected and stored for future use in a process known as cord blood banking. The tests can be used to diagnose and treat various blood disorders, including leukemia, anemia, and genetic disorders.', NULL),
(88, 'Cortisol Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Cortisol Test: The cortisol test measures the level of cortisol, a stress hormone, in the blood, urine, or saliva. It is used to diagnose adrenal gland disorders such as Cushing\'s disease and adrenal insufficiency.', NULL),
(89, 'Creatine Kinase', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Creatine Kinase: Creatine kinase (CK) is an enzyme found in the heart, brain, and skeletal muscles. The CK test measures the level of CK in the blood and is used to diagnose muscle damage, including heart attack and muscle diseases.', NULL),
(90, 'Creatinine Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Creatinine Test: The creatinine test measures the level of creatinine in the blood. Creatinine is a waste product produced by muscle metabolism and filtered from the blood by the kidneys. The test is used to assess kidney function and diagnose kidney disease.', NULL),
(91, 'Crystals in Urine', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Crystals in Urine: The test for crystals in urine checks for the presence of tiny crystal-like particles in a urine sample. The test can help diagnose various urinary tract disorders, including urinary tract infections and kidney stones.', NULL),
(92, 'CSF Immunoglobulin G (IgG) Index', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'CSF Immunoglobulin G (IgG) Index: The CSF IgG index measures the level of immunoglobulin G (IgG) in the cerebrospinal fluid (CSF). It is used to diagnose central nervous system infections such as meningitis.', NULL),
(93, 'Cytomegalovirus (CMV) Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Cytomegalovirus (CMV) Tests: Cytomegalovirus (CMV) tests detect the presence of the CMV virus in blood, urine, saliva, or other body fluids. CMV is a common viral infection that can cause serious health problems in people with weakened immune systems.', NULL),
(94, 'D-Dimer Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'D-Dimer Test: The D-dimer test measures a substance that is produced when a blood clot breaks down. The test is used to help diagnose deep vein thrombosis (DVT) and pulmonary embolism.', NULL),
(95, 'Dengue Fever Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Dengue Fever Test: The dengue fever test detects the presence of the dengue virus in a blood sample. Dengue fever is a viral illness transmitted by mosquitoes that can cause severe fever, joint and muscle pain, and a rash.', NULL),
(96, 'Dental Exam', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Dental Exam: A dental exam is a comprehensive assessment of a patient\'s oral health, including a visual examination of the teeth, gums, and oral tissues, and x-rays to check for cavities and other conditions. The exam is used to diagnose and prevent dental problems, such as tooth decay and gum disease.', NULL),
(97, 'Depression Screening', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Depression Screening: Depression screening tests are questionnaires used to evaluate the symptoms of depression and determine the need for further evaluation and treatment.', NULL),
(98, 'Developmental and Behavioral Screening Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Developmental and Behavioral Screening Tests: Developmental and behavioral screening tests assess a child\'s developmental milestones and behaviors to identify any delays or problems. The tests can include assessments of language, motor skills, and social skills.', NULL),
(99, 'DHEA Sulfate Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'DHEA Sulfate Test: This test measures the level of DHEA-S (Dehydroepiandrosterone sulfate) in the blood, a hormone produced by the adrenal glands. It is usually used to evaluate adrenal gland function, androgen status and to diagnose adrenal and pituitary disorders.', NULL),
(100, 'Diabetes Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Diabetes Tests: This encompasses various tests used to diagnose and monitor diabetes, including Fasting Plasma Glucose Test (FPG), Oral Glucose Tolerance Test (OGTT), Hemoglobin A1C (HbA1c) test, Random Plasma Glucose Test (RPG). They help to measure the blood sugar levels to diagnose and monitor diabetes.', NULL),
(101, 'Diabetic Foot Exam', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Diabetic Foot Exam: This is a physical examination of the feet of people with diabetes to check for any sores, cuts, blisters, or other signs of injury. The exam helps to identify potential problems early and prevent diabetic foot ulcers, which can lead to amputation.', NULL),
(102, 'Differential Diagnosis', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Differential Diagnosis: This is a process where a doctor considers a list of possible conditions that could be causing a patient\'s symptoms and then works to eliminate conditions one by one until a final diagnosis is reached.', NULL),
(103, 'Doppler Ultrasound', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Doppler Ultrasound: This is a type of ultrasound that uses sound waves to measure the speed and direction of blood flow in the body. It can be used to evaluate blood flow in blood vessels, the heart, and other organs.', NULL),
(104, 'Down Syndrome Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Down Syndrome Tests: This includes various tests to diagnose Down Syndrome, such as Prenatal screening tests (First trimester screening, Second trimester screening), Diagnostic tests (Chorionic Villus Sampling (CVS), Amniocentesis). They help in detecting the genetic condition in a developing fetus or newborn.', NULL),
(105, 'Drug Testing', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Drug Testing: This involves various tests to detect the presence of drugs or their metabolites in a person\'s urine, blood, hair, or saliva. It is usually performed to monitor drug use or as a condition of employment or participation in certain activities.', NULL),
(106, 'Drug Use Screening Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Drug Use Screening Tests: This involves tests that help to identify individuals who may be using drugs. Examples include urine drug tests, hair drug tests, and saliva drug tests.', NULL),
(107, 'Dysphagia Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Dysphagia Tests: This involves various tests to evaluate difficulty in swallowing (dysphagia). Examples include Barium Swallow Study, Endoscopic Evaluation, Fiberoptic Endoscopic Evaluation of Swallowing (FEES). They help in diagnosing the underlying cause of dysphagia.', NULL),
(108, 'Elastography', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Elastography: This is a type of medical imaging that uses ultrasound to measure the stiffness of tissue. It can be used to evaluate the liver, breast, thyroid, and other organs.', NULL),
(109, 'Electrocardiogram', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Electrocardiogram (ECG or EKG): This test records the electrical activity of the heart, helping to diagnose various heart conditions such as arrhythmias, heart attack, and heart muscle damage.', NULL),
(110, 'Electrolyte Panel', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Electrolyte Panel: This test measures the levels of electrolytes (sodium, potassium, chloride, and bicarbonate) in the blood. It is used to help diagnose and monitor conditions that can cause an electrolyte imbalance such as dehydration, kidney disease, and heart failure.', NULL),
(111, 'Electromyography (EMG) and Nerve Conduction Studies', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Electromyography (EMG) and Nerve Conduction Studies: These tests evaluate the electrical activity of muscles and nerves. EMG helps to diagnose nerve and muscle disorders such as peripheral neuropathy, myopathy, and radiculopathy. Nerve Conduction Studies measure the speed of electrical signals as they travel through nerves to help diagnose nerve damage or disease.', NULL),
(112, 'Epithelial Cells in Urine', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Epithelial Cells in Urine: This test measures the presence of epithelial cells, which are cells that line the surfaces of the body, in a person\'s urine. This can help to diagnose a urinary tract infection or other bladder problems.', NULL),
(113, 'Erythrocyte Sedimentation Rate (ESR)', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Erythrocyte Sedimentation Rate (ESR): This test measures the speed at which red blood cells settle at the bottom of a test tube. An elevated ESR can indicate inflammation or infection, but it is not a specific diagnostic test.', NULL),
(114, 'Esophageal pH Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Esophageal pH Test: This test measures the pH (acid level) in the esophagus, the tube that connects the mouth to the stomach. It is used to diagnose gastroesophageal reflux disease (GERD) or other acid reflux disorders.', NULL),
(115, 'Estrogen Levels Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Estrogen Levels Test: This test measures the levels of estrogen, a female sex hormone, in the blood. It can be used to help diagnose conditions such as infertility, menstrual problems, or estrogen-related cancers.', NULL),
(116, 'Estrogen Receptor, Progesterone Receptor Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Estrogen Receptor, Progesterone Receptor Tests: These tests evaluate the presence of estrogen and progesterone receptors in tissue samples. They are used to help diagnose breast cancer and determine the best course of treatment.', NULL),
(117, 'Fall Risk Assessment', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Fall Risk Assessment: This is an evaluation of a person\'s risk of falling. It includes an assessment of the person\'s physical and cognitive abilities, home environment, and other factors that may contribute to a fall.', NULL),
(118, 'Fasting for a Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Fasting for a Blood Test: Some blood tests require the person to fast for a certain period of time before the test. Fasting helps to ensure accurate results and is often required for tests that measure glucose and lipids in the blood.', NULL),
(119, 'Fecal Occult Blood Test (FOBT)', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Fecal Occult Blood Test (FOBT): This test checks for hidden (occult) blood in a person\'s stool, which can be a sign of colorectal cancer or other digestive disorders.', NULL),
(120, 'Ferritin Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Ferritin Blood Test: This test measures the levels of ferritin, a protein that stores iron in the body, in the blood. It is used to diagnose iron-deficiency anemia, hemochromatosis, or other iron-related disorders.', NULL),
(121, 'Fetal Alcohol Spectrum Disorders (FASD) Screening', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Fetal Alcohol Spectrum Disorders (FASD) Screening: This is a series of tests performed during pregnancy or after birth to determine if a baby has been exposed to alcohol and if they may have fetal alcohol syndrome (FAS) or another type of FASD.', NULL),
(122, 'Flu (Influenza) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Flu (Influenza) Test: This test checks for the presence of the influenza virus in a person\'s respiratory secretions. It can help diagnose the flu and determine the best course of treatment.', NULL),
(123, 'Fluoroscopy', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Fluoroscopy: This is a type of medical imaging that uses X-rays to produce real-time images of internal structures in the body. It can be used to evaluate the digestive tract, lungs, heart, and other organs.', NULL),
(124, 'Follicle-Stimulating Hormone (FSH) Levels Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Follicle-Stimulating Hormone (FSH) Levels Test: This test measures the level of follicle-stimulating hormone (FSH) in the blood. FSH is produced by the pituitary gland and helps regulate the menstrual cycle and fertility in women and sperm production in men. The test may be used to diagnose infertility, menstrual irregularities, and other hormonal imbalances.', NULL),
(125, 'Food Allergy Testing', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Food Allergy Testing: Food allergy testing involves skin prick tests or blood tests to determine if an individual has an allergic reaction to certain foods. This test is used to diagnose food allergies and to monitor the severity of an allergy.', NULL),
(126, 'Free Light Chains', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Free Light Chains: This test measures the levels of free light chains in the blood. Free light chains are abnormal proteins produced by abnormal plasma cells and are found in increased levels in several diseases, including multiple myeloma and other types of blood cancer.', NULL),
(127, 'Fungal Culture Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Fungal Culture Test: This test involves growing a sample of fungi from a patient\'s body to determine the type of fungus causing an infection. This test is used to diagnose fungal infections and to monitor the effectiveness of treatment.', NULL),
(128, 'G6PD Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'G6PD Test: The G6PD (glucose-6-phosphate dehydrogenase) test is used to diagnose G6PD deficiency, an inherited condition that can cause red blood cells to break down (hemolysis) in response to certain triggers.', NULL),
(129, 'Galactosemia Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Galactosemia Tests: These tests diagnose galactosemia, a rare inherited disorder in which the body is unable to process the sugar galactose. Galactosemia can cause severe health problems if left untreated.', NULL),
(130, 'Gamma-glutamyl Transferase (GGT) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Gamma-glutamyl Transferase (GGT) Test: This test measures the level of the enzyme GGT in the blood. Elevated levels of GGT may indicate liver or bile duct damage or disease, such as hepatitis, cirrhosis, or gallstones.', NULL),
(131, 'Gastric Emptying Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Gastric Emptying Tests: These tests measure how quickly food leaves the stomach and enters the small intestine. They may be used to diagnose gastroparesis (a condition in which the muscles of the stomach do not contract normally), abdominal pain, nausea, and vomiting.', NULL),
(132, 'Glaucoma Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Glaucoma Tests: Glaucoma tests are used to detect the presence and severity of glaucoma, a group of eye conditions that can damage the optic nerve and cause vision loss. These tests include measuring eye pressure, evaluating the optic nerve, and testing peripheral vision.', NULL),
(133, 'Globulin Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Globulin Test: This test measures the level of globulins in your blood, which are a type of protein that helps fight infections and diseases. It helps diagnose various conditions such as liver disease, inflammation, and multiple myeloma.', NULL),
(134, 'Glomerular Filtration Rate (GFR) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Glomerular Filtration Rate (GFR) Test: This test measures the rate at which the kidneys filter waste and excess substances from the blood. It\'s used to detect early kidney damage or dysfunction, and monitor the progression of chronic kidney disease.', NULL),
(135, 'Glucagon Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Glucagon Blood Test: This test measures the level of glucagon in the blood, which is a hormone produced by the pancreas that regulates blood sugar levels. It\'s used to diagnose pancreatic diseases, such as diabetes.', NULL),
(136, 'Glucose in Urine Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Glucose in Urine Test: This test checks for the presence of glucose in the urine, which can be a sign of high blood sugar levels and indicate diabetes.', NULL),
(137, 'Gonorrhea Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Gonorrhea Test: This test is used to diagnose a sexually transmitted infection caused by the bacteria Neisseria gonorrhoeae.', NULL),
(138, 'Gram Stain', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Gram Stain: This is a laboratory technique used to identify bacteria by staining a sample and observing it under a microscope.', NULL),
(139, 'Growth Hormone Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Growth Hormone Tests: These tests measure the levels of growth hormone in the blood, which regulates growth and metabolism. They\'re used to diagnose conditions such as growth hormone deficiency, acromegaly (an excess of growth hormone), and others.', NULL),
(140, 'Haptoglobin (HP) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Haptoglobin (HP) Test: This test measures the level of haptoglobin in the blood, which is a protein that binds to and removes hemoglobin (the oxygen-carrying molecule in red blood cells) from the bloodstream. It\'s used to diagnose various conditions such as anemia, liver disease, and inflammation.', NULL),
(141, 'Hearing Tests for Adults', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Hearing Tests for Adults: These tests are used to assess hearing in adults and diagnose hearing loss, which can be caused by various factors such as age, noise exposure, and disease.', NULL),
(142, 'Hearing Tests for Children', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Hearing Tests for Children: These tests are used to assess hearing in children and diagnose hearing loss, which can be congenital or acquired.', NULL),
(143, 'Heart Disease Risk Assessment', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Heart Disease Risk Assessment: This test involves evaluating various risk factors for heart disease, such as age, family history, smoking habits, and others, to determine the likelihood of developing heart disease.', NULL),
(144, 'Heavy Metal Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Heavy Metal Blood Test: This test measures the levels of heavy metals (such as lead, mercury, and others) in the blood, which can be toxic in high levels. It\'s used to diagnose heavy metal poisoning and monitor treatment.', NULL),
(145, 'Helicobacter Pylori (H. Pylori) Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Helicobacter Pylori (H. Pylori) Tests: These tests are used to diagnose an infection caused by the bacterium Helicobacter pylori, which can cause peptic ulcers and other digestive problems.', NULL),
(146, 'Hematocrit Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Hematocrit Test: This test measures the percentage of red blood cells in a sample of blood, which is an indicator of the body\'s ability to transport oxygen. It\'s used to diagnose anemia, dehydration, and other conditions.', NULL),
(147, 'Hemoglobin A1C (HbA1c) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Hemoglobin A1C (HbA1c) Test: This test measures the average blood sugar level over the past 2-3 months, which can be an indicator of uncontrolled diabetes.', NULL),
(148, 'Hemoglobin Electrophoresis', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Hemoglobin Electrophoresis: This test separates hemoglobin into its different types, such as hemoglobin A, B, and others, and is used to diagnose various blood disorders, such as sickle cell anemia.', NULL),
(149, 'Hemoglobin Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Hemoglobin Test: This test measures the amount of hemoglobin in the blood, which is the protein in red blood cells that carries oxygen. It\'s used to diagnose anemia, iron-deficiency anemia, and other blood disorders.', NULL),
(150, 'Hepatitis Panel', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Hepatitis Panel: This test checks for the presence of antibodies to the hepatitis virus (such as hepatitis A, B, and C) in the blood, and is used to diagnose viral hepatitis.', NULL),
(151, 'HER2 (Breast Cancer) Testing', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'HER2 (Breast Cancer) Testing: This test is used to determine the presence of the HER2 gene in breast cancer cells, which can indicate a more aggressive form of the disease and inform treatment decisions.', NULL),
(152, 'Herpes (HSV) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Herpes (HSV) Test: This test is used to diagnose herpes simplex virus (HSV) infections, which can cause genital herpes or cold sores.', NULL),
(153, 'HIV Screening Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'HIV Screening Test: It is a blood test that screens for the presence of antibodies to the Human Immunodeficiency Virus (HIV). It is used to diagnose an HIV infection and monitor the progress of the disease.', NULL),
(154, 'HIV Viral Load', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'HIV Viral Load: It is a blood test that measures the amount of HIV virus in the blood. It is used to monitor the effectiveness of HIV treatment and to determine if the virus is replicating.', NULL),
(155, 'Homocysteine Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Homocysteine Test: It is a blood test that measures the level of homocysteine in the blood. High levels of homocysteine can be a risk factor for heart disease and stroke.', NULL),
(156, 'Human Papillomavirus (HPV) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Human Papillomavirus (HPV) Test: It is a test that screens for the presence of the human papillomavirus (HPV), which can cause genital warts and cervical cancer.', NULL),
(157, 'Hysteroscopy', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Hysteroscopy: It is a procedure in which a thin, lighted scope is inserted through the cervix into the uterus to examine the inside of the uterus and the fallopian tubes. It can be used to diagnose and treat uterine conditions, such as abnormal bleeding or fibroids.', NULL),
(158, 'IGF-1 (Insulin-like Growth Factor 1) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'IGF-1 (Insulin-like Growth Factor 1) Test: It is a blood test that measures the level of IGF-1, a hormone that stimulates growth in children and helps regulate blood sugar levels in adults. It is used to diagnose growth disorders and evaluate the function of the pituitary gland.', NULL),
(159, 'Immunofixation (IFE) Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Immunofixation (IFE) Blood Test: It is a blood test that separates and identifies different types of immunoglobulins, which are proteins that play a role in the immune system. It is used to diagnose and monitor various immune disorders, such as multiple myeloma.', NULL),
(160, 'Immunoglobulins Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Immunoglobulins Blood Test: It is a blood test that measures the levels of different types of immunoglobulins in the blood. It is used to diagnose and monitor various immune disorders.', NULL),
(161, 'Insulin in Blood', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Insulin in Blood: It is a blood test that measures the level of insulin in the blood. It is used to diagnose and monitor diabetes.', NULL),
(162, 'Intravenous Pyelogram (IVP)', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Intravenous Pyelogram (IVP): It is an x-ray exam that uses a special dye to visualize the urinary tract, including the kidneys, ureters, bladder, and urethra. It is used to diagnose problems such as blockages or abnormalities in the urinary tract.', NULL),
(163, 'Iron Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Iron Tests: It is a group of blood tests that measure the levels of iron and iron-related compounds in the blood. It is used to diagnose and monitor iron-deficiency anemia and other iron-related disorders.', NULL),
(164, 'Karyotype Genetic Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Karyotype Genetic Test: It is a laboratory test that examines the number and appearance of chromosomes in a person\'s cells. It is used to diagnose genetic disorders and birth defects.', NULL),
(165, 'Ketones in Blood', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Ketones in Blood: It is a blood test that measures the level of ketones in the blood. High levels of ketones can be a sign of uncontrolled diabetes or other conditions that cause the body to produce too many ketones.', NULL),
(166, 'Ketones in Urine', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Ketones in Urine: It is a urine test that measures the level of ketones in the urine. High levels of ketones in the urine can be a sign of uncontrolled diabetes or other conditions that cause the body to produce too many ketones.', NULL),
(167, 'Kidney Stone Analysis', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Kidney Stone Analysis: It is a laboratory test that examines a kidney stone to determine its composition. The test results can help guide treatment and prevent future stones.', NULL),
(168, 'Lactate Dehydrogenase (LDH) Isoenzymes Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Lactate Dehydrogenase (LDH) Isoenzymes Test: It is a blood test that measures the levels of different forms of lactate dehydrogenase (LDH), an enzyme found in many tissues of the body. It is used to diagnose and monitor various conditions, such as muscle damage, heart disease, and certain cancers.', NULL),
(169, 'Lactate Dehydrogenase (LDH) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Lactate Dehydrogenase (LDH) Test: It is a blood test that measures the level of lactate dehydrogenase (LDH) in the blood. High levels of LDH can indicate tissue damage or disease in the heart, liver, or other organs.', NULL),
(170, 'Lactic Acid Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Lactic Acid Test: It is a blood test that measures the level of lactic acid in the blood. High levels of lactic acid can indicate a variety of medical conditions, such as liver disease, heart failure, and certain infections.', NULL),
(171, 'Lactose Tolerance Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Lactose Tolerance Tests: It is a group of tests that measure how well the body can digest lactose, a sugar found in milk and other dairy products. It is used to diagnose lactose intolerance, a condition in which the body cannot digest lactose properly.', NULL),
(172, 'Laparoscopy', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Laparoscopy: It is a surgical procedure in which a thin, lighted scope is inserted through a small incision in the abdomen to visualize the inside of the abdomen and pelvis. It is used to diagnose and treat various conditions, such as endometriosis, fibroids, and infertility.', NULL);
INSERT INTO `tests` (`id`, `title`, `created_at`, `updated_at`, `description`, `image`) VALUES
(173, 'Legionella Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Legionella Tests: It is a group of tests that are used to diagnose Legionnaires\' disease, a type of pneumonia caused by the bacterium Legionella pneumophila. The tests can detect the presence of the bacterium in water or in samples from a person\'s respiratory tract.', NULL),
(174, 'Lipase Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Lipase Tests: It is a blood test that measures the level of lipase, an enzyme that helps break down fats in the body. High levels of lipase can indicate pancreatitis, a condition in which the pancreas becomes inflamed.', NULL),
(175, 'Lipoprotein (a) Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Lipoprotein (a) Blood Test: It is a blood test that measures the level of lipoprotein (a), a type of cholesterol that is associated with an increased risk of heart disease.', NULL),
(176, 'Liver Function Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Liver Function Tests: It is a group of blood tests that measure the levels of certain substances in the blood, such as bilirubin and liver enzymes. The tests are used to evaluate the function of the liver and diagnose liver diseases.', NULL),
(177, 'Lung Cancer Tumor Markers', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Lung Cancer Tumor Markers: It is a group of blood tests that measure the levels of certain substances, such as carcinoembryonic antigen (CEA), that are associated with lung cancer. The tests are used to monitor the progression of lung cancer and evaluate the effectiveness of treatment.', NULL),
(178, 'Lung Function Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Lung Function Tests: It is a group of tests that measure how well the lungs are functioning, including how much air they can hold and how well they can transfer oxygen into the bloodstream. The tests are used to diagnose lung diseases and evaluate the effectiveness of treatment.', NULL),
(179, 'Luteinizing Hormone (LH) Levels Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Luteinizing Hormone (LH) Levels Test: It is a blood test that measures the level of luteinizing hormone (LH) in the blood. LH is a hormone produced by the pituitary gland that regulates the menstrual cycle and helps regulate ovulation in women.', NULL),
(180, 'Lyme Disease Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Lyme Disease Tests: It is a group of tests that are used to diagnose Lyme disease, an infectious disease caused by the bacterium Borrelia burgdorferi. The tests can detect the presence of the bacterium or antibodies produced by the immune system in response to the infection.', NULL),
(181, 'Magnesium Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Magnesium Blood Test: It is a blood test that measures the level of magnesium in the blood. Magnesium is an essential mineral that is involved in many important functions in the body, including muscle and nerve function and heart rhythm.', NULL),
(182, 'Malaria Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Malaria Tests: It is a group of tests that are used to diagnose malaria, an infectious disease caused by parasites that are transmitted to humans through the bite of infected mosquitoes. The tests can detect the presence of the parasite in the blood.', NULL),
(183, 'MCV (Mean Corpuscular Volume)', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'MCV (Mean Corpuscular Volume): It is a blood test that measures the average size of red blood cells. The test is used to diagnose anemia and other conditions that affect the size and number of red blood cells.', NULL),
(184, 'Measles and Mumps Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Measles and Mumps Tests: It is a group of tests that are used to diagnose measles and mumps, two viral infections. The tests can detect the presence of the virus or antibodies produced by the immune system in response to the infection.', NULL),
(185, 'Measuring Blood Pressure', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Measuring Blood Pressure: It is a simple procedure in which a person\'s blood pressure is measured using a device called a sphygmomanometer. Blood pressure is the force of blood against the walls of the arteries as the heart pumps it around the body.', NULL),
(186, 'Mental Health Screening', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Mental Health Screening: It is a group of tests and assessments that are used to evaluate a person\'s mental health and diagnose mental health conditions. The tests can include questionnaires, interviews, and physical exams.', NULL),
(187, 'Methylmalonic Acid (MMA) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Methylmalonic Acid (MMA) Test: It is a blood test that measures the level of methylmalonic acid (MMA) in the blood. High levels of MMA can indicate a vitamin B12 deficiency or a condition called methylmalonic acidemia.', NULL),
(188, 'Microalbumin Creatinine Ratio', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Microalbumin Creatinine Ratio: It is a urine test that measures the level of microalbumin, a protein, in relation to the level of creatinine, a waste product, in the urine. The test is used to detect early signs of kidney damage.', NULL),
(189, 'Mononucleosis (Mono) Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Mononucleosis (Mono) Tests: It is a group of tests that are used to diagnose mononucleosis, also known as \"mono,\" a viral infection. The tests can detect the presence of the virus or antibodies produced by the immune system in response to the infection.', NULL),
(190, 'MPV Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'MPV Blood Test: It is a blood test that measures the average size of platelets, which are tiny cells that help the blood to clot. The test is used to diagnose conditions that affect the number and size of platelets, such as thrombocythemia and thrombocytopenia.', NULL),
(191, 'MRSA Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'MRSA Tests: It is a group of tests that are used to diagnose infections caused by methicillin-resistant Staphylococcus aureus (MRSA), a type of bacteria that is resistant to many antibiotics. The tests can detect the presence of the bacterium in samples from the infected area.', NULL),
(192, 'MTHFR Mutation Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Panic Disorder Test: This test is a psychological evaluation used to diagnose panic disorder, a type of anxiety disorder characterized by recurrent and unexpected panic attacks. It can include questionnaires, interviews, and observation of behavior.', NULL),
(193, 'Mucus in Urine', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Ova and Parasite Test: This test is used to detect parasites in the stool and to diagnose an infection. A sample of the patient\'s stool is examined for the presence of parasite eggs or other signs of infection.', NULL),
(194, 'Myasthenia Gravis Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Osmolality Tests: This test measures the concentration of dissolved particles in a liquid, typically urine or serum. It can provide information about electrolyte balance, kidney function, and hydration status.', NULL),
(195, 'Myelography', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Opioid Testing: This test measures the presence and concentration of opioids, such as morphine and fentanyl, in a sample of blood, urine, or other bodily fluids. It can be used to diagnose opioid use, monitor drug treatment programs, or confirm opioid overdose.', NULL),
(196, 'Nasal Swab', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Nasal Swab: This is a test used to diagnose respiratory infections such as the flu, colds, and other viruses. A sample of mucus or secretions is collected from the nose using a swab and tested in a laboratory to identify the presence of an infectious agent.', NULL),
(197, 'Natriuretic Peptide Tests (BNP, NT-proBNP)', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Natriuretic Peptide Tests (BNP, NT-proBNP): These tests measure the levels of two proteins in the blood, BNP and NT-proBNP, that are released by the heart in response to stress or heart failure. High levels of these proteins can indicate heart problems, and the tests are used to diagnose and monitor heart failure.', NULL),
(198, 'Nitrites in Urine', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Nitrites in Urine: This is a test that checks for the presence of nitrites in a urine sample. Nitrites can indicate a urinary tract infection caused by certain bacteria.', NULL),
(199, 'Nonstress Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Nonstress Test: This is a test performed during pregnancy to evaluate the well-being of the fetus. The test involves monitoring the fetus\' heart rate and contractions of the uterus in response to fetal movement. It can help determine if the fetus is receiving enough oxygen and nutrients.', NULL),
(200, 'Obesity Screening', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Obesity Screening: This test is a measure of body weight in relation to height and is used to determine if a person is overweight or obese. A body mass index (BMI) score of 30 or higher is considered obesity.', NULL),
(201, 'Obsessive Compulsive Disorder (OCD) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Obsessive Compulsive Disorder (OCD) Test: This test is a psychological evaluation used to diagnose obsessive compulsive disorder (OCD), a type of anxiety disorder characterized by repetitive thoughts and behaviors. The test may involve a physical examination, a review of medical and family history, and a series of questions to assess the presence and severity of obsessions and compulsions.', NULL),
(202, 'Opioid Testing', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Opioid Testing: This test is used to detect the presence of opioids, a type of pain reliever, in a person\'s blood, urine, or saliva. It can be used to monitor opioid use and to check for abuse or addiction.', NULL),
(203, 'Osmolality Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Osmolality Tests: These are laboratory tests that measure the concentration of solutes in a solution, such as blood or urine. The results can help diagnose various conditions such as dehydration, kidney disease, and liver disease.', NULL),
(204, 'Ova and Parasite Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Ova and Parasite Test: This is a laboratory test that looks for parasites in a sample of stool. It is used to diagnose infections such as giardiasis, amebiasis, and other parasites that can cause digestive problems.', NULL),
(205, 'Panic Disorder Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Panic Disorder Test: This test is a psychological evaluation used to diagnose panic disorder, a type of anxiety disorder characterized by recurrent panic attacks. The test may involve a physical examination, a review of medical and family history, and a series of questions to assess the presence and frequency of panic attacks and other symptoms.', NULL),
(206, 'Pap Smear', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Pap Smear: This is a screening test for cervical cancer that involves collecting cells from the cervix and analyzing them for abnormal changes. The test can detect early changes in cervical cells that may lead to cancer, allowing for early treatment and prevention of cervical cancer.', NULL),
(207, 'Parainfluenza Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Parainfluenza Tests - This test is used to detect the presence of parainfluenza viruses in respiratory secretions, such as mucus from the nose or throat. It is performed to diagnose an infection caused by one of the parainfluenza viruses, which can cause respiratory illness in children and adults.', NULL),
(208, 'Parathyroid Hormone (PTH) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Parathyroid Hormone (PTH) Test - This blood test measures the level of parathyroid hormone in the body. PTH regulates the balance of calcium and phosphorus in the body, and an abnormal level of PTH can indicate a problem with the parathyroid glands. The test is used to help diagnose conditions such as hyperparathyroidism or hypoparathyroidism.', NULL),
(209, 'Partial Thromboplastin Time (PTT) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Partial Thromboplastin Time (PTT) Test - This blood test measures how long it takes for blood to clot and is used to assess the function of the blood clotting system. It is used to diagnose bleeding disorders, assess the effectiveness of blood-thinning medications, and monitor treatment for conditions that affect blood clotting.', NULL),
(210, 'PCR Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'PCR Tests - PCR (polymerase chain reaction) tests are used to amplify small amounts of DNA in order to detect the presence of a specific virus, bacterium, or other genetic material. The test is performed on a sample of body fluid or tissue and can be used to diagnose a variety of infections, including COVID-19.', NULL),
(211, 'PDL1 (Immunotherapy) Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'PDL1 (Immunotherapy) Tests - PDL1 (programmed cell death ligand 1) is a protein expressed on the surface of certain cancer cells. PDL1 tests are used to determine if a person\'s cancer cells express PDL1, which can help predict their response to immunotherapy. The test can be used to guide the selection of treatments for certain types of cancer.', NULL),
(212, 'PET Scan', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'PET Scan - A PET (positron emission tomography) scan is a type of imaging test that uses a small amount of radioactive material and a special camera to produce images of the inside of the body. The test is used to identify changes in the metabolic activity of tissues, which can help diagnose certain conditions, such as cancer, and monitor the effectiveness of treatments.', NULL),
(213, 'Pharmacogenetic Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Pharmacogenetic Tests - This test examines variations in a person\'s genes to determine how they will respond to certain medications. The test can be used to predict potential side effects and guide the selection of medications to achieve the best results and minimize side effects.', NULL),
(214, 'Phenylketonuria (PKU) Screening', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Phenylketonuria (PKU) Screening - PKU is a rare genetic disorder that affects the way the body processes the amino acid phenylalanine. This screening test is performed on newborns to detect PKU early, before it can cause intellectual disability, behavioral problems, and other health issues.', NULL),
(215, 'Phosphate in Blood', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Phosphate in Blood - This blood test measures the amount of phosphate in the blood. Phosphate is an important mineral involved in many bodily processes, including the formation of bones and teeth, and an abnormal level of phosphate in the blood can indicate a problem with the bones, kidneys, or other organs.', NULL),
(216, 'Phosphate in Urine', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Phosphate in Urine - This urine test measures the amount of phosphate in the urine. The test is used to help evaluate kidney function and monitor the effectiveness of treatment for conditions that affect the kidneys or bones.', NULL),
(217, 'Platelet Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Platelet Tests - This blood test measures the number and function of platelets in the blood. Platelets play a key role in blood clotting and an abnormal level of platelets can indicate a problem with the blood clotting system, such as a bleeding disorder or a blood cancer.', NULL),
(218, 'Pleural Fluid Analysis', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Pleural Fluid Analysis: A test that examines the fluid in the pleural cavity (the space surrounding the lungs) to diagnose the cause of pleural effusion (an abnormal buildup of fluid). The analysis can include testing for pH, glucose levels, protein levels, and cell count, among other things. It can help diagnose conditions such as pneumonia, heart failure, and cancer.', NULL),
(219, 'Porphyrin Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Porphyrin Tests: Tests that measure the levels of porphyrins in the blood, urine, or feces. Porphyrins are chemicals involved in the production of heme, a component of hemoglobin. Elevated levels of porphyrins can indicate certain inherited disorders, such as porphyria.', NULL),
(220, 'Postpartum Depression Screening', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Postpartum Depression Screening: A screening test for depression in women after giving birth. It may include a self-report questionnaire or a standardized interview with a healthcare provider to assess symptoms of depression. The screening helps diagnose and treat postpartum depression, which can have significant impacts on the health and well-being of both mother and child.', NULL),
(221, 'Potassium Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Potassium Blood Test: A test that measures the levels of potassium in the blood. Potassium is an electrolyte that is important for heart, muscle, and nerve function. A low or high potassium level can indicate a variety of medical conditions, such as kidney disease or heart failure.', NULL),
(222, 'Prealbumin Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Prealbumin Blood Test: A test that measures the levels of prealbumin in the blood. Prealbumin is a protein that is produced in the liver and is used as a marker of nutrition and overall health. Low levels of prealbumin can indicate malnutrition or an underlying medical condition.', NULL),
(223, 'Pregnancy Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Pregnancy Test: A test used to confirm pregnancy by detecting the presence of the hormone human chorionic gonadotropin (hCG) in the urine or blood. A positive result indicates pregnancy.', NULL),
(224, 'Prenatal Cell-Free DNA Screening', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Prenatal Cell-Free DNA Screening: A test performed during pregnancy to detect genetic abnormalities in the fetus using a sample of the mother\'s blood. The test screens for conditions such as Down syndrome and other chromosomal disorders.', NULL),
(225, 'Prenatal Panel', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Prenatal Panel: A group of tests performed during pregnancy to assess the health of the mother and fetus. The panel can include tests for genetic disorders, infections, and other medical conditions.', NULL),
(226, 'Procalcitonin Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Procalcitonin Test: A test that measures the levels of procalcitonin in the blood. Procalcitonin is a protein produced by the body in response to bacterial infections. Elevated levels can indicate the presence of a bacterial infection, such as sepsis or pneumonia.', NULL),
(227, 'Progesterone Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Progesterone Test: A test that measures the levels of progesterone in the blood. Progesterone is a hormone produced by the ovaries and is important for maintaining a healthy pregnancy. Abnormal levels of progesterone can indicate infertility, miscarriage, or other conditions.', NULL),
(228, 'Prolactin Levels', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Prolactin Levels: A test that measures the levels of prolactin in the blood. Prolactin is a hormone produced by the pituitary gland that stimulates milk production in women who are breastfeeding. Elevated levels of prolactin can indicate conditions such as pituitary tumors or hypothyroidism.', NULL),
(229, 'Prostate-Specific Antigen (PSA) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Prostate-Specific Antigen (PSA) Test: A blood test used to screen for prostate cancer. The test measures the levels of prostate-specific antigen (PSA), a protein produced by the prostate gland. Elevated levels of PSA can indicate prostate cancer, but can also be due to other conditions such as an enlarged prostate', NULL),
(230, 'Protein C and Protein S Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Protein C and Protein S Tests: Tests that measure the levels of protein C and protein S in the blood. These proteins play important roles in blood clotting and a deficiency can increase the risk of developing blood clots. These tests are used to diagnose and monitor conditions such as deep vein thrombosis and pulmonary embolism.', NULL),
(231, 'Protein in Urine', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Protein in Urine: A test that measures the amount of protein in a person\'s urine. Increased levels of protein in the urine can indicate kidney damage or disease, as well as other conditions such as preeclampsia during pregnancy.', NULL),
(232, 'Prothrombin Time Test and INR (PT/INR)', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Prothrombin Time Test and INR (PT/INR): A test that measures the time it takes for blood to clot. It is used to monitor the effectiveness of anticoagulant medications, such as warfarin, and to assess the risk of developing blood clots.', NULL),
(233, 'PTEN Genetic Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'PTEN Genetic Test: A test that looks for mutations in the PTEN gene, which can indicate an increased risk of developing certain cancers, such as prostate and breast cancer.', NULL),
(234, 'Pulse Oximetry', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Pulse Oximetry: A test that measures the oxygen saturation levels in the blood using a small device attached to the fingertip. It is used to assess the oxygen levels in people with respiratory or heart conditions.', NULL),
(235, 'Rapid Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Rapid Tests: Tests that provide quick results, usually within minutes. They are used to diagnose a wide range of conditions, including infectious diseases, pregnancy, and drug use.', NULL),
(236, 'Rash Evaluation', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Rash Evaluation: A medical evaluation of a skin rash to determine the cause and appropriate treatment. This can include a physical examination, a review of the patient\'s symptoms and medical history, and possibly a skin biopsy or other tests.', NULL),
(237, 'RDW (Red Cell Distribution Width)', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'RDW (Red Cell Distribution Width): A blood test that measures the variability in the size of red blood cells. It can indicate a number of conditions, including anemia and various types of blood disorders.', NULL),
(238, 'Red Blood Cell (RBC) Count', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Red Blood Cell (RBC) Count: A blood test that measures the number of red blood cells in a sample of blood. Low levels of red blood cells (anemia) can indicate a variety of conditions, such as iron-deficiency anemia or vitamin B12 deficiency.', NULL),
(239, 'Red Blood Cell (RBC) Indices', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Red Blood Cell (RBC) Indices: A group of tests that evaluate various aspects of red blood cells, including size, shape, and hemoglobin content. These tests help diagnose and monitor a range of conditions, including anemia and various types of blood disorders.', NULL),
(240, 'Red Blood Cell Antibody Screen', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Red Blood Cell Antibody Screen: A blood test that looks for antibodies that are attacking red blood cells. This test is used to diagnose autoimmune hemolytic anemia, a condition in which the body\'s immune system attacks and destroys its own red blood cells.', NULL),
(241, 'Renin Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Renin Test: A blood test that measures the levels of renin in the blood. Renin is an enzyme produced by the kidneys that regulates blood pressure. The test can be used to diagnose and monitor conditions such as hypertension (high blood pressure) and heart failure.', NULL),
(242, 'Respiratory Pathogens Panel', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Respiratory Pathogens Panel: A test that screens for multiple respiratory viruses and bacteria in a single sample, such as nasal or throat swab. It is used to diagnose respiratory infections and can help guide treatment decisions.', NULL),
(243, 'Respiratory Syncytial Virus (RSV) Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Respiratory Syncytial Virus (RSV) Tests: Tests that diagnose respiratory syncytial virus (RSV) infection, a common respiratory virus that can cause severe illness in infants and young children, as well as older adults with weakened immune systems.', NULL),
(244, 'Reticulocyte Count', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Reticulocyte Count: A blood test that measures the number of reticulocytes (immature red blood cells) in a sample of blood. It can help diagnose and monitor conditions that affect the production of red blood cells, such as anemia or bone marrow disorders.', NULL),
(245, 'Rheumatoid Factor (RF) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Rheumatoid Factor (RF) Test: A blood test that measures the levels of rheumatoid factor in the blood. High levels of RF can indicate rheumatoid arthritis, a chronic autoimmune disease that causes inflammation in the joints.', NULL),
(246, 'Salicylates Level', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Salicylates Level: A blood test that measures the levels of salicylates in the blood. Salicylates are a type of pain reliever and anti-inflammatory medication. The test is used to monitor therapeutic levels and identify potential toxicity.', NULL),
(247, 'Semen Analysis', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Semen Analysis: A test that evaluates the quality and quantity of a man\'s semen, including the number of sperm and their motility. It is used to diagnose and evaluate male infertility.', NULL),
(248, 'Sentinel Lymph Node Biopsy', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Sentinel Lymph Node Biopsy: A surgical procedure that removes the first lymph node(s) to which cancer cells are likely to spread from a primary tumor. It is used to determine if cancer has spread and to guide further treatment decisions.', NULL),
(249, 'SHBG Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'SHBG Blood Test: A blood test that measures the levels of sex hormone-binding globulin (SHBG) in the blood. SHBG binds to hormones such as testosterone and estrogen and regulates their availability in the body. The test is used to diagnose and monitor conditions such as hypogonadism and hormonal imbalances.', NULL),
(250, 'Skin Biopsy', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Skin Biopsy: A diagnostic procedure in which a small sample of skin is removed and examined under a microscope. It is used to diagnose skin conditions, such as skin cancer, and to evaluate skin disorders.', NULL),
(251, 'Skin Cancer Screening', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Skin Cancer Screening: A medical exam that evaluates the skin for signs of skin cancer. It may include a visual inspection, dermoscopy, and/or a biopsy of suspicious lesions.', NULL),
(252, 'Sleep Study', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Sleep Study: A diagnostic test that evaluates sleep patterns and behaviors. It can be performed in a sleep center or at home using portable equipment. It is used to diagnose sleep disorders, such as sleep apnea, insomnia, and restless leg syndrome.', NULL),
(253, 'Smooth Muscle Antibody (SMA) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Smooth Muscle Antibody (SMA) Test: A blood test that looks for antibodies against smooth muscle tissue. Elevated levels of these antibodies can indicate autoimmune liver diseases, such as primary biliary cholangitis or autoimmune hepatitis.', NULL),
(254, 'Sodium Blood Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Sodium Blood Test: A blood test that measures the levels of sodium in the blood. Sodium is an electrolyte that helps regulate fluid balance in the body. The test is used to diagnose and monitor conditions such as dehydration and electrolyte imbalances.', NULL),
(255, 'Sputum Culture', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Sputum Culture: A diagnostic test in which a sample of mucus from the lungs is collected and grown in a laboratory to identify any bacterial or fungal infections. It is used to diagnose and guide treatment for respiratory infections.', NULL),
(256, 'STD Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'STD Tests: Tests that diagnose sexually transmitted infections (STIs), such as chlamydia, gonorrhea, and syphilis. They can include blood tests, urine tests, and swab tests.', NULL),
(257, 'Stool Elastase', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Stool Elastase: A test that measures the levels of elastase, an enzyme produced by the pancreas, in a stool sample. Low levels of elastase can indicate pancreatic insufficiency and the presence of pancreatic diseases, such as cystic fibrosis or chronic pancreatitis.', NULL),
(258, 'Strep A Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Strep A Test: This test is used to detect the presence of Group A Streptococcus bacteria in a patient\'s throat or skin. The test is often run to diagnose strep throat or other streptococcal infections.', NULL),
(259, 'Strep B Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Strep B Test: This test is used to detect Group B Streptococcus bacteria in pregnant women. The test is run to determine if a woman is colonized with Group B Strep, which can cause serious infections in newborns.', NULL),
(260, 'Stress Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Stress Tests: Stress tests are used to evaluate how well the heart functions during physical stress. These tests may be done to diagnose heart conditions, assess the severity of heart disease, or determine the effectiveness of treatment.', NULL),
(261, 'Suicide Risk Screening', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Suicide Risk Screening: This test is used to assess a person\'s risk for suicide. It may be used to diagnose depression or other mental health conditions, or as part of a routine evaluation for people at risk for suicide.', NULL),
(262, 'Sweat Test for Cystic Fibrosis', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Sweat Test for Cystic Fibrosis: This test measures the amount of salt in a patient\'s sweat. It is used to diagnose cystic fibrosis, a genetic disorder that affects the respiratory and digestive systems.', NULL),
(263, 'Synovial Fluid Analysis', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Synovial Fluid Analysis: This test is used to examine the fluid that lubricates joints. It is often used to diagnose joint conditions such as arthritis and gout.', NULL),
(264, 'Syphilis Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Syphilis Tests: These tests are used to diagnose syphilis, a sexually transmitted infection caused by the bacterium Treponema pallidum.', NULL),
(265, 'Testosterone Levels Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Testosterone Levels Test: This test measures the level of testosterone in a man\'s blood. It is used to diagnose conditions such as hypogonadism, or low testosterone levels, which can cause a range of symptoms including fatigue, depression, and decreased sex drive.', NULL),
(266, 'Therapeutic Drug Monitoring', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Therapeutic Drug Monitoring: This test measures the levels of certain medications in a patient\'s blood. It is used to ensure that a patient is receiving the appropriate dose of medication and to monitor the effectiveness of treatment.', NULL),
(267, 'Thyroglobulin', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Thyroglobulin: This test measures the level of thyroglobulin in a patient\'s blood. It is used to monitor the treatment of thyroid cancer and to detect recurrence of the disease.', NULL),
(268, 'Thyroid Antibodies', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Thyroid Antibodies: This test measures the levels of antibodies produced against the thyroid gland. It is used to diagnose autoimmune thyroid diseases such as Graves\' disease and Hashimoto\'s thyroiditis.', NULL),
(269, 'Thyroxine (T4) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Thyroxine (T4) Test: This test measures the level of thyroxine (T4), a hormone produced by the thyroid gland, in a patient\'s blood. It is used to diagnose thyroid disorders, such as hypothyroidism (low thyroid function) and hyperthyroidism (high thyroid function).', NULL),
(270, 'Total Protein and Albumin/Globulin (A/G) Ratio ', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Total Protein and Albumin/Globulin (A/G) Ratio: This test measures the levels of total protein and the ratio of two main types of protein, albumin and globulin, in a patient\'s blood. It is used to assess liver and kidney function, as well as to diagnose conditions such as malnutrition and certain types of cancer.', NULL),
(271, 'TP53 Genetic Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'TP53 Genetic Test: This test looks for mutations in the TP53 gene, which is associated with a high risk of developing certain types of cancer, such as sarcoma, leukemia, and lung and breast cancers.', NULL),
(272, 'Trichomoniasis Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Trichomoniasis Test: This test is used to diagnose trichomoniasis, a sexually transmitted infection caused by a parasite.', NULL),
(273, 'Tricyclic Antidepressant (TCA) Screen', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Tricyclic Antidepressant (TCA) Screen: This test measures the levels of tricyclic antidepressants in a patient\'s blood. It is used to diagnose overdose or to monitor the effectiveness of treatment for depression.', NULL),
(274, 'Triglycerides Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Triglycerides Test: This test measures the levels of triglycerides, a type of fat, in a patient\'s blood. High levels of triglycerides can be a sign of heart disease, diabetes, and other conditions.', NULL),
(275, 'Triiodothyronine (T3) Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Triiodothyronine (T3) Tests: This test measures the level of triiodothyronine (T3), a hormone produced by the thyroid gland, in a patient\'s blood. It is used to diagnose thyroid disorders and to monitor the effectiveness of treatment.', NULL),
(276, 'Troponin Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Troponin Test: This test measures the level of troponin, a protein released into the blood when heart muscle is damaged, in a patient\'s blood. It is used to diagnose heart attacks and to monitor the treatment of heart disease.', NULL),
(277, 'TSH (Thyroid-stimulating hormone) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'TSH (Thyroid-stimulating hormone) Test: This test measures the level of TSH, a hormone produced by the pituitary gland, in a patient\'s blood. TSH levels are used to diagnose and monitor thyroid disorders, such as hypothyroidism (low thyroid function) and hyperthyroidism (high thyroid function).', NULL),
(278, 'Tuberculosis Screening', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Tuberculosis Screening: This test is used to diagnose tuberculosis (TB), a bacterial infection that primarily affects the lungs.', NULL),
(279, 'Tumor Marker Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Tumor Marker Tests: These tests measure the levels of specific substances, known as tumor markers, in a patient\'s blood. Tumor markers are produced by certain types of cancer and can be used to diagnose cancer, monitor its progression, and assess the effectiveness of treatment.', NULL),
(280, 'Ultrasound', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Ultrasound: This is a diagnostic imaging test that uses high-frequency sound waves to produce images of the inside of the body. Ultrasound is used to diagnose a wide range of conditions, including pregnancy, heart conditions, liver and kidney problems, and more.', NULL),
(281, 'Uric Acid Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Uric Acid Test: This test measures the levels of uric acid, a waste product produced when the body breaks down purines, in a patient\'s blood or urine. High levels of uric acid can cause gout or kidney stones, and can also be a sign of certain medical conditions.', NULL),
(282, 'Urobilinogen in Urine', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Urobilinogen in Urine: This test measures the levels of urobilinogen, a substance produced by the breakdown of red blood cells, in a patient\'s urine. Abnormal levels of urobilinogen can indicate liver disease, anemia, and other health problems.', NULL),
(283, 'V/Q Scan', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'V/Q Scan: This test is used to diagnose blood clots in the lungs, also known as pulmonary embolism. The test combines a ventilation scan, which shows how well air is moving into the lungs, and a perfusion scan, which shows how well blood is flowing through the lungs.', NULL),
(284, 'Videonystagmography (VNG)', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Videonystagmography (VNG): This test is used to diagnose balance disorders, such as vertigo, by measuring the movement of the eyes in response to different stimuli.', NULL),
(285, 'Vision Screening', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Vision Screening: This test is used to assess visual acuity and detect vision problems, such as nearsightedness, farsightedness, and astigmatism.', NULL),
(286, 'Vitamin B Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Vitamin B Test: This test measures the levels of one or more B vitamins, such as B1 (thiamine), B2 (riboflavin), B6 (pyridoxine), B12 (cobalamin), and others, in a patient\'s blood. Low levels of B vitamins can indicate malnutrition or certain medical conditions.', NULL),
(287, 'Vitamin D Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Vitamin D Test: This test measures the levels of vitamin D, which is essential for strong bones and other health functions, in a patient\'s blood. Low levels of vitamin D can indicate a deficiency, which can lead to osteoporosis and other health problems.', NULL),
(288, 'Vitamin E (Tocopherol) Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Vitamin E (Tocopherol) Test: This test measures the levels of vitamin E, an antioxidant that helps protect cells from damage, in a patient\'s blood. Low levels of vitamin E can indicate a deficiency or certain medical conditions.', NULL),
(289, 'White Blood Cell (WBC) in Stool', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'White Blood Cell (WBC) in Stool: This test measures the presence of white blood cells (WBCs) in a patient\'s stool. High levels of WBCs in the stool can indicate an infection or inflammation in the digestive tract.', NULL),
(290, 'White Blood Count (WBC)', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'White Blood Count (WBC): This test measures the number of white blood cells (WBCs) in a patient\'s blood. High or low levels of WBCs can indicate infections, inflammation, or other medical conditions.', NULL),
(291, 'Whooping Cough Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Whooping Cough Tests: These tests are used to diagnose pertussis, also known as whooping cough, a highly contagious respiratory illness caused by the bacterium Bordetella pertussis.', NULL),
(292, 'Xylose Testing', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Xylose Testing: This test measures the level of xylose, a type of sugar, in a patient\'s urine after they have been given a dose of the sugar. The test is used to diagnose problems with the small intestine, such as malabsorption.', NULL),
(293, 'Yeast Infection Tests', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Yeast Infection Tests: These tests are used to diagnose yeast infections, which are caused by overgrowth of the yeast Candida.', NULL),
(294, 'Zika Virus Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Zika Virus Test: This test is used to diagnose Zika virus, a viral infection that is primarily spread by mosquitoes.', NULL),
(295, '17-Hydroxyprogesterone', '2023-07-01 03:54:12', '2023-07-01 03:54:12', '17-Hydroxyprogesterone: This test measures the level of 17-hydroxyprogesterone, a hormone produced by the adrenglands, in a patient\'s blood. Elevated levels of 17-hydroxyprogesterone can indicate a condition known as congenital adrenal hyperplasia (CAH), which is a group of disorders that affect the adrenal glands. In CAH, the adrenal glands produce too much of the hormone and not enough cortisol, which can cause a variety of symptoms, including early onset of puberty, rapid growth, and infertility.', NULL),
(296, 'Mental Status Exam', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Mental Status Exam (MSE): Assesses the patient\'s level of consciousness, memory, attention, language, and ability to understand and follow commands.', NULL),
(297, 'Cranial Nerve Exam', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Cranial Nerve Exam: Evaluates the function of each of the 12 cranial nerves, which control functions such as eye movement, facial sensation, and hearing.', NULL),
(298, 'Motor Exam', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Motor Exam: Assesses muscle strength, tone, and coordination, including reflexes.', NULL),
(299, 'Sensory Exam', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Sensory Exam: Tests the patient\'s ability to feel sensations in different parts of the body, such as touch, pain, and temperature.', NULL),
(300, 'Coordination Exam', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Coordination Exam: Tests the patient\'s ability to perform coordinated movements, such as finger-to-nose and rapid alternating movements.', NULL),
(301, 'Gait Exam', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Gait Exam: Assesses the patient\'s ability to walk and maintain balance.', NULL),
(302, 'Romberg Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Romberg Test: Tests the patient\'s ability to maintain balance with their eyes closed.', NULL),
(303, 'Babinski Sign', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Babinski Sign: Tests the reflex response of the big toe when the sole of the foot is stimulated, which can indicate damage to the central nervous system.', NULL),
(304, 'Mini Mental Status Exam', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Mini Mental State Exam (MMSE): A shortened version of the Mental Status Exam, used to screen for cognitive impairment and dementia.', NULL),
(305, 'Lhermitte\'s Sign', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Lhermitte\'s Sign: A sudden electric shock-like feeling that runs down the spine and into the arms and legs when the neck is flexed, indicating possible nerve damage in the spinal cord.', NULL),
(306, 'Squeeze Test', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Squeeze Test: Assesses the strength of the grip, which can indicate problems with the muscles or nerves in the hands.', NULL),
(307, 'Homan\'s Sign', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Homan\'s Sign: A painful reflex in the calf muscles when pressure is applied to the back of the heel, indicating possible deep vein thrombosis (DVT) or inflammation of the calf muscles.', NULL),
(308, 'Pupil Exam', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Pupil Exam: Evaluates the size and reaction of the pupils to light, which can indicate a variety of conditions, such as brain damage, intracranial pressure, and certain drugs or medications.', NULL),
(309, 'Clinical Dementa Rating', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Clinical Dementia Rating (CDR): A structured interview and observation tool used to assess the severity of dementia symptoms in patients.', NULL),
(310, 'Fasiculations', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Fasiculations: The involuntary twitching of a single muscle or muscle group, which can indicate nerve damage or muscle disease.', NULL),
(311, 'Dysarthria', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Dysarthria: The assessment of speech difficulties, including slurred speech, which can indicate neurological conditions such as stroke, Parkinson\'s disease, or multiple sclerosis.', NULL),
(312, 'Nystagmus', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Nystagmus: An involuntary eye movement that can indicate damage to the vestibular system, the part of the inner ear responsible for maintaining balance.', NULL),
(313, 'Apraxia', '2023-07-01 03:54:12', '2023-07-01 03:54:12', 'Apraxia: The inability to perform purposeful movements, even though the muscles are functioning normally, which can indicate damage to the central nervous system.', NULL),
(315, 'MRI: Brain', '2023-08-16 13:13:27', '2023-08-16 13:13:27', 'This is particularly useful for investigating neurological conditions such as multiple sclerosis, stroke, tumors, and traumatic brain injury.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ankit', 'dphillips@uidaho.edu', NULL, '$2y$10$dneLsa3Qjq8Vt5n9w.dNduYIQsr3qTF.goWzbRc6c26.Y0ie0orH.', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casestudies`
--
ALTER TABLE `casestudies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medications`
--
ALTER TABLE `medications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_casestudies`
--
ALTER TABLE `sub_casestudies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casestudies`
--
ALTER TABLE `casestudies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `medications`
--
ALTER TABLE `medications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_casestudies`
--
ALTER TABLE `sub_casestudies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
