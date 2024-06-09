-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 31, 2024 at 10:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedbacksystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `mobile` varchar(15) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `email`, `designation`, `mobile`, `dept`, `img`, `password`) VALUES
(3, 'Dr. R. S.', 'Jagadish', 'jagadishrs@jssaten.ac.in', 'Dean Academics', '9650317495', 'Department Of Chemistry', 'rs sir.png', 'Test@12345'),
(4, 'Dr. Z. K.', 'Ansari', 'zkansari@jssaten.ac.in', NULL, '', 'Mathematics', 'ansari sir.png', 'Test@12345');

-- --------------------------------------------------------

--
-- Table structure for table `courseoutcomes`
--

CREATE TABLE `courseoutcomes` (
  `sno` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `subjectcode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `CO1` varchar(500) DEFAULT NULL,
  `CO2` varchar(500) DEFAULT NULL,
  `CO3` varchar(500) DEFAULT NULL,
  `CO4` varchar(500) DEFAULT NULL,
  `CO5` varchar(500) DEFAULT NULL,
  `CO6` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courseoutcomes`
--

INSERT INTO `courseoutcomes` (`sno`, `year`, `semester`, `subjectcode`, `subject`, `CO1`, `CO2`, `CO3`, `CO4`, `CO5`, `CO6`) VALUES
(1, 4, 7, 'KHU-701 IT', 'Rural Development:Administration and Planning', 'Illustrate the definitions, concepts and components of Rural Development.', 'Outline various programs of rural development in pre-independence India.', 'Examine various aspects of Panchayati raj and rural administration in India.', 'Identify the need for and various elements of human resource development in rural sector.', 'Analyse the concept of rural industrialization and entrepreneurship in Indian context.', NULL),
(2, 4, 7, 'KCS-076 IT', 'Software Testing', 'Describe software testing objectives, process, criteria, strategies and methods used in software engineering', 'Apply functional and structural testing techniques to generate test suit', 'Identify and apply various testing techniques for regression testing to generate test case', 'Apply various software testing activities, debugging approaches and testing tools', 'Identify the issues and challenges in object oriented testing and web testing.', NULL),
(3, 4, 7, 'KCS-713 IT', 'Cloud Computing', 'Describe architecture and underlying principles of cloud computing.', 'Explain need, types and tools of Virtualization for cloud.', 'Describe Services Oriented Architecture and various types of cloud services.', 'Explain Inter cloud resources management cloud storage services and their providers Assess security services and standards for cloud computing.', 'Analyze advanced cloud technologies.', NULL),
(4, 4, 7, 'KOE-074_ IT', 'Renewable Energy Resources', 'Classify and Compare various Non-conventional Energy resources.', 'Estimate the solar energy, its utilization and analyze the performance with its applications.', 'Explain the electrical conversion and applications of geothermal energy, Magneto-hydrodynamics and Fuel Cell.', 'Analyze the operational and performance characteristics of wind energy along with its applications.', 'Discuss the principle of bio mass, Ocean Thermal Energy Conversion, Tidal Wave, their characteristics, performance and limitations.', NULL),
(5, 4, 7, 'KIT-751A IT', 'Software Testing Lab', 'Implement functional software testing for solving various problems using boundary value and equivalence class techniques.', 'Implement structural software testing for solving various problems using decision based and data flow techniques.', 'Design test cases for various testing techniques such as boundary value, equivalence class, decision based and data flow testing.', NULL, NULL, NULL),
(6, 2, 3, 'BOE-304 IT', 'Energy Science & Engineering', 'Explain the fundamental concepts of various types of energy measurements, conversion and its applications.', 'Apply the concept of quantum physics for the generation of nuclear energy along with reactor design aspects and safety measures.', 'Apply the concepts and characteristics of Solar Energy and solar cell for various applications.', 'Make use of various conventional & non-conventional energy sources & its conversion into useful form.', 'Illustrate the global energy scenario along with various energy storage devices and conservation concepts.', NULL),
(7, 2, 3, 'BAS-301 IT', 'Technical Communication', 'Understand the concepts of technical communication which will help them grow and emerge as better professionals.', 'Develop an understanding of tools necessary for writing effective required while drafting technical & professional documents.', 'Utilize technical writing skills necessary to demonstrate their ability to use organizational formats with a clear specific purpose, deliver effective speeches that are consistent with and appropriate for the audience and purpose.', 'Integrate various dimensions of communication skills which will further make the transition from student to a professional smoother and help them excel in their jobs.', 'Equip students with the technology-enabled communication tools and help them grow in various spheres of the professional arena.', NULL),
(8, 2, 3, 'BCS-301 IT', 'Data Structure', 'Describe various sorting and searching algorithms and compute their efficiency.', 'Explain the concept of abstract data types and basic data organization schemes such as arrays and linked lists; and write algorithms for their operations and applications.', 'Describe operations and applications of stack & queues and implement it using array and linked list.', 'Describe properties of various types of trees and write algorithms for their operations.', 'Represent graphs using an array and linked list and write algorithms for graph traversal, minimum cost spanning trees and the shortest path.', NULL),
(9, 2, 3, 'BCS-302 IT', 'Computer Organizaton and Architecture', 'Study of the basic structure and operation of a digital computer system.', 'Analysis of the design of arithmetic & logic unit and understanding of the fixed point and floating-point arithmetic operations.', 'Implementation of control unit techniques and the concept of Pipelining.', 'Understanding the hierarchical memory system, cache memories and virtual memory.', 'Understanding of the different ways of communicating with 1/0 devices and standard 1/0 interfaces.', NULL),
(10, 2, 3, 'BCS-303 IT', 'Discrete Structures and Theory of Logic', 'Acquire Knowledge of sets and relations for solving the problems of POSET and lattices.', 'Apply fundamental concepts of functions and Boolean algebra for solving the problems of logical abilities.', 'Implement the rules of propositions and predicate logic to solve complex and logical problems.', 'Explore the concepts of group theory and their applications for solving advanced technological problems.', 'Apply the principles and concepts of graph theory and combinatorics for solving problems related to computer science.', NULL),
(11, 2, 3, 'BCC-301 IT', 'Cyber Security', 'Understand the basic concepts of cyber security and cybercrimes.', 'Understand the security policies and cyber laws.', 'Understand the tools and methods used in cyber crime.', 'Understand the concepts of cyber forensics', 'Understand the cyber security policies and cyber laws', NULL),
(12, 2, 3, 'BCS-351 IT', 'Data Structures Lab', 'Write and execute programs for searching and sorting arrays.', 'Write and execute programs for various operations (insert, delete, append and Concatenate etc.) on arrays and linked lists.', 'Write and execute programs for representing various data structures like Stacks, Queues and Trees using both arrays as well as linked lists.', 'Write and execute programs for using Binary Search Trees for searching for a key.', 'Write and execute programs for representation and traversal of graphs.', NULL),
(13, 2, 3, 'BCS-352 IT', 'Computer Organization and Architecture Lab', 'Design and verify combinational circuits (adder, code converter, decoder, multiplexer) using basic gates.', 'Design and verify various flip-flops.', 'Design 1/0 system and ALU.', 'Demonstrate a simple instruction set computer.', NULL, NULL),
(14, 2, 3, 'BCS-353 IT', 'Web Designing Workshop Lab', 'Design static web pages using HTML.', 'Create HTML web pages for the demonstration of web-based objects.', 'Demonstrate dynamic implementation of web pages using HTML, CSS, Bootstrap and Javascript.', NULL, NULL, NULL),
(15, 2, 3, 'BVE-301 CSDS', 'Universal Human Values', 'Explain the need and basic content of fundamentals of Value Education.', 'Demonstrate harmony at various levels of human living.', 'Develop the ability to live in harmony with family and society for continuous happiness.', 'Build the appropriate relationship between nature and human life.', 'Apply the holistic approach of values and ethics in professional life.', NULL),
(16, 2, 3, 'BAS-303 CSDS', 'Maths IV', 'Classify partial differential equations and transform into canonical form and solve linear and nonlinear partial differential equations of first order.', 'Apply the knowledge of partial differential equations to Engineering, sciences & technology.', 'Introduce measures of central tendency and various forecasting techniques.', 'Develop an understanding of the theory of probability, rules of probability and Probability distributions.', 'Understand the meaning and process of hypothesis testing including T-test, Z-test, Chi-Square test, Quality Control chart.', NULL),
(17, 2, 3, 'BCS-301 CSDS', 'Data Structure', 'Describe various sorting and searching algorithms and compute their efficiency.', 'Explain the concept of abstract data types and basic data organization schemes such as arraysand linked lists; and write algorithms for their operations and applications.', 'Describe operations and applications of stack & queues and implement it using array and linked list', 'Describe properties of various types of trees and write algorithms for their operations.', 'Represent graphs using array and linked list and write algorithms for graph traversal,minimum cost spanning trees and shortest path.', NULL),
(18, 2, 3, 'BCS-302 CSDS', 'Computer Organizaton and Architecture', 'Study of the basic structure and operation of a digital computer system.', 'Analysis of the design of arithmetic & logic unit and understanding of the fixed point and floating-point arithmetic operations.', 'Implementation of control unit techniques and the concept of Pipelining.', 'Understanding the hierarchical memory system, cache memories and virtual memory.', 'Understanding of the different ways of communicating with I/O devices and standard I/O interface', NULL),
(19, 2, 3, 'BCS-303 CSDS', 'Discrete Structures and Theory of Logic', 'Acquire Knowledge of sets and relations for solving the problems of POSET and lattices.', 'Apply fundamental concepts of functions and Boolean algebra for solving the problems of logical abilities.', 'Implement the rules of propositions and predicate logic to solve the complex and logical problems.', 'Explore the concepts of group theory and their applications for solving the advance technological problems.', 'Apply the principles and concepts of graph theory and combinatorics for solving problems related to computer science.', NULL),
(20, 2, 3, 'BCC-302 CSDS', 'Python Programming', 'Interpret the fundamental Python syntax and semantics and be fluent in the use of Python control flow statements.', 'Express proficiency in the handling of strings and functions', 'Determine the methods to create and manipulate Python programs by utilizing the data structures like lists, dictionaries, tuples and sets.', 'Identify the commonly used operations involving file systems and regular expressions.', 'Articulate the Object-Oriented Programming concepts such as encapsulation, inheritance and polymorphism as used in Python', NULL),
(21, 2, 3, 'BCS-351 CSDS', 'Data Structures Lab', 'Write and execute programs for searching and sorting arrays.', 'Write and execute programs for various operations (insert, delete, append and Concatenate etc.) on arrays and linked lists.', 'Write and execute programs for representing various data structures like Stacks, Queues and Trees using both arrays as well as linked lists.', 'Write and execute programs for using Binary Search Trees for searching for a key.', 'Write and execute programs for representation and traversal of graphs.', NULL),
(22, 2, 3, 'BCS-352 CSDS', 'Computer Organization Lab', 'Design and verify combinational circuits (adder, code converter, decoder, multiplexer) using basic gates.', 'Design and verify various flip-flops.', 'Design 1/0 system and ALU.', 'Demonstrate a simple instruction set computer.', NULL, NULL),
(23, 2, 3, 'BCS-353 CSDS', 'Web Designing Workshop', 'Design static web pages using HTML.', 'Create HTML web pages for demonstration of web-based objects.', 'Demonstrate dynamic implementation of web pages using HTML, CSS, Bootstrap and Javascript', NULL, NULL, NULL),
(24, 3, 5, 'KCS-501 IT', 'Database Management System', 'Describe the features of a database system and its application and compare various types of data models.', 'Construct an ER Model for a given problem and transform it into a relation database schema.', 'Formulate solution to a query problem using SQL Commands, relational algebra, tuple calculus and domain calculus.', 'Explain need of normalization and normalize a given relation to the desired normal form.', 'Explain different approaches of transaction processing and concurrency control.', NULL),
(25, 3, 5, 'KIT-501 IT', 'Web Technology', 'Explain web development Strategies and Protocols governing Web.', 'Develop Java programs for window/web-based applications.', 'Design web pages using HTML, XML, CSS and JavaScript.', 'Creation of client-server environment using socket programming', 'Building enterprise level applications and manipulate web databases using JDBC', 'Design interactive web applications using Servlets and JSP'),
(26, 3, 5, 'KCS-503 IT', 'Design and Analysis of Algorithm', 'Analyze algorithms by computing their efficiency using asymptotic analysis and prove the correctness of algorithms', 'Compare incremental and divide-and-conquer approaches of designing algorithms for problems such as sorting and searching.', 'Describe and analyze operations of various advance data structures such as Red Black Trees, Binomial, Fibonacci Heaps, B Trees, Tries and Skip Lists', 'Identify suitable design approaches like greedy, dynamic, backtracking or branch and bound and apply the same to solve a given optimization problem.', 'Explain different complexity classes P, NP and NP complete and use reduction to prove a problem to be NP Complete.', NULL),
(27, 3, 5, 'KNC-502 IT', 'Object Oriented System Design', 'List the significance and key features of object-oriented programming and modeling using UML', 'Construct basic structural, behavioral and architectural model using object-oriented software engineering approach', 'Integrate object-oriented modeling techniques for the analysis and design of a system', 'Use the basic features of data abstraction and encapsulation in C++ programs', 'Use the advanced features such as inheritance, polymorphism and virtual function in C++', NULL),
(28, 3, 5, 'KOE-074_ IT', 'Machine Learning Techniques', 'To understand the need for machine learning for various problem-solving', 'To understand a wide variety of learning algorithms and how to evaluate models generated from data', 'To understand the latest trends in machine learning', 'To design appropriate machine learning algorithms and apply the algorithms to real-world problems', 'To optimize the models learned and report on the expected accuracy that can be achieved by applying the models', NULL),
(29, 3, 5, 'KCS-551 IT', 'Indian Tradition, Culture and Society', 'Illustrate the condition of society, state, and polity in ancient India.', 'Summarize the history of Indian Literature, Culture, tradition, and practices.', 'Compare the philosophy and practices of Indian religions.', 'Infer about basics of ancient science, management and Indian knowledge system', 'Explain the Cultural heritage and performing arts.', NULL),
(30, 3, 5, 'KIT-551 IT', 'Database Management System Lab', 'Design and implement a database schema for a given problem', 'Write SQL commands to query a database', 'Write PL/SQL programs for implementing stored procedures, stored functions, cursors, trigger and packages.', NULL, NULL, NULL),
(31, 3, 5, 'KCS-553 IT', 'Web Technology Lab', 'Design static web pages using HTML.', 'Create HTML web pages for demonstration of web-based objects.', 'Demonstrate dynamic implementation of web pages using HTML, CSS, XML, and JavaScript.', NULL, NULL, NULL),
(32, 3, 5, 'KCS-553 IT', 'Design and Analysis of Algorithm Lab', 'Compute the time complexity of various algorithms in worst-case, average-case and best-case.', 'Implement programs for solving various problems using iterative, recursive, greedy, dynamic, branch and bound and backtracking approaches.', 'Implement graph algorithms to solve shortest-path problem and minimum spanning tree problem.', 'Implement programs using advanced data structures like RB Tree and B-Tree', NULL, NULL),
(33, 3, 5, 'KCS-501 CSDS', 'Database Management System', 'Describe the features of a database system and its application and compare various types of data models.', 'Construct an ER Model for a given problem and transform it into a relation database schema.', 'Formulate a solution to a query problem using SQL Commands, relational algebra, tuple calculus and domain calculus.', 'Explain the need for normalization and normalize a given relation to the desired normal form.', 'Explain different approaches to transaction processing and concurrency control.', NULL),
(34, 3, 5, 'KDS-501 CSDS', 'Introduction to Data Analytics and Visualization', 'Discuss various concepts of the data analytics pipeline.', 'Apply classification and regression techniques.', 'Explain and apply mining techniques on streaming data.', 'Compare different clustering and frequent pattern mining algorithms.', 'Describe the concept of R programming and implement analytics on Big data using R.', NULL),
(35, 3, 5, 'KCS-503 CSDS', 'Design and Analysis of Algorithm', 'Analyze algorithms by computing their efficiency using asymptotic analysis and prove the correctness of algorithms.', 'Compare incremental and divide-and-conquer approaches of designing algorithms for problems such as sorting and searching.', 'Describe and analyze operations of various advanced data structures such as Red Black Trees, Binomial, Fibonacci Heaps, B Trees, Tries and Skip Lists.', 'Identify suitable design approaches like greedy, dynamic, backtracking or branch and bound and apply the same to solve a given optimization problem.', 'Explain different complexity classes P, NP and NP complete and use reduction to prove a problem to be NP Complete.', NULL),
(36, 3, 5, 'KNC-501 CSDS', 'Constitution of India Law and Engineering', 'Identify and explore the basic features and modalities about the Indian constitution.', 'Differentiate and relate the functioning of the Indian parliamentary system at the center and state level.', 'Interpret various aspects of the Indian Legal System and its related bodies.', 'Apply different laws and regulations related to engineering practices.', 'Correlate the role of engineers with different organizations and governance models.', NULL),
(37, 3, 5, 'KAI-051 CSDS', 'Mathematical Foundation AI,ML,Data Science', 'Understand and apply the probability distributions, random number generation and density estimations to perform the analysis of various kinds of data.', 'Perform statistical analysis on a variety of data.', 'Understand and manipulate data, design and perform simple Monte Carlo experiments, and be able to use resampling methods.', 'Understand and apply the concept of vector Space, Basis of Vector Space and Its Inner Product.', 'Apply the concept of Linear transformation and Eigen Vector to understand the transformation of Feature space.', NULL),
(38, 3, 5, 'KCS-551 CSDS', 'Machine Learning Techniques', 'To understand the need for machine learning for various problem-solving.', 'To understand a wide variety of learning algorithms and how to evaluate models generated from data.', 'To understand the latest trends in machine learning.', 'To design appropriate machine learning algorithms and apply the algorithms to real-world problems.', 'To optimize the models learned and report on the expected accuracy that can be achieved by applying the models.', NULL),
(39, 3, 5, 'KDS-551 CSDS', 'Data Analytics and Visualization Lab', 'Implement numerical and statistical analysis on various data sources.', 'Apply data preprocessing and dimensionality reduction methods on raw data.', 'Implement linear regression technique on numeric data for prediction.', 'Execute clustering and association rule mining algorithms on different datasets.', 'Implement and evaluate the performance of KNN algorithm on different.', NULL),
(40, 3, 5, 'KCS-553 CSDS', 'Design and Analysis of Algorithm Lab', 'Compute the time complexity of various algorithms in worst-case, average-case and best-case.', 'Implement programs for solving various problems using iterative, recursive, greedy, dynamic, branch and bound and backtracking approaches.', 'Implement graph algorithms to solve the shortest-path problem and minimum spanning tree problem.', 'Implement programs using advanced data structures like RB Tree and B-Tree.', NULL, NULL),
(41, 6, 3, 'KCS-601 IT', 'Software Engineering', 'Explain various software characteristics and analyze different software Development Models.', 'Demonstrate the contents of a SRS and apply basic software quality assurance practices to ensure the design, development meet or exceed applicable standards.', 'Compare and contrast various methods for software design.', 'Formulate testing strategy for software systems, employ techniques such as unit testing, Test driven development and functional testing.', 'Manage software development process independently as well as in teams and make use of various software management tools for development, maintenance and analysis.', NULL),
(42, 6, 3, 'KIT-601 IT', 'Data Analytics', 'Discuss various concepts of data analytics pipeline.', 'Apply classification and regression techniques.', 'Explain and apply mining techniques on streaming data.', 'Compare different clustering and frequent pattern mining algorithms.', 'Describe the concept of R programming and implement analytics on Big data using R.', NULL),
(43, 6, 3, 'KCS-603 IT', 'Computer Networks', 'Explain basic concepts, OSI reference model, services, and role of each layer of OSI model and TCP/IP, networks devices and transmission media, Analog and digital data transmission.', 'Apply channel allocation, framing, error, and flow control techniques.', 'Describe the functions of Network Layer i.e. Logical addressing, subnetting & Routing Mechanism.', 'Explain the different Transport Layer functions i.e. Port addressing, Connection Management, Error control and Flow control mechanism.', 'Explain the functions offered by session and presentation layer and their Implementation.', 'Explain the different protocol used at application layer i.e HTTP,SNMP,FTP,TELNET and VPS.'),
(44, 6, 3, 'KOE-068 IT', 'Open Elective - Software Project Management', 'Identify project planning objectives, along with various cost/effort estimation models.', 'Organize & schedule project activities to compute critical path for risk analysis.', 'Monitor and control project activities.', 'Formulate testing objectives and test plan to ensure good software quality under SEI-CMM.', 'Configure changes and manage risks using project management tools.', NULL),
(46, 6, 3, 'KNC-601 IT', 'Constitution of India, Law and Engineering', 'Identify and explore the basic features and modalities about Indian constitution.', 'Differentiate and relate the functioning of Indian parliamentary system at the centre and state level.', 'Interpret various aspects of Indian Legal System and its related bodies.', 'Apply different laws and regulations related to engineering practices.', 'Correlate role of engineers with different organizations and governance models.', NULL),
(47, 6, 3, 'KCS-651 IT', 'Software Engineering Lab', 'Identify ambiguities, inconsistencies and incompleteness from a requirements specification and state functional and non-functional requirements.', 'Identify different actors and use cases from a given problem statement and draw a use-case diagram to associate use cases with different types of relationships.', 'Identify entity sets, their attributes, and various relationships and represent the data model through ER diagram.', 'Draw a class diagram after identifying classes and association among them.', 'Able to use modern engineering tools for specification, design, implementation and testing.', NULL),
(48, 6, 3, 'KIT-651 IT', 'Data Analytics Lab', 'Implement numerical and statistical analysis on various data sources.', 'Apply data preprocessing and dimensionality reduction methods on raw data.', 'Implement linear regression technique on numeric data for prediction.', 'Execute clustering and association rule mining algorithms on different datasets.', NULL, NULL),
(49, 6, 3, 'KCS-653 IT', 'Computer Networks Lab', 'Simulate different network topologies.', 'Implement various framing methods of Data Link Layer.', 'Implement various Error and flow control techniques.', 'Implement network routing and addressing techniques.', NULL, NULL),
(50, 6, 3, 'KAI-051 IT', 'Mathematical Foundation AI,ML,Data Science', 'Understand and apply the probability distributions, random number generation and density estimations to perform the analysis of various kinds of data.', 'Perform statistical analysis on a variety of data.', 'Understand and manipulate data, design and perform simple Monte Carlo experiments, and be able to use resampling methods.', 'Understand and apply the concept of vector Space, Basis of Vector Space and Its Inner Product.', 'Apply the concept of Linear transformation and Eigen Vector to understand the transformation of Feature space.', NULL),
(51, 6, 3, 'KIT-062 IT', 'Departmental Elective III - Blockchain Architecture Design', 'Describe the basic understanding of Blockchain architecture along with its primitive.', 'Explain the requirements for basic protocol along with scalability aspects.', 'Design and deploy the consensus process using frontend and backend.', 'Apply Blockchain techniques for different use cases like Finance, Trade/Supply and Government activities.', NULL, NULL),
(52, 3, 6, 'KCS-602 CSDS', 'Web Technology', 'Explain web development Strategies and Protocols governing Web.', 'Develop Java programs for window/web-based applications.', 'Design web pages using HTML, XML, CSS and JavaScript.', 'Creation of client-server environment using socket programming.', 'Building enterprise level applications and manipulate web databases using JDBC.', 'Design interactive web applications using Servlets and JSP.'),
(53, 3, 6, 'KCS-603 CSDS', 'Computer Networks', 'Explain basic concepts, OSI reference model, services, and role of each layer of OSI model and TCP/IP, networks devices and transmission media, Analog and digital data transmission.', 'Apply channel allocation, framing, error, and flow control techniques.', 'Describe the functions of Network Layer i.e. Logical addressing, subnetting & Routing Mechanism.', 'Explain the different Transport Layer functions i.e. Port addressing, Connection Management, Error control and Flow control mechanism.', 'Explain the functions offered by session and presentation layer and their Implementation.', 'Explain the different protocol used at application layer i.e HTTP, SNMP, FTP, TELNET and VPS.'),
(54, 3, 6, 'KDS-601 CSDS', 'Big Data', 'Demonstrate knowledge of Big Data Analytics concepts and its applications in business.', 'Demonstrate functions and components of Map Reduce Framework and HDFS.', 'Discuss Data Management concepts in NoSQL environment.', 'Explain process of developing Map Reduce based distributed processing applications.', 'Explain process of developing applications using HBASE, Hive, Pig etc.', NULL),
(55, 3, 6, 'KOE-068 CSDS', 'Open Elective - Software Project Management', 'Identify project planning objectives, along with various cost/effort estimation models.', 'Organize & schedule project activities to compute critical path for risk analysis.', 'Monitor and control project activities.', 'Formulate testing objectives and test plan to ensure good software quality under SEI-CMM.', 'Configure changes and manage risks using project management tools.', NULL),
(56, 3, 6, 'KOT-063 CSDS', 'Departmental Elective III - Artificial Intelligence', 'Understand the basics of the theory and practice of Artificial Intelligence as a discipline and about intelligent agents.', 'Understand search techniques and gaming theory.', 'Learn to apply knowledge representation techniques and problem solving strategies to common AI applications.', 'Be aware of techniques used for classification and clustering.', 'Understand basics of pattern recognition and steps required for it.', NULL),
(57, 3, 6, 'KNC-602 CSDS', 'Indian Tradition, Culture and Society', 'Impart basic principles of thought process, reasoning and inference to identify the roots and details of some of the contemporary issues faced by our nation and try to locate possible solutions to these challenges by digging deep into our past.', 'Enable the students to understand the importance of our surroundings and encourage the students to contribute towards sustainable development.', 'Sensitize students towards issues related to Indian culture, tradition and its composite character.', 'Make students aware of holistic life styles of Yogic-science and wisdom capsules in Sanskrit literature that are important in modern society with rapid technological advancements and societal disruptions.', 'Acquaint students with Indian Knowledge System, Indian perspective of modern scientific world-view and basic principles of Yoga and holistic health care system.', NULL),
(58, 3, 6, 'KDS-651 CSDS', 'Big Data and Analytics Lab', 'Optimize business decisions and create competitive advantage with Big data analytics.', 'Practice java concepts required for developing map reduce programs.', 'Impart the architectural concepts of Hadoop and introduce map reduce paradigm.', 'Practice programming tools PIG and HIVE in Hadoop eco system.', 'Implement best practices for Hadoop development.', NULL),
(59, 3, 6, 'KCS-652 CSDS', 'Web Technology Lab', 'Develop static web pages using HTML.', 'Develop Java programs for window/web-based applications.', 'Design dynamic web pages using JavaScript and XML.', 'Design dynamic web pages using server side programming e.g. Servlet/JSP.', 'Design server side applications using JDBC, ODBC and session tracking API.', NULL),
(60, 3, 6, 'KCS-653 CSDS', 'Computer Networks Lab', 'Simulate different network topologies.', 'Implement various framing methods of Data Link Layer.', 'Implement various Error and flow control techniques.', 'Implement network routing and addressing techniques.', 'Implement transport and security mechanisms.', NULL),
(61, 4, 8, 'KOE-083 IT', 'Entrepreneurship Development', 'Understanding the role and importance of entrepreneurship for economic development and to discern distinct entrepreneurial traits.', 'Identify the business opportunities with implementation of entrepreneurship idea successfully and develop the management skill to create value in business.', 'Apply the concepts of entrepreneurship for planning to execution of business and evaluate the business functioning on its technical environmental, market, managerial appraisal aspects.', 'Analyze the financial parameters in order to estimate the costing and Budgeting and generate the detailed financial check report.', 'Analyze different business models and its legal framework and also, assess the strengths and limitations of small scale industries.', NULL),
(62, 4, 8, 'KHU-802 IT', 'Project Management & Entrepreneurship', 'Explain the role and importance of entrepreneurship for economic development and discern distinct entrepreneurial traits.', 'Identify the business opportunities with implementation of innovating ideas successfully and develop the management skill for entrepreneurship in order to create value in business.', 'Apply the concepts of Project Management to execute a project and evaluate its feasibility based on its technical, environmental, market & managerial appraisal aspects.', 'Analyze the financial parameters in order to estimate the Budget and generate the detailed financial report of the project.', 'Analyze different business models for social ventures and its legal framework and also, assess the strengths and limitations of social entrepreneurship.', NULL),
(63, 4, 8, 'KOE-094 IT', 'Digital and Social Media Marketing', 'To describe marketing strategies in the digital age and provide fundamental knowledge for working in an online team.', 'To demonstrate content planning strategies and various social media platforms for marketing campaigns.', 'To explain various digital marketing channels for consumer acquisition and engagement.', 'To evaluate the performance of digital marketing strategies for business success.', 'To outline the security and privatization issues with digital marketing and identify its trends in Indian and global context.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `sno` int(11) NOT NULL,
  `deptcode` int(11) NOT NULL,
  `deptname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `depthod` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`sno`, `deptcode`, `deptname`, `depthod`) VALUES
(1, 1, 'Computer Science And Engineering', 'Dr. Mayank Singh');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `department` varchar(255) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `dept` varchar(255) NOT NULL,
  `section` varchar(55) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `fname`, `lname`, `email`, `department`, `designation`, `mobile`, `dept`, `section`, `img`, `password`, `status`) VALUES
(1, 'Dr. Ruchi', 'Saraswat', 'rsaraswat@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(2, 'Mr. Sukhendra', 'Singh', 'sukhendrasingh@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(3, 'Dr. Megha', 'Jain', 'meghajain@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(4, 'Ms. Abhilasha', 'Pawar', 'abhilashapawar.eed@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(5, 'Ms. Pragya', 'Gupta', 'pragya.gupta@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(6, 'Mr. Pawan', 'Mishra', 'pawan.mishra@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(7, 'Ms. Vaishnavi', 'Bansal', 'vaishnavibansal@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(8, 'Dr. Dhiraj ', 'Pandey', 'dhirajpandey@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(9, 'Ms. Puneeta', 'Singh', 'puneeta.singh@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(10, 'Mr. Udit', 'Mittal', 'uditmittal.eed@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(11, 'Ms Shobha', 'G', 'shobha.g@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(12, 'Dr. Neha', 'Saxena', 'nehadeepaksaxena@jssaten.ac.in', 'Mechanical Engineering', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(13, 'Dr. Deepa', 'Tyagi', 'deepatyagi@jssaten.ac.in', 'English', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(14, 'Dr. Anushri', 'Verma', 'anushriverma@jssaten.ac.in', 'Mathematics', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(15, 'Mr. Vikas Kumar', 'Singla', 'singla.1982@jssaten.ac.in', 'Mechanical Engineering', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(16, 'Dr. Ranu', 'Pandey', 'ranupandey@jssaten.ac.in', 'Mathematics', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(17, 'Mr. Kapil Dev', 'Panchal', 'kapildev@jssaten.ac.in', 'Mechanical Engineering', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(18, 'Dr. Parul', 'Chaudhary', 'parul@gmail.com', 'Computer Science', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(19, 'Mr. M', 'Nagraj', 'mallannanagaraj@jssaten.ac.in', 'Mechanical Engineering', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(20, 'Dr. Gunjan', 'Ansari', 'gunjan@gmail.com', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(21, 'Dr. Meena', 'Arora', 'meenaarora@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(22, 'Ms. Ujjwala', 'Thakur', 'ujwalathakur@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(23, 'Mr. Manoj', 'Kumar', 'manojkumar@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(24, 'Ms. Aparna', 'Srivastava', 'aparnashrivastava@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(25, 'Ms. Prachi', 'Chhabra', 'prachichhabra@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(26, 'Mr. Birendra', 'Verma', 'birendraverma@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(27, 'Ms. Charu', 'Awasthi', 'charu.awasthi@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(28, 'Ms Anuradha', 'Singh', 'anuradha.singh@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(29, 'Ms. Shivani', 'Pathak', 'shivani.pathak@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(30, 'Dr. Geeta', 'Singh', 'geeta.singh@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(31, 'Mr. Mayank', 'Raj', 'mayank.raj@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(32, 'Ms. Vaishali', 'Tyagi', 'vaishali.tyagi@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(33, 'Dr.Anju', 'Tripathi', 'anjutripathi.dms@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(34, 'Mr. Abhishek', 'Chaudhary', 'abhishek.chaudhary@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(35, 'Mr. Maneesh', 'Pant', 'maneesh.pant@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(36, 'Dr. Navin', 'Kumar Jha', 'navinjha@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(37, 'Mr.Sachin', 'Bansal', 'sachin.bansal@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(38, 'Mr. Nirmal', 'Kumar Agrawal', 'nirmalkragarwal.eed@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(39, 'Dr .Gunjan', 'Varshney', 'gunjanvarshney.eed@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(40, 'Dr. Suvandhan', 'Saraswat', 'suvandan.saraswat@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0),
(41, 'Ms. Divya', 'Chandra', 'divyachandra@jssaten.ac.in', '', NULL, NULL, '', NULL, NULL, 'Test@12345', 0);

-- --------------------------------------------------------

--
-- Table structure for table `facultyresponse`
--

CREATE TABLE `facultyresponse` (
  `facultyemail` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `suballoted` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `sectionwise` float DEFAULT NULL,
  `co1` float DEFAULT NULL,
  `co2` float DEFAULT NULL,
  `co3` float DEFAULT NULL,
  `co4` float DEFAULT NULL,
  `co5` float DEFAULT NULL,
  `co6` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facultyresponse`
--

INSERT INTO `facultyresponse` (`facultyemail`, `year`, `semester`, `suballoted`, `subject`, `sectionwise`, `co1`, `co2`, `co3`, `co4`, `co5`, `co6`) VALUES
('meghajain@jssaten.ac.in', 4, 7, 'KCS-713 IT', 'Cloud Computing', 4, 3, 3, 3, 3, 3, 0),
('rsaraswat@jssaten.ac.in', 4, 7, 'KHU-701 IT', 'Rural Development:Administration and Planning', 4, 3, 3, 3, 3, 3, 0),
('pawan.mishra@jssaten.ac.in', 4, 7, 'KIT-751A IT', 'Software Testing Lab', 4, 3, 3, 3, 3, 3, 0),
('sukhendrasingh@jssaten.ac.in', 4, 7, 'KCS-076 IT', 'Software Testing', 4, 3, 3, 3, 3, 3, 0),
('sukhendrasingh@jssaten.ac.in', 4, 7, 'KIT-751A IT', 'Software Testing Lab', 4, 3, 3, 3, 3, 3, 0),
('abhilashapawar.eed@jssaten.ac.in', 4, 7, 'KOE-074 IT', 'Renewable Energy Resources', 4, 3, 3, 3, 3, 3, 0),
('pragya.gupta@jssaten.ac.in', 4, 7, 'KIT-751A IT', 'Software Testing Lab', 4, 3, 3, 3, 3, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `respone`
--

CREATE TABLE `respone` (
  `id` int(11) NOT NULL,
  `usersemail` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `facultyemail` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `subjectcode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `co1` int(11) DEFAULT NULL,
  `co2` int(11) DEFAULT NULL,
  `co3` int(11) DEFAULT NULL,
  `co4` int(11) DEFAULT NULL,
  `co5` int(11) DEFAULT NULL,
  `co6` int(11) DEFAULT NULL,
  `co7` int(11) DEFAULT NULL,
  `sb1` int(11) DEFAULT NULL,
  `sb2` int(11) DEFAULT NULL,
  `sb3` int(11) DEFAULT NULL,
  `sb4` int(11) DEFAULT NULL,
  `sb5` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `respone`
--

INSERT INTO `respone` (`id`, `usersemail`, `facultyemail`, `subjectcode`, `subject`, `co1`, `co2`, `co3`, `co4`, `co5`, `co6`, `co7`, `sb1`, `sb2`, `sb3`, `sb4`, `sb5`) VALUES
(1443, 'yashgupta0911@gmail.com', 'sukhendrasingh@jssaten.ac.in', 'KCS-076 IT', 'Software Testing', 3, 3, 3, 3, 3, 0, NULL, 4, 4, 4, 4, 4),
(1444, 'yashgupta0911@gmail.com', 'meghajain@jssaten.ac.in', 'KCS-713 IT', 'Cloud Computing', 3, 3, 3, 3, 3, 0, NULL, 4, 4, 4, 4, 4),
(1445, 'yashgupta0911@gmail.com', 'rsaraswat@jssaten.ac.in', 'KHU-701 IT', 'Rural Development:Administration and Planning', 3, 3, 3, 3, 3, 0, NULL, 4, 4, 4, 4, 4),
(1446, 'yashgupta0911@gmail.com', 'sukhendrasingh@jssaten.ac.in', 'KIT-751A IT', 'Software Testing Lab', 3, 3, 3, 3, 3, 0, NULL, 4, 4, 4, 4, 4),
(1447, 'yashgupta0911@gmail.com', 'pragya.gupta@jssaten.ac.in', 'KIT-751A IT', 'Software Testing Lab', 3, 3, 3, 3, 3, 0, NULL, 4, 4, 4, 4, 4),
(1448, 'yashgupta0911@gmail.com', 'pawan.mishra@jssaten.ac.in', 'KIT-751A IT', 'Software Testing Lab', 3, 3, 3, 3, 3, 0, NULL, 4, 4, 4, 4, 4),
(1449, 'yashgupta0911@gmail.com', 'abhilashapawar.eed@jssaten.ac.in', 'KOE-074 IT', 'Renewable Energy Resources', 3, 3, 3, 3, 3, 0, NULL, 4, 4, 4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `subjectalloted`
--

CREATE TABLE `subjectalloted` (
  `sno` int(11) NOT NULL,
  `facultyemail` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `year` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `section` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `suballoted` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjectalloted`
--

INSERT INTO `subjectalloted` (`sno`, `facultyemail`, `year`, `semester`, `section`, `suballoted`) VALUES
(1, 'rsaraswat@jssaten.ac.in', 4, 7, 'IT 1', 'KHU-701 IT'),
(2, 'sukhendrasingh@jssaten.ac.in', 4, 7, 'IT 1', 'KCS-076 IT'),
(3, 'meghajain@jssaten.ac.in', 4, 7, 'IT 1', 'KCS-713 IT'),
(4, 'abhilashapawar.eed@jssaten.ac.in', 4, 7, 'IT 1', 'KOE-074 IT'),
(5, 'sukhendrasingh@jssaten.ac.in', 4, 7, 'IT 1', 'KIT-751A IT'),
(6, 'pragya.gupta@jssaten.ac.in', 4, 7, 'IT 1', 'KIT-751A IT'),
(7, 'pawan.mishra@jssaten.ac.in', 4, 7, 'IT 1', 'KIT-751A IT'),
(8, 'vaishnavibansal@jssaten.ac.in', 4, 7, 'IT 2', 'KHU-701 IT'),
(9, 'dhirajpandey@jssaten.ac.in', 4, 7, 'IT 2', 'KCS-076 IT'),
(10, 'puneeta.singh@jssaten.ac.in', 4, 7, 'IT 2', 'KCS-713 IT'),
(11, 'uditmittal.eed@jssaten.ac.in', 4, 7, 'IT 2', 'KOE-074 IT'),
(12, 'puneeta.singh@jssaten.ac.in', 4, 7, 'IT 2', 'KIT-751A IT'),
(13, 'shobha.g@jssaten.ac.in', 4, 7, 'IT 2', 'KIT-751A IT'),
(14, 'dhirajpandey@jssaten.ac.in', 4, 7, 'IT 2', 'KIT-751A IT'),
(15, 'singla.1982@jssaten.ac.in', 2, 3, 'IT 1', 'BOE-304 IT'),
(16, 'deepatyagi@jssaten.ac.in', 2, 3, 'IT 1', 'BAS-301 IT'),
(17, 'anuradha.singh@jssaten.ac.in', 2, 3, 'IT 1', 'BCS-301 IT'),
(18, 'meenaarora@jssaten.ac.in', 2, 3, 'IT 1', 'BCS-302 IT'),
(19, 'sukhendrasingh@jssaten.ac.in', 2, 3, 'IT 1', 'BCS-303 IT'),
(20, 'shobha.g@jssaten.ac.in', 2, 3, 'IT 1', 'BCC-301 IT'),
(21, 'dhirajpandey@jssaten.ac.in', 2, 3, 'IT 1', 'BCS-351 IT'),
(22, 'meghajain@jssaten.ac.in', 2, 3, 'IT 1', 'BCS-351 IT'),
(23, 'anuradha.singh@jssaten.ac.in', 2, 3, 'IT 1', 'BCS-351 IT'),
(24, 'meenaarora@jssaten.ac.in', 2, 3, 'IT 1', 'BCS-352 IT'),
(25, 'shivani.pathak@jssaten.ac.in', 2, 3, 'IT 1', 'BCS-352 IT'),
(26, 'gunjan@gmail.com', 2, 3, 'IT 1', 'BCS-352 IT'),
(27, 'sukhendrasingh@jssaten.ac.in', 2, 3, 'IT 1', 'BCS-353 IT'),
(28, 'prachichhabra@jssaten.ac.in', 2, 3, 'IT 1', 'BCS-353 IT'),
(29, 'manojkumar@jssaten.ac.in', 2, 3, 'IT 1', 'BCS-353 IT'),
(30, 'nehadeepaksaxena@jssaten.ac.in', 2, 3, 'IT 2', 'BOE-304 IT'),
(31, 'deepatyagi@jssaten.ac.in', 2, 3, 'IT 2', 'BAS-301 IT'),
(32, 'meghajain@jssaten.ac.in', 2, 3, 'IT 2', 'BCS-301 IT'),
(33, 'gunjan@gmail.com', 2, 3, 'IT 2', 'BCS-302 IT'),
(34, 'prachichhabra@jssaten.ac.in', 2, 3, 'IT 2', 'BCS-303 IT'),
(35, 'pawan.mishra@jssaten.ac.in', 2, 3, 'IT 2', 'BCC-301 IT'),
(36, 'meghajain@jssaten.ac.in', 2, 3, 'IT 2', 'BCS-351 IT'),
(37, 'geeta.singh@jssaten.ac.in', 2, 3, 'IT 2', 'BCS-351 IT'),
(38, 'anuradha.singh@jssaten.ac.in', 2, 3, 'IT 2', 'BCS-351 IT'),
(39, 'gunjan@gmail.com', 2, 3, 'IT 2', 'BCS-352 IT'),
(40, 'shivani.pathak@jssaten.ac.in', 2, 3, 'IT 2', 'BCS-352 IT'),
(41, 'pragya.gupta@jssaten.ac.in', 2, 3, 'IT 2', 'BCS-352 IT'),
(42, 'prachichhabra@jssaten.ac.in', 2, 3, 'IT 2', 'BCS-353 IT'),
(43, 'manojkumar@jssaten.ac.in', 2, 3, 'IT 2', 'BCS-353 IT'),
(44, 'mayank.raj@jssaten.ac.in', 2, 3, 'IT 2', 'BCS-353 IT'),
(45, 'kapildev@jssaten.ac.in', 2, 3, 'IT 3', 'BOE-304 IT'),
(46, 'deepatyagi@jssaten.ac.in', 2, 3, 'IT 3', 'BAS-301 IT'),
(47, 'vaishali.tyagi@jssaten.ac.in', 2, 3, 'IT 3', 'BCS-301 IT'),
(48, 'gunjan@gmail.com', 2, 3, 'IT 3', 'BCS-302 IT'),
(49, 'prachichhabra@jssaten.ac.in', 2, 3, 'IT 3', 'BCS-303 IT'),
(50, 'pawan.mishra@jssaten.ac.in', 2, 3, 'IT 3', 'BCC-301 IT'),
(51, 'meghajain@jssaten.ac.in', 2, 3, 'IT 3', 'BCS-351 IT'),
(52, 'geeta.singh@jssaten.ac.in', 2, 3, 'IT 3', 'BCS-351 IT'),
(53, 'vaishali.tyagi@jssaten.ac.in', 2, 3, 'IT 3', 'BCS-351 IT'),
(54, 'charu.awasthi@jssaten.ac.in', 2, 3, 'IT 3', 'BCS-352 IT'),
(55, 'birendraverma@jssaten.ac.in', 2, 3, 'IT 3', 'BCS-352 IT'),
(56, 'shivani.pathak@jssaten.ac.in', 2, 3, 'IT 3', 'BCS-352 IT'),
(57, 'prachichhabra@jssaten.ac.in', 2, 3, 'IT 3', 'BCS-353 IT'),
(58, 'manojkumar@jssaten.ac.in', 2, 3, 'IT 3', 'BCS-353 IT'),
(59, 'mayank.raj@jssaten.ac.in', 2, 3, 'IT 3', 'BCS-353 IT'),
(60, 'mallannanagaraj@jssaten.ac.in', 2, 3, 'CSDS 1', 'BVE-301 CSDS'),
(61, 'anushriverma@jssaten.ac.in', 2, 3, 'CSDS 1', 'BAS-303 CSDS'),
(62, 'aparnashrivastava@jssaten.ac.in', 2, 3, 'CSDS 1', 'BCS-301 CSDS'),
(63, 'pragya.gupta@jssaten.ac.in', 2, 3, 'CSDS 1', 'BCS-302 CSDS'),
(64, 'manojkumar@jssaten.ac.in', 2, 3, 'CSDS 1', 'BCS-303 CSDS'),
(65, 'mayank.raj@jssaten.ac.in', 2, 3, 'CSDS 1', 'BCC-302 CSDS'),
(66, 'aparnashrivastava@jssaten.ac.in', 2, 3, 'CSDS 1', 'BCS-351 CSDS'),
(67, 'geeta.singh@jssaten.ac.in', 2, 3, 'CSDS 1', 'BCS-351 CSDS'),
(68, 'pragya.gupta@jssaten.ac.in', 2, 3, 'CSDS 1', 'BCS-352 CSDS'),
(69, 'charu.awasthi@jssaten.ac.in', 2, 3, 'CSDS 1', 'BCS-352 CSDS'),
(70, 'birendraverma@jssaten.ac.in', 2, 3, 'CSDS 1', 'BCS-352 CSDS'),
(71, 'manojkumar@jssaten.ac.in', 2, 3, 'CSDS 1', 'BCS-353 CSDS'),
(72, 'sukhendrasingh@jssaten.ac.in', 2, 3, 'CSDS 1', 'BCS-353 CSDS'),
(73, 'pawan.mishra@jssaten.ac.in', 2, 3, 'CSDS 1', 'BCS-353 CSDS'),
(74, 'mallannanagaraj@jssaten.ac.in', 2, 3, 'CSDS 2', 'BVE-301 CSDS'),
(75, 'ranupandey@jssaten.ac.in', 2, 3, 'CSDS 2', 'BAS-303 CSDS'),
(76, 'geeta.singh@jssaten.ac.in', 2, 3, 'CSDS 2', 'BCS-301 CSDS'),
(77, 'shivani.pathak@jssaten.ac.in', 2, 3, 'CSDS 2', 'BCS-302 CSDS'),
(78, 'manojkumar@jssaten.ac.in', 2, 3, 'CSDS 2', 'BCS-303 CSDS'),
(79, 'mayank.raj@jssaten.ac.in', 2, 3, 'CSDS 2', 'BCC-302 CSDS'),
(80, 'geeta.singh@jssaten.ac.in', 2, 3, 'CSDS 2', 'BCS-351 CSDS'),
(81, 'vaishali.tyagi@jssaten.ac.in', 2, 3, 'CSDS 2', 'BCS-351 CSDS'),
(82, 'anuradha.singh@jssaten.ac.in', 2, 3, 'CSDS 2', 'BCS-351 CSDS'),
(83, 'shivani.pathak@jssaten.ac.in', 2, 3, 'CSDS 2', 'BCS-352 CSDS'),
(84, 'pragya.gupta@jssaten.ac.in', 2, 3, 'CSDS 2', 'BCS-352 CSDS'),
(85, 'manojkumar@jssaten.ac.in', 2, 3, 'CSDS 2', 'BCS-352 CSDS'),
(86, 'manojkumar@jssaten.ac.in', 2, 3, 'CSDS 2', 'BCS-353 CSDS'),
(87, 'sukhendrasingh@jssaten.ac.in', 2, 3, 'CSDS 2', 'BCS-353 CSDS'),
(88, 'pawan.mishra@jssaten.ac.in', 2, 3, 'CSDS 2', 'BCS-353 CSDS'),
(89, 'meenaarora@jssaten.ac.in', 3, 5, 'IT 1', 'KCS-501 IT'),
(90, 'ujwalathakur@jssaten.ac.in', 3, 5, 'IT 1', 'KIT-501 IT'),
(91, 'parul@gmail.com', 3, 5, 'IT 1', 'KCS-503 IT'),
(92, 'vaishali.tyagi@jssaten.ac.in', 3, 5, 'IT 1', 'KNC-502 IT'),
(93, 'geeta.singh@jssaten.ac.in', 3, 5, 'IT 1', 'KOE-074_ IT'),
(94, 'birendraverma@jssaten.ac.in', 3, 5, 'IT 1', 'KCS-055 IT'),
(95, 'charu.awasthi@jssaten.ac.in', 3, 5, 'IT 1', 'KCS-551 IT'),
(96, 'birendraverma@jssaten.ac.in', 3, 5, 'IT 1', 'KCS-551 IT'),
(97, 'meenaarora@jssaten.ac.in', 3, 5, 'IT 1', 'KCS-551 IT'),
(98, 'shobha.g@jssaten.ac.in', 3, 5, 'IT 1', 'KCS-551 IT'),
(99, 'ujwalathakur@jssaten.ac.in', 3, 5, 'IT 1', 'KIT-551 IT'),
(100, 'mayank.raj@jssaten.ac.in', 3, 5, 'IT 1', 'KIT-551 IT'),
(101, 'parul@gmail.com', 3, 5, 'IT 1', 'KCS-553 IT'),
(102, 'vaishali.tyagi@jssaten.ac.in', 3, 5, 'IT 1', 'KCS-553 IT'),
(103, 'puneeta.singh@jssaten.ac.in', 3, 5, 'IT 1', 'KCS-553 IT'),
(104, 'birendraverma@jssaten.ac.in', 3, 5, 'IT 2', 'KCS-501 IT'),
(105, 'ujwalathakur@jssaten.ac.in', 3, 5, 'IT 2', 'KIT-501 IT'),
(106, 'parul@gmail.com', 3, 5, 'IT 2', 'KCS-503 IT'),
(107, 'vaishali.tyagi@jssaten.ac.in', 3, 5, 'IT 2', 'KNC-502 IT'),
(108, 'shivani.pathak@jssaten.ac.in', 3, 5, 'IT 2', 'KOE-074_ IT'),
(109, 'charu.awasthi@jssaten.ac.in', 3, 5, 'IT 2', 'KCS-055 IT'),
(110, 'birendraverma@jssaten.ac.in', 3, 5, 'IT 2', 'KCS-551 IT'),
(111, 'shobha.g@jssaten.ac.in', 3, 5, 'IT 2', 'KCS-551 IT'),
(112, 'ujwalathakur@jssaten.ac.in', 3, 5, 'IT 2', 'KIT-551 IT'),
(113, 'mayank.raj@jssaten.ac.in', 3, 5, 'IT 2', 'KIT-551 IT'),
(115, 'parul@gmail.com', 3, 5, 'IT 2', 'KCS-553 IT'),
(116, 'vaishali.tyagi@jssaten.ac.in', 3, 5, 'IT 2', 'KCS-553 IT'),
(117, 'anuradha.singh@jssaten.ac.in', 3, 5, 'IT 2', 'KCS-553 IT'),
(118, 'charu.awasthi@jssaten.ac.in', 3, 5, 'CSDS', 'KCS-501 CSDS'),
(119, 'aparnashrivastava@jssaten.ac.in', 3, 5, 'CSDS', 'KDS-501 CSDS'),
(120, 'puneeta.singh@jssaten.ac.in', 3, 5, 'CSDS', 'KCS-503 CSDS'),
(121, 'anjutripathi.dms@jssaten.ac.in', 3, 5, 'CSDS', 'KNC-501 CSDS'),
(122, 'manojkumar@jssaten.ac.in', 3, 5, 'CSDS', 'KAI-051 CSDS'),
(123, 'pragya.gupta@jssaten.ac.in', 3, 5, 'CSDS', 'KCS-055 CSDS'),
(124, 'charu.awasthi@jssaten.ac.in', 3, 5, 'CSDS', 'KCS-551 CSDS'),
(125, 'shobha.g@jssaten.ac.in', 3, 5, 'CSDS', 'KCS-551 CSDS'),
(126, 'birendraverma@jssaten.ac.in', 3, 5, 'CSDS', 'KCS-551 CSDS'),
(127, 'aparnashrivastava@jssaten.ac.in', 3, 5, 'CSDS', 'KDS-551 CSDS'),
(128, 'shobha.g@jssaten.ac.in', 3, 5, 'CSDS', 'KDS-551 CSDS'),
(129, 'puneeta.singh@jssaten.ac.in', 3, 5, 'CSDS', 'KCS-553 CSDS'),
(130, 'anuradha.singh@jssaten.ac.in', 3, 5, 'CSDS', 'KCS-553 CSDS'),
(131, 'pawan.mishra@jssaten.ac.in', 3, 5, 'CSDS', 'KCS-553 CSDS'),
(132, 'meenaarora@jssaten.ac.in', 3, 6, 'IT 1', 'KCS-601 IT'),
(133, 'aparnashrivastava@jssaten.ac.in', 3, 6, 'IT 1', 'KIT-601 IT'),
(134, 'birendraverma@jssaten.ac.in', 3, 6, 'IT 1', 'KCS-603 IT'),
(135, 'abhishek.chaudhary@jssaten.ac.in', 3, 6, 'IT 1', 'KOE-068 IT'),
(137, 'anjutripathi.dms@jssaten.ac.in', 3, 6, 'IT 1', 'KNC-601 IT'),
(140, 'aparnashrivastava@jssaten.ac.in', 3, 6, 'IT 1', 'KIT-651 IT'),
(141, 'manojkumar@jssaten.ac.in', 3, 6, 'IT 1', 'KIT-651 IT'),
(142, 'birendraverma@jssaten.ac.in', 3, 6, 'IT 1', 'KCS-653 IT'),
(143, 'maneesh.pant@jssaten.ac.in', 3, 6, 'IT 1', 'KCS-653 IT'),
(144, 'charu.awasthi@jssaten.ac.in', 3, 6, 'IT 1', 'KCS-653 IT'),
(145, 'prachichhabra@jssaten.ac.in', 3, 6, 'IT 2', 'KCS-601 IT'),
(146, 'sukhendrasingh@jssaten.ac.in', 3, 6, 'IT 2', 'KIT-601 IT'),
(147, 'puneeta.singh@jssaten.ac.in', 3, 6, 'IT 2', 'KCS-603 IT'),
(148, 'meenaarora@jssaten.ac.in', 3, 6, 'IT 2', 'KOE-068 IT'),
(150, 'navinjha@jssaten.ac.in', 3, 6, 'IT 2', 'KNC-601 IT'),
(154, 'sukhendrasingh@jssaten.ac.in', 3, 6, 'IT 2', 'KIT-651 IT'),
(155, 'abhishek.chaudhary@jssaten.ac.in', 3, 6, 'IT 2', 'KIT-651 IT'),
(156, 'puneeta.singh@jssaten.ac.in', 3, 6, 'IT 2', 'KCS-653 IT'),
(157, 'anuradha.singh@jssaten.ac.in', 3, 6, 'IT 2', 'KCS-653 IT'),
(158, 'sachin.bansal@jssaten.ac.in', 3, 6, 'IT 2', 'KCS-653 IT'),
(159, 'ujwalathakur@jssaten.ac.in', 3, 6, 'CSDS', 'KCS-602 CSDS'),
(160, 'charu.awasthi@jssaten.ac.in', 3, 6, 'CSDS', 'KCS-603 CSDS'),
(161, 'geeta.singh@jssaten.ac.in', 3, 6, 'CSDS', 'KDS-601 CSDS'),
(162, 'maneesh.pant@jssaten.ac.in', 3, 6, 'CSDS', 'KOE-068 CSDS'),
(163, 'abhishek.chaudhary@jssaten.ac.in', 3, 6, 'CSDS', 'KOT-063 CSDS'),
(164, 'nirmalkragarwal.eed@jssaten.ac.in', 3, 6, 'CSDS', 'KNC-602 CSDS'),
(165, 'geeta.singh@jssaten.ac.in', 3, 6, 'CSDS', 'KDS-651 CSDS'),
(166, 'mayank.raj@jssaten.ac.in', 3, 6, 'CSDS', 'KDS-651 CSDS'),
(167, 'ujwalathakur@jssaten.ac.in', 3, 6, 'CSDS', 'KCS-652 CSDS'),
(168, 'shivani.pathak@jssaten.ac.in', 3, 6, 'CSDS', 'KCS-652 CSDS'),
(169, 'charu.awasthi@jssaten.ac.in', 3, 6, 'CSDS', 'KCS-653 CSDS'),
(170, 'birendraverma@jssaten.ac.in', 3, 6, 'CSDS', 'KCS-653 CSDS'),
(171, 'sachin.bansal@jssaten.ac.in', 3, 6, 'CSDS', 'KCS-653 CSDS'),
(172, 'gunjanvarshney.eed@jssaten.ac.in', 4, 8, 'IT 1', 'KOE-083 IT'),
(173, 'suvandan.saraswat@jssaten.ac.in', 4, 8, 'IT 1', 'KHU-802 IT'),
(174, 'ujwalathakur@jssaten.ac.in', 4, 8, 'IT 1', 'KOE-094 IT'),
(175, 'uditmittal.eed@jssaten.ac.in', 4, 8, 'IT 2', 'KOE-083 IT'),
(176, 'divyachandra@jssaten.ac.in', 4, 8, 'IT 2', 'KHU-802 IT'),
(177, 'maneesh.pant@jssaten.ac.in', 4, 8, 'IT 2', 'KOE-094 IT'),
(178, 'meenaarora@jssaten.ac.in', 3, 6, 'IT 1', 'KCS-651 IT'),
(179, 'meghajain@jssaten.ac.in', 3, 6, 'IT 1', 'KCS-651 IT'),
(180, 'prachichhabra@jssaten.ac.in', 3, 6, 'IT 2', 'KCS-651 IT'),
(181, 'meghajain@jssaten.ac.in', 3, 6, 'IT 2', 'KCS-651 IT'),
(182, 'dhirajpandey@jssaten.ac.in', 3, 6, 'IT 2', 'KCS-651 IT'),
(183, 'birendraverma@jssaten.ac.in', 3, 6, 'IT 2', 'KIT-062 IT'),
(184, 'meghajain@jssaten.ac.in', 3, 6, 'IT 1', 'KIT-062 IT');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `section_` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `subjectcode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `year`, `semester`, `section_`, `subjectcode`, `subject`) VALUES
(1, 4, 7, 'IT', 'KHU-701 IT', 'Rural Development:Administration and Planning'),
(2, 4, 7, 'IT', 'KCS-076 IT', 'Software Testing'),
(3, 4, 7, 'IT', 'KCS-713 IT', 'Cloud Computing'),
(4, 4, 7, 'IT', 'KOE-074 IT', 'Renewable Energy Resources'),
(5, 4, 7, 'IT', 'KIT-751A IT', 'Software Testing Lab'),
(6, 2, 3, 'IT', 'BOE-304 IT', 'Energy Science & Engineering'),
(7, 2, 3, 'IT', 'BAS-301 IT', 'Technical Communication'),
(8, 2, 3, 'IT', 'BCS-301 IT', 'Data Structure'),
(9, 2, 3, 'IT', 'BCS-302 IT', 'Computer Organizaton and Architecture'),
(10, 2, 3, 'IT', 'BCS-303 IT', 'Discrete Structures and Theory of Logic'),
(11, 2, 3, 'IT', 'BCC-301 IT', 'Cyber Security'),
(12, 2, 3, 'IT', 'BCS-351 IT', 'Data Structures Lab'),
(13, 2, 3, 'IT', 'BCS-352 IT', 'Computer Organization and Architecture Lab'),
(14, 2, 3, 'IT', 'BCS-353 IT', 'Web Designing Workshop'),
(15, 2, 3, 'CSDS', 'BVE-301 CSDS', 'Universal Human Values'),
(16, 2, 3, 'CSDS', 'BAS-303 CSDS', 'Maths IV'),
(17, 2, 3, 'CSDS', 'BCS-301 CSDS', 'Data Structure'),
(18, 2, 3, 'CSDS', 'BCS-302 CSDS', 'Computer Organization and Architecture'),
(19, 2, 3, 'CSDS', 'BCS-303 CSDS', 'Discrete Structures and Theory of Logic'),
(20, 2, 3, 'CSDS', 'BCC-302 CSDS', 'Python Programming'),
(21, 2, 3, 'CSDS', 'BCS-351 CSDS', 'Data Structure Lab'),
(22, 2, 3, 'CSDS', 'BCS-352 CSDS', 'Computer Organization Lab'),
(23, 2, 3, 'CSDS', 'BCS-353 CSDS', 'Web Designing Workshop Lab'),
(24, 3, 5, 'IT', 'KCS-501 IT', 'Database Management System'),
(25, 3, 5, 'IT', 'KIT-501 IT', 'Web Technology'),
(26, 3, 5, 'IT', 'KCS-503 IT', 'Design and Analysis of Algorithm'),
(27, 3, 5, 'IT', 'KNC-502 IT', 'Indian Tradition, Culture and Society'),
(28, 3, 5, 'IT', 'KOE-074_ IT', 'Object Oriented System Design'),
(29, 3, 5, 'IT', 'KCS-055 IT', 'Machine Learning Technique'),
(30, 3, 5, 'IT', 'KCS-551 IT', 'Database Management System Lab'),
(31, 3, 5, 'IT', 'KIT-551 IT', 'Web Technology Lab'),
(32, 3, 5, 'IT', 'KCS-553 IT', 'Design and Analysis of Algorithm Lab'),
(33, 3, 5, 'CSDS', 'KCS-501 CSDS', 'Database Management System'),
(34, 3, 5, 'CSDS', 'KDS-501 CSDS', 'Introduction to Data Analytics and Visualization'),
(35, 3, 5, 'CSDS', 'KCS-503 CSDS', 'Design and Analysis of Algorithm'),
(36, 3, 5, 'CSDS', 'KNC-501 CSDS', 'Constitution of India Law and Engineering'),
(37, 3, 5, 'CSDS', 'KAI-051 CSDS', 'Mathematical Foundation AI,ML,Data Science'),
(38, 3, 5, 'CSDS', 'KCS-055 CSDS', 'Machine Learning Techniques'),
(39, 3, 5, 'CSDS', 'KCS-551 CSDS', 'Database Management System Lab'),
(40, 3, 5, 'CSDS', 'KDS-551 CSDS', 'Data Analytics and Visualization Lab'),
(41, 3, 5, 'CSDS', 'KCS-553 CSDS', 'Design and Analysis of Algorithm Lab'),
(42, 3, 6, 'IT', 'KCS-601 IT', 'Software Engineering'),
(43, 3, 6, 'IT', 'KIT-601 IT', 'Data Analytics'),
(44, 3, 6, 'IT', 'KCS-603 IT', 'Computer Networks'),
(45, 3, 6, 'IT', 'KOE-068 IT', 'Open Elective - Software Project Management'),
(46, 3, 6, 'IT', 'KIT-062 IT', 'Departmental Elective III - Blockchain Architecture Design'),
(47, 3, 6, 'IT', 'KNC-601 IT', 'Constitution of India, Law and Engineering'),
(48, 3, 6, 'IT', 'KCS-651 IT', 'Software Engineering Lab'),
(49, 3, 6, 'IT', 'KIT-651 IT', 'Data Analytics Lab'),
(50, 3, 6, 'IT', 'KCS-653 IT', 'Computer Networks Lab'),
(51, 3, 6, 'CSDS', 'KCS-602 CSDS', 'Web Technology'),
(52, 3, 6, 'CSDS', 'KCS-603 CSDS', 'Computer Networks'),
(53, 3, 6, 'CSDS', 'KDS-601 CSDS', 'Big Data'),
(54, 3, 6, 'CSDS', 'KOE-068 CSDS', 'Open Elective - Software Project Management'),
(55, 3, 6, 'CSDS', 'KOT-063 CSDS', 'Departmental Elective III - Artificial Intelligence'),
(56, 3, 6, 'CSDS', 'KNC-602 CSDS', 'Indian Tradition, Culture and Society'),
(57, 3, 6, 'CSDS', 'KDS-651 CSDS', 'Big Data and Analytics Lab'),
(58, 3, 6, 'CSDS', 'KCS-652 CSDS', 'Web Technology Lab'),
(59, 3, 6, 'CSDS', 'KCS-653 CSDS', 'Computer Networks Lab'),
(60, 4, 8, 'IT', 'KOE-083 IT', 'Entrepreneurship Development'),
(61, 4, 8, 'IT', 'KHU-802 IT', 'Project Management & Entrepreneurship'),
(62, 4, 8, 'IT', 'KOE-094 IT', 'Digital and Social Media Marketing'),
(65, 3, 5, 'IT', 'KAI-051 IT', 'Mathematical Foundation AI,ML,Data Science');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `department` varchar(255) NOT NULL,
  `section` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `urollno` varchar(13) DEFAULT NULL,
  `addno` varchar(9) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `feedback` int(11) NOT NULL DEFAULT 0,
  `activationcode` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `year`, `semester`, `department`, `section`, `fname`, `lname`, `email`, `urollno`, `addno`, `password`, `contactno`, `img`, `posting_date`, `feedback`, `activationcode`, `status`) VALUES
(42, 4, 7, 'Information Technology', 'IT 1', 'Yash', 'Gupta', 'yashgupta0911@gmail.com', '2100910139009', '21DLIT009', 'Test@12345', '7905047835', 'fotor_2023-3-24_20_50_49.png', '2023-02-28 16:28:24', 0, 'fa65903dc2f4501b964aea4b10d79b2a', 1),
(46, 1, 2, 'Computer Science And Engineering', 'B 3', 'Shubham', 'Kumar', '22cs116@jssaten.ac.in', '0', '22CS116.', 'Jss Aten @ 1234', '8287359082', NULL, '2023-03-02 05:44:11', 1, 'b43f5902c8994c4ed8715f39bd0debd0', 1),
(47, 1, 2, 'Computer Science And Engineering', 'B 1', 'shreyansh', 'garg', 'shreyanshgarg505@gmail.com', '22', '22CS006.', 'Princeof@123', '9568490059', NULL, '2023-03-02 05:46:26', 0, 'b1626a47b0388e2fbc61c3b988c34792', 1),
(48, 1, 2, 'Computer Science And Engineering', 'B 1', 'Akanksha', 'Sharma', '22CS153@jssaten.ac.n', '2000910139153', '22CS153.', 'Akanksha@17', '7617400705', NULL, '2023-03-02 05:48:00', 0, 'db191691ce05ab799e2e7a883525ce7e', 0),
(49, 1, 0, 'Computer Science And Engineering', 'B 2', 'Arbaz', 'Ali', 'mohdarbazali78601@gmail.com', '96', '22CS096.', 'Arbazali123@', '8474992250', NULL, '2023-03-02 05:48:08', 0, '96c13c630489053f43929fd40d13bd1a', 1),
(50, 1, 2, 'Computer Science And Engineering', 'B 1', 'ADITYA', 'MEHROTRA', '22CS203@jssaten.ac.in', '2000910139203', '22CS203.', 'Aditya128@', '7000733187', NULL, '2023-03-02 05:48:42', 0, '90262e12d78d70cbf2cd52fa0207a80d', 0),
(51, 1, 0, 'Computer Science And Engineering', 'B 1', 'Hritik', 'Raheja', '22CS053@jssaten.ac.in', '2000910139053', '22CS053.', 'Ritik@123', '9368176900', NULL, '2023-03-02 05:48:56', 0, '2fd4d3b8533123510b0fa25d5486af15', 1),
(52, 1, 2, 'Computer Science And Engineering', 'B 3', 'Saumya', 'Rajoria', 'saumyarajoria@gmail.com', '2000910138115', '22cs115.', 'Saumya@18', '8368251866', NULL, '2023-03-02 05:50:01', 1, '747fbe3cab0563d16bfeeb8d4a357d4d', 1),
(53, 1, 2, 'Computer Science And Engineering', 'B 1', 'Sankalp', 'Saxena', '22CS025@JSSATEN.AC.IN', '2000910138025', '22CS025.', 'Sankalp@2004', '9555442426', NULL, '2023-03-02 05:50:02', 0, 'fb4c5820212ad14ba06edd538105c14f', 0),
(54, 1, 2, 'Computer Science And Engineering', 'B 1', 'pranjal', 'vijayvargiy', '22CS037@jssaten.ac.in', '2000910138037', '22CS037.', 'Pranjalv1jay', '9711986888', NULL, '2023-03-02 05:50:18', 1, '2e4d3363181b3416ba2c99fdaedb812e', 1),
(55, 1, 0, 'Computer Science And Engineering', 'B 1', 'HARSH', 'SHARMA', 'harshsharma08012004@gmail.com', '2000910138158', '22CS158.', 'Harsh@1234', '9650114505', NULL, '2023-03-02 05:50:49', 0, 'b327c9d1be60c67de59597426d1ad799', 1),
(56, 1, 2, 'Computer Science And Engineering', 'B 1', 'Amish', 'Soni', '22cs032@jssaten.ac.in', '2000910138032', '22CS032.', '22cs032@MISH', '7037271203', NULL, '2023-03-02 05:50:56', 0, '022b0a6a17af8d244ce56ab9510de430', 0),
(57, 1, 2, 'Electrical Engineering', 'B 6', 'kinshuk ', 'jain', 'kinshuk25jain04@gmail.com', '2000910135041', '22EE041.', 'Known2me34rt', '9172702501', NULL, '2023-03-02 05:51:02', 1, 'ca151d4c9040bb6a9c0794aed85e578e', 1),
(58, 1, 2, 'Computer Science And Engineering', 'B 1', 'MOHD SAIM ', 'RAFI', '22CS047@jssaten.ac.in', '2000910138047', '22CS047.', 'Saim@123', '9315246654', NULL, '2023-03-02 05:51:09', 1, '3aa995d5dbc3861fce27235a548eedad', 1),
(59, 1, 0, 'Computer Science And Engineering', 'B 1', 'Nischay', 'Verma', 'cs163nischayjss@gmail.com', '2000910138163', '22CS163.', 'Nischayjss@123', '9599835318', NULL, '2023-03-02 05:51:23', 0, 'a3f2bfa12a6971c34c8880d475d26938', 1),
(60, 1, 2, 'Computer Science And Engineering', 'B 3', 'Utkarsh', 'Gupta', '22CS118@jssaten.ac.in', '2000910138118', '22CS118.', 'SARita@2611', '9889912521', NULL, '2023-03-02 05:51:27', 1, '933f3e8b256c9b951156239cb28c5678', 1),
(61, 1, 2, 'Computer Science And Engineering', 'B 1', 'NAVNEET ', 'KUMAR', 'navneetkumar1800242@gmail.com', '2000910138042', '22CS042.', '1122$$Navneet', '9027978260', NULL, '2023-03-02 05:51:28', 1, '25185cf042f474d00ea16159b9020d0d', 1),
(62, 1, 2, 'Electrical Engineering', 'B 6', 'SAMARTH', 'VISHWAKARMA', 'sam7393v@gmail.com', '2000910135019', '22EE019.', 'Sam@191103*', '8400872105', NULL, '2023-03-02 05:51:30', 1, '74fd35cf5b72c9d100b1ce4a1770d565', 1),
(63, 1, 2, 'Computer Science And Engineering', 'B 1', 'NAVANEET', 'CHATURVEDI', 'nc05ac152007@gmail.com', '2000910138019', '22CS019.', 'Jssaten@019', '8005217400', NULL, '2023-03-02 05:51:37', 1, 'ffbf498673cd2f51d8876309f8e28b0e', 1),
(64, 1, 2, 'Computer Science And Engineering', 'B 1', 'Astha', 'Gupta', '22CS051@jssaten.ac.in', '2000910138051', '22CS051.', 'Astha@15', '9958461506', NULL, '2023-03-02 05:51:38', 0, 'eff6150cb2c63082075bf02aa91b3079', 0),
(65, 1, 2, 'Computer Science And Engineering', 'B 1', 'Aditya', 'Pathak', 'aaadityapathak666@gmail.com', '2000910138152', '22CS152.', 'P@th@k14', '7307254112', NULL, '2023-03-02 05:51:53', 0, '561b4e8ad944d69673331414d1274541', 0),
(66, 1, 2, 'Computer Science And Engineering', 'B 3', 'Shefta ', 'Anis', '22cs141@jssaten.ac.in', '2000910138141', '22cs141.', 'Shef@1234', '9670848724', NULL, '2023-03-02 05:51:54', 1, '8c8c8f118192aa992fdd428777d45270', 1),
(67, 1, 0, 'Computer Science And Engineering', 'B 1', 'amit ', 'rajawat', 'kamitrajawat@gmail.com', '2000910138022', '22CS022.', '#Carpediem@1117', '7388498635', NULL, '2023-03-02 05:51:59', 0, '011a019b80dce1467face21568cfabcb', 1),
(69, 1, 2, 'Computer Science And Engineering', 'B 1', 'Ashish ', 'Kumar', '22CS010@jssaten.ac.in', '2000910138010', '22CS010.', 'Ashish@1999', '7668439059', NULL, '2023-03-02 05:52:10', 1, '18652694233a9faa60ae558ff3748705', 1),
(70, 1, 2, 'Computer Science And Engineering', 'B 1', 'Sparsh', 'Rathore', 'rathoresparsh10m@gmail.com', '2000910138054', '22CS054.', '22Cs054', '8077058864', NULL, '2023-03-02 05:52:25', 1, '4070f6b143e827590fb74f34a546794b', 1),
(71, 1, 2, 'Electrical Engineering', 'B 6', 'prashni', 'choudhary', 'choudharyprashni@gmail.com', '2000910135049', '22EE049.', 'Pr@shni2005', '9650788898', NULL, '2023-03-02 05:52:26', 1, 'ffd9a1733f60db71fce7ac51ba3f1123', 1),
(72, 1, 2, 'Electrical Engineering', 'B 6', 'Arunjeet ', 'Kanchan', 'Arunjeet1234@gmail.com', '2000910135014', '22EE014.', '$Arunjeet1234', '9457025088', NULL, '2023-03-02 05:52:39', 0, '6bf24e3b23fb0d85c8de57a905976bdb', 0),
(73, 1, 2, 'Computer Science And Engineering', 'B 1', 'HARSH ', 'KUMAR JHA', '22CS038@JSSATEN.AC.IN', '2000910138038', '22CS038.', 'Harsh@01', '7303459311', NULL, '2023-03-02 05:52:44', 1, '3381e671436cbee5950a15a5d36e6744', 1),
(75, 1, 2, 'Computer Science And Engineering', 'B 2', 'Ansh', 'Varshney', '22cs097@jssaten.ac.in', '2000910138097', '22CS097.', 'Varshney24#', '7453016061', NULL, '2023-03-02 05:53:03', 1, 'f28dd2b10c0eea097bb85ebf49c6c7ea', 1),
(76, 1, 2, 'Computer Science And Engineering', 'B 3', 'SHELLY', 'VERMA', 'SHELLYVERMA150@GMAIL.COM', '2000910138190', '22CS190.', 'JSSnoida@15', '8595019816', NULL, '2023-03-02 05:53:24', 0, 'a58cd5394cddcbbb2f2c13bf194bcd8f', 0),
(77, 1, 0, 'Computer Science And Engineering', 'B 2', 'Sauarabh', 'Saurabh', 'adeshkumar0117@gmail.com', '2000910138093', '22CS093.', 'Saur0117@', '7817971690', NULL, '2023-03-02 05:54:05', 0, '81e0643ca378d05109e0b01f7e1527b2', 0),
(78, 1, 2, 'Computer Science And Engineering', 'B 3', 'khushi', 'priya', '22cs206@jssaten.ac.in', '2000910138206', '22cs206.', 'kH@123$', '7903616172', NULL, '2023-03-02 05:54:17', 0, 'ab4ef3469f0231359af07cb9f3070452', 0),
(80, 1, 0, 'Computer Science And Engineering', 'B 1', 'karan', 'Gupta', 'karangupta2632@gmail.com', '2000910138162', '22CS161.', 'Karan@123', '8130303722', NULL, '2023-03-02 05:54:52', 0, 'edbfb17211931269a2bbd3b044dfcd54', 1),
(83, 1, 2, 'Computer Science And Engineering', 'B 1', 'Dhruv ', 'Dhiman ', 'dhruvdhimancs@gmail.com', '200910138044', '22CS044.', 'Dhruv@08122003', '8868876759', NULL, '2023-03-02 05:55:22', 1, '314cb1afbdcbf56c7c0d1a1d5610d7c4', 1),
(84, 1, 2, 'Computer Science And Engineering', 'B 1', 'Aakrati', 'Singh', '22cs045jssaten@gmail.com', '2000910138045', '22CS045.', 'Aakratisingh123@', '9368027698', NULL, '2023-03-02 05:56:54', 0, '4938339d72a6fea349d33b81669b7eee', 0),
(85, 1, 2, 'Computer Science And Engineering', 'B 1', 'Deepti', 'Rathore', '22CS046@jssaten.ac.in', '', '22CS046.', 'Deepti@0502', '7668407857', NULL, '2023-03-02 06:00:36', 0, 'd5ce94ec6c6631dbda9aef2d285d6075', 0),
(86, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'Shaurya', 'Singh', '22CSAIML114@jssaten.ac.in', '22AIML114', '22AIML114', 'Shaurya114', '8595975186', NULL, '2023-03-02 06:03:10', 0, 'a14478720784dca5f7bdd5ef2845c691', 1),
(87, 1, 2, 'Computer Science (DS)', 'A 5', 'jkjkhjk', 'knklnk', 'test1@gmail.com', '21DLIT123', '21DLIT123', 'Test@12345', '0123456789', NULL, '2023-03-02 06:03:12', 0, '23709e0d5702497f54845076ca4d9bf1', 1),
(88, 1, 2, 'Computer Science And Engineering', 'B 2', 'Shashwat', 'singh', 'sshashwat970@gmail.com', '22cs092', '22cs092.', 'Shaw@2004', '7753053109', NULL, '2023-03-02 06:03:54', 1, 'd4364d364af8d3392ab244abb64676e6', 1),
(90, 1, 2, 'Computer Science And Engineering', 'A 1', 'Arjun`', 'Singh', 'iamarjun9003@gmail.com', '2009101380441', '22cs155.', 'Hello@home1204', '8368571669', NULL, '2023-03-02 06:04:29', 1, 'cc921a29acbcdac805d368d272a857fa', 1),
(91, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'Mayank', 'Kumar', '22CSAIML042@jssaten.ac.in', '22AIML042', '22AIML042', '@Incredible12', '7079664417', NULL, '2023-03-02 06:04:32', 1, 'ebaa88421cd19f0420327c2fc5c9aca6', 1),
(94, 1, 2, 'Computer Science (AL & ML)', 'B 5', 'Anshu', 'Awasthi', '22csaiml118@jssaten.ac.in', '22AIML118', '22AIML118', 'Jssaten16', '9555290308', NULL, '2023-03-02 06:05:03', 0, 'e8af3d4b6160f3632b99c2ae2d490445', 0),
(95, 1, 2, 'Computer Science And Engineering', 'B 1', 'VANSHIKA ', 'KAPOOR', 'vanshika49kapoor@gmail.com', '200910138', '22CS171.', 'Kapoor@49', '8700768207', NULL, '2023-03-02 06:05:08', 1, '185be6270734ea365214e2ed86cfdb98', 1),
(96, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'Suyash', 'kumar', 'kumar.suyash@gmail.com', '2000910138111', '22AIML111', 'Sra34d701', '9811776621', NULL, '2023-03-02 06:05:21', 1, '313e4f0d9e61b8a861920c6534f6f0c5', 1),
(97, 1, 0, 'Mechanical Engineering', 'B 8', 'vinay', 'kumar', '812738vik@gmail.com', '22ME077', '22ME077.', 'reebok-69-batR', '8127383371', NULL, '2023-03-02 06:06:06', 0, 'e32082a2fd36f7d3fdae54664c791a9e', 1),
(98, 1, 2, 'Computer Science (AL & ML)', 'B 5', 'Abhiyanshu', 'Anand', '22CSAIML@jssaten.ac.in', '22AIML091', '22AIML091', 'Anshuanand7@', '8318518911', NULL, '2023-03-02 06:06:14', 0, '8b5d1340dd3d90f50fad81ad57f21d38', 1),
(99, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'Sujal', 'Gupta ', '22csaiml110@jssaten.ac.in', '22aiml110', '22aiml110', 'Knight@2504', '8178840991', NULL, '2023-03-02 06:06:33', 1, '59f3682b0c041ef5da02a461605d43d6', 1),
(100, 1, 2, 'Mechanical Engineering', 'B 8', 'Divyam', 'Chawla', 'divyamchawla04@gmail.com', '22ME065', '22ME065.', 'Divyamchawla3562', '9958292404', NULL, '2023-03-02 06:06:42', 1, '2c91699a6f422641a185078905ee7b7a', 1),
(101, 1, 2, 'Electrical Engineering', 'B 6', 'Priyanshu', ' Varshney', '22EE048@jssaten.ac.in', '22EE048', '22EE048.', 'alpha@New1', '7300615382', NULL, '2023-03-02 06:06:42', 0, '8cd341b3b5d123e82175806b8d283157', 0),
(102, 1, 2, 'Mechanical Engineering', 'B 8', 'RAHUL', 'NIRALA', 'rahulnirala8810@gmail.com', '22ME071', '22ME071.', 'Superman0000', '8810620844', NULL, '2023-03-02 06:06:48', 1, '424a1e443b88c530825bac7d5068d7ab', 1),
(104, 1, 2, 'Computer Science (AL & ML)', 'B 5', 'sanskar', 'singh', 'sanskar2301@gmail.com', '22AIML074', '22AIML074', 'Gl@di@tor2301', '8299464460', NULL, '2023-03-02 06:07:11', 1, 'f75b3e549a1d1045809281d0e3cad136', 1),
(105, 1, 2, 'Civil Engineering', 'B 8', 'Harendra pratap ', 'singh', 'harendrapratapsingh30@gmail.com', '22CE011', '22CE011.', 'Harry@1234', '8887143042', NULL, '2023-03-02 06:07:15', 1, '49a1cd743c7a6648b4197e26d0ef7942', 1),
(106, 1, 2, 'Electrical And Electronics Engineering', 'B 7', 'Anuj', 'Pandey', 'anuj6012p@gmail.com', '22EEE001', '22EEE001.', 'jss@noidaEEE1', '6393644901', NULL, '2023-03-02 06:07:52', 1, 'f163a27b6c7777a9b86a1b76425d306b', 1),
(107, 1, 2, 'Computer Science (AL & ML)', 'B 5', 'Prisha', 'Agrawal', 'prishaa19@gmail.com', '22AIML130', '22AIML130', 'Something19', '9871114134', NULL, '2023-03-02 06:07:55', 1, '8e9dc42e5a6a2fd398bb524c084404ef', 1),
(108, 4, 7, 'Computer Science And Engineering', 'IT 2', 'YASHVARDHAN', 'DIXIT', '22cs039@jssaten.ac.in', '22CS039', '22CS039.', 'Yash@2004', '9111853379', NULL, '2023-03-02 06:07:57', 0, '3f824f469cc154ef1ddbe8ae5e520622', 1),
(109, 1, 2, 'Computer Science (AL & ML)', 'B 5', 'Harigovind', 'Yadav', 'hgy2506@gmail.com', '22AIML097', '22AIML097', 'Gopal#2005', '7302359610', 'Snapchat-2061691331.jpg', '2023-03-02 06:08:13', 1, '39e313a87d943a602700ce9ecb33652e', 1),
(110, 1, 2, 'Computer Science (AL & ML)', 'B 5', 'krishna ', 'mittal', 'krishnamittal2804@gmail.com', '22aiml080', '22aiml080', 'Akashdeep123456', '7455807311', NULL, '2023-03-02 06:08:25', 1, 'd3ceafca9266922496ee437dfa9e9cd0', 1),
(111, 1, 2, 'Computer Science (AL & ML)', 'B 5', 'Abhishek', 'Singh', '22CSAIML082@jssaten.ac.in', '22AIML082', '22AIML082', 'TalkShort@123', '9335327042', NULL, '2023-03-02 06:08:29', 1, '2df2f8e8ec1e74d2b6fc603104f75a45', 1),
(112, 1, 2, 'Mechanical Engineering', 'B 8', 'Hammad', 'Ansari', 'hammadjssaten@gmail.com', '22ME076', '22ME076.', 'Hammad@0786', '7078813527', NULL, '2023-03-02 06:08:42', 0, '1940bf16c249bf61eb30d01b5ac99bff', 0),
(113, 1, 2, 'Computer Science (AL & ML)', 'B 5', 'Anoushka', 'Sinha', '22csaiml117@gmail.com', '22CS&AIML117', '22AIML117', 'JmzCGcXC11', '9717091354', NULL, '2023-03-02 06:09:06', 0, '61505ef6a617924631f47118c61db550', 0),
(114, 1, 2, 'Computer Science And Engineering', 'B 1', 'Lkhbir', 'Choudhary', 'lakhbir0000choudhary@gmail.com', '2000910138002', '22CS002.', 'Lakhbir@123', '6006445153', NULL, '2023-03-02 06:09:25', 0, '947354968f29066b9385ee55ecac8901', 0),
(115, 1, 2, 'Computer Science (AL & ML)', 'B 5', 'Ankit ', 'Singh', '22CSAIML092@jssaten.ac.in', '22AIML092', '22AIML092', 'Raja@12345', '6397056838', NULL, '2023-03-02 06:09:26', 1, 'e4a410e435dbc7f1d8b9035e083a83ed', 1),
(116, 1, 2, 'Computer Science (AL & ML)', 'B 5', 'Chirag', 'Bansal', '22csaiml084@jssaten.ac.in', '22AIML084', '22AIML084', 'Chirag@12', '9557289033', NULL, '2023-03-02 06:09:38', 0, 'c76e0afe4ad1ece1a47f8f305eb343ba', 0),
(117, 1, 2, 'Mechanical Engineering', 'B 8', 'Pranjal ', 'Sharma', 'pranjalsharma91325@gmail.com', '22ME010', '22ME010.', 'Pranjal@913', '8887719341', NULL, '2023-03-02 06:09:43', 1, '856e9f7020cec274638e9eeaf6ba4290', 1),
(118, 1, 2, 'Computer Science And Engineering', 'B 2', 'AVIRAL', 'MISHRA', 'AM216482@GMAIL.COM', '22CS102', '22CS102.', 'Aviral@090403', '8303514525', NULL, '2023-03-02 06:09:48', 0, 'effa5db64bbaa89b69ee986aa6f57e49', 0),
(119, 1, 2, 'Mechanical Engineering', 'B 8', 'Dhiraj', 'Upadhyay', 'dhirajupadhyay5277@gmail.com', '22ME020', '22ME020.', 'Dhirajup1234@5277', '9305896607', NULL, '2023-03-02 06:10:03', 0, '90187030a28133aba5e34d00eea66d6a', 0),
(121, 1, 2, 'Computer Science And Engineering', 'B 3', 'Sukhmeet Singh', 'Lamba', 'sukhmeetsingh285@gmail.com', '22CS181', '22CS181.', 'Marshallx285', '7457819682', NULL, '2023-03-02 06:10:33', 1, '98edbc5ddd904209da05ce60bec5fcca', 1),
(122, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'Krishna ', 'Goswami', 'goswamikrishna549@gmail.com', '22AIML047', '22AIML047', 'LOKESH123anju', '7217724512', NULL, '2023-03-02 06:10:43', 1, '26257d9544736a68f413de07d043d35d', 1),
(123, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'Samad', 'Salam', 'samadsalam32@gmail.com', '22AIML026', '22AIML026', 'Sam@27430010', '7007702073', NULL, '2023-03-02 06:10:51', 1, '5be0c86712ababc16dcca11d9506c796', 1),
(124, 1, 2, 'Computer Science And Engineering', 'B 3', 'VISHAL KUMAR', 'GUPTA', '22cs139@jssaten.ac.in', '2000910138139', '22cs139.', 'Vishal@07', '7268834028', NULL, '2023-03-02 06:11:19', 1, '821f1b1c62723f974d068484aa7033a0', 1),
(126, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'Arnav', 'Chawla', 'arnavchawlaAIML@gmail.com', '22AIML102', '22AIML102', 'Pkmnmasterarnav1', '9582828028', NULL, '2023-03-02 06:11:21', 0, 'c088e04fbfc54af247ecbe0410fd658f', 0),
(128, 1, 2, 'Computer Science And Engineering', 'B 2', 'Tushar', 'Garg', 'tusharga.2004@gmail.com', '22CS170', '22CS170.', 'Tushar@8368', '8368755408', NULL, '2023-03-02 06:11:32', 1, 'd0419dcaff422bf9898e64d361fdff76', 1),
(129, 1, 2, 'Computer Science And Engineering', 'B 3', 'Mayank ', 'Harplani', 'harplanimayank5@gmail.com', '22CS123', '22CS123.', 'Mayank@1602', '7302876894', NULL, '2023-03-02 06:11:33', 1, 'b37e3b833ed48798b30ca7a7bbb528ac', 1),
(130, 1, 2, 'Computer Science And Engineering', 'B 2', 'Bhavana', 'Tiwari', 'bhavanatiwaricse@gmail.com', '22CS060', '22CS060.', 'Bhv@2003', '7457896257', NULL, '2023-03-02 06:11:35', 1, '0f1b92a466de127a10a036e785652546', 1),
(131, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'Amit', 'Singh', '22csaiml043@jssaten.ac.in', '22AIML043', '22AIML043', '123@123#Aa', '7627023295', NULL, '2023-03-02 06:11:36', 1, '9c90395ca221b314e654afa3b3430149', 1),
(132, 1, 2, 'Computer Science And Engineering', 'B 2', 'Suhail ', 'Saifi', 'suhail.saifi2245@gmail.com', '22CS169', '22CS169.', '*aF@4141', '9810021684', NULL, '2023-03-02 06:11:38', 1, 'f76bd3bcf81295d3c4e45596ea986111', 1),
(133, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'Arshad ', 'Saifi', 'saifiarshad456@gmail.com', '22AIML039', '22AIML039', 'Arshad@123', '9818387633', NULL, '2023-03-02 06:11:53', 0, 'ead35e2d867f98625bc1e57ed6418699', 0),
(134, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'Vaibhav ', 'Joshi', '22csaiml038@jssaten.ac.in', '22AIML038', '22AIML038', 'Vaibhav27#', '9315474205', NULL, '2023-03-02 06:11:59', 1, 'b59cc87c2ea35f1a097802950369b572', 1),
(135, 1, 2, 'Electrical Engineering', 'B 6', 'Pranay ', 'Lohani', 'mppvl2003@gmail.com', '2000910135047', '22EE047.', 'Mppvl@2003', '8178166147', NULL, '2023-03-02 06:12:04', 1, '08d33aaee260e0333040b2c620828c2c', 1),
(137, 1, 2, 'Computer Science And Engineering', 'B 2', 'Anmol', 'Singh', 'anmolsingh7442@gmail.com', '22CS105', '22CS105.', 'Jsszezx20$@', '8267851133', NULL, '2023-03-02 06:12:35', 1, '89fe33de55be1de11db161561553050d', 1),
(138, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'Shaaswat', 'Jaishwal', '22csaiml040@jssaten.ac.in', '22AIML040', '22AIML040', 'Jaishwal@@2003', '8527539562', NULL, '2023-03-02 06:12:36', 1, 'ef8a84a28ac409390dc8025d2fde14a8', 1),
(139, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'parth', 'narwat', 'narwatparth4@gmail.com', '22AIML106', '106.', 'Wzasdfg1', '9266000400', NULL, '2023-03-02 06:12:53', 1, '5cbb7db98fd778985e5ac5a488410bc5', 1),
(140, 1, 2, 'Computer Science And Engineering', 'B 1', 'kshitij', 'chauhan', 'ks1698695@gmail.com', '2000910138026', '22CS026.', 'Kshitij@695', '9108734954', NULL, '2023-03-02 06:13:01', 0, '649ef622be657544fbd1e695428ef72d', 1),
(141, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'Utkarsh', 'Gual', '22csaiml048@jssaten.ac.in', '22AIML048', '22AIML048', 'uTKARSH@JSS04', '9129011893', NULL, '2023-03-02 06:13:15', 1, '3fdc9f41026491aff6f134acda3a7336', 1),
(142, 1, 2, 'Computer Science And Engineering', 'B 2', 'Kashish ', 'Kushwaha', 'kashishkushwaha62@gmail.com', '22CS079', '22CS079.', 'Hateyoutoo62', '8273946573', NULL, '2023-03-02 06:13:20', 0, 'a96cd4a5fd9e21192079bfab48129a9e', 0),
(143, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'tanishq', 'tyagi', '22csaiml112@jssaten.ac.in', '22aiml112', '22aiml112', 'Pass1122*', '8383031194', NULL, '2023-03-02 06:13:20', 1, 'dbed1023e6dbbc69284e6e87177c3ba5', 1),
(144, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'aaditya ', 'sood', 'aadysood@gmail.com', '22AIML101', '22AIML101', 'Bobby.sood@1229', '9667005661', NULL, '2023-03-02 06:13:29', 1, 'c383520781be225d4aa1a03a69225007', 1),
(145, 1, 2, 'Computer Science And Engineering', 'B 1', 'Sakshi', 'Srivastava', '22cs159.sakshi@gmail.com', '22cs159', '22cs159.', 'Sakshi9270#', '9958469227', NULL, '2023-03-02 06:13:33', 1, 'de6cbaa99d1458d329bd8aee5ef2a4c8', 1),
(147, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'ABHISHEK', 'UPADHAYAY', 'aupadhayay0211@gmail.com', '22CSAIML116', '22CSAIML1', 'ABHIupad@0211', '8840533681', NULL, '2023-03-02 06:14:12', 1, '6183d72d4882cac44b122b707ad18a72', 1),
(148, 1, 2, 'Computer Science And Engineering', 'B 1', 'Nidhi', '-', '22cs162nidhi@gmail.com', '22CS162', '22CS162.', 'Nid#i@2!04', '8595445101', NULL, '2023-03-02 06:14:12', 1, 'cc350a100756719735d805a03828ca2a', 1),
(149, 1, 2, 'Computer Science (AL & ML)', 'B 5', 'pushpendra kumar', 'rathour', 'pushpandrarathour5@gmail.com', '22AIML100', '22AIML100', 'Rathour@83', '8318854264', NULL, '2023-03-02 06:14:35', 1, '41da8d813ea0967a4a570b643841418f', 1),
(150, 1, 2, 'Computer Science And Engineering', 'B 3', 'Bhavya ', 'Jaggi', 'bhavyajaggisingapore@gmail.com', '22CS182', '22CS182.', 'Dude1000', '6391181861', NULL, '2023-03-02 06:14:49', 1, 'dfd1645751619b6db43c8e73878c00ad', 1),
(152, 1, 2, 'Computer Science And Engineering', 'B 3', 'Mohit', 'Shukla', 'mohitshukla2004.ms@gmail.com', '22CS191', '22CS191.', 'Mohit@1000', '9708501452', NULL, '2023-03-02 06:15:11', 1, 'bb4537d926338225c534e2c3fed26f4e', 1),
(153, 1, 2, 'Computer Science And Engineering', 'B 3', 'Abhishek', 'Sethi', 'asethi0334@gmail.com', '21cs199', '21cs199.', '9971357109Sethi', '9971357109', NULL, '2023-03-02 06:15:12', 1, 'b17433aebe8e3014d64fe01bfc9ddb10', 1),
(154, 1, 2, 'Computer Science And Engineering', 'B 1', 'Khushi', 'Sharma', '22cs055@jssaten.ac.in', '22CS055', '22CS055.', 'J1ee@khushi', '8595649294', NULL, '2023-03-02 06:15:30', 1, '34bca22da069fc814ce31de36daf11c1', 1),
(155, 1, 2, 'Computer Science And Engineering', 'B 1', 'Sneha', 'Jain', 'itz.snehajain@gmail.com', '22CS050', '22CS050.', 'Sneha@123', '9602125168', NULL, '2023-03-02 06:15:32', 1, '87573fd6bc547ecdd48839c1ef4c2263', 1),
(156, 1, 2, 'Computer Science And Engineering', 'B 2', 'AYUSH', 'SINGH', 'singhayushsa02@gmail.com', '22CS174', '22CS174.', '@AyushSingh__2002', '9494824555', NULL, '2023-03-02 06:15:34', 0, '6638bd5505dda964c3ef1c1fa5342f1e', 0),
(157, 1, 2, 'Computer Science And Engineering', 'B 2', 'utkarsh ', 'karhana', 'karhanautkarsh02@gmail.com', '22CS178', '178.', 'Utkarsh@2', '9310356617', NULL, '2023-03-02 06:15:35', 1, 'aac12ba03f3cefc7b8843b7e5fddb21b', 1),
(158, 1, 2, 'Computer Science And Engineering', 'B 3', 'Diya', 'Jain', 'diyajai2007@gmail.com', '22CS192', '22CS192.', 'Sambhav21', '7895371919', NULL, '2023-03-02 06:15:50', 1, 'ece0b73990a1f142ed0f5b142c1da592', 1),
(159, 1, 2, 'Computer Science And Engineering', 'B 2', 'ayush ', 'yadav', 'ayushyadav1954@gmail.com', '22CS072', '22CS072.', 'Ram@123', '8077009827', NULL, '2023-03-02 06:15:54', 1, '77139d9eb8c70bc56b305ca600c951d1', 1),
(160, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'pranjali', 'jain', '22csaiml107@jssaten.ac.in', '22aiml107', '22aiml107', 'p#442004J', '8076851406', NULL, '2023-03-02 06:15:55', 0, '8b1ba341e79115c4663a3b2f91735b5b', 1),
(161, 1, 2, 'Computer Science And Engineering', 'B 1', 'Anushka', 'Kandwal', '22cs154anushkakandwal@gmail.com', '22CS154', '22CS154.', 'Anushka@3213', '8076496456', NULL, '2023-03-02 06:16:37', 1, '9165318a47d5f20407d5590704245654', 1),
(162, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'Digvijay', 'Dutt', '22csaiml104@jssaten.ac.in', '22aiml104', '22aiml104', '(Digvijay264)', '9871600938', NULL, '2023-03-02 06:17:20', 1, '16a3e4bf90bc41bdf02701e58e162c59', 1),
(163, 1, 2, 'Electrical Engineering', 'B 6', 'Deepanshu', 'Yadav', 'dydipanshu2004@gmail.com', '22EE022', '22EE022.', 'Dipanshu@2004', '9351273050', NULL, '2023-03-02 06:17:35', 1, 'cba33fb82e2d55152aad52447805a354', 1),
(164, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'Rohit', 'Pandey', 'rohitpandey73551@gmail.com', '22AIML015', '22AIML015', 'roHit125$', '9129380087', NULL, '2023-03-02 06:17:35', 1, '0da4c4fb58a762d6d9f1bc72d15ff326', 1),
(165, 1, 0, 'Computer Science (AL & ML)', 'B 4', 'Yashvardhan', 'SIngh', 'yashvardhansingh112233@gmail.coim', '22AIML020', '22AIMLL02', 'Bhavya@123', '6389075796', NULL, '2023-03-02 06:18:01', 0, '5c463a97d6ae367f89a85a8044031b2f', 0),
(166, 1, 2, 'Computer Science And Engineering', 'B 1', 'PARIDHI', 'MITTAL', 'arnavpari2015@gmail.com', '22CS164', '22CS164.', 'Pmittal201.', '7900644350', NULL, '2023-03-02 06:18:09', 1, '64b693552e8c5c693be11050b38f8cc5', 1),
(167, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'shlok', 'raj', '22CSAIML109@jssaten.ac.in', '22aiml109', '22aiml109', 'Qwerty.12345', '9818624933', NULL, '2023-03-02 06:19:09', 0, '63bc8aa587495dcb71e596d6280ab42b', 0),
(169, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'Shikhar', 'Varshney', 'shikhar.varshney2003@gmail.com', '22AIML028', '22AIML028', 'Shikhar4739', '7037344843', NULL, '2023-03-02 06:19:44', 1, 'ab682efd5fd583cf4e6393d49a418569', 1),
(170, 1, 2, 'Computer Science And Engineering', 'B 2', 'Maharshi', 'Tripath', 'maharshitripathi7@gmail.com', '22CS104', '22CS104.', 'Swati229@@', '8604206856', NULL, '2023-03-02 06:19:53', 1, '65d8f340736487fc4eff4bd8483f1cc1', 1),
(172, 1, 2, 'Computer Science (AL & ML)', 'B 5', 'yash', 'kaushal', 'arecus2212@gmail.com', '22AIML132', '22AIML132', 'Cmonyash2212', '9711487607', NULL, '2023-03-02 06:20:04', 1, '7bf9d6de807dab093b9bdb909bc294ab', 1),
(173, 1, 2, 'Electrical And Electronics Engineering', 'B 7', 'prankushi ', 'singh', 'prankushi04@gmail.com', '22EEE009', '22EEE009.', '_Pr@nkushi04', '9711779384', NULL, '2023-03-02 06:20:11', 1, 'ef1a23884c705eaff97a85fc021ebd69', 1),
(174, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'Vaibhav', 'Sarswat', 'vaibhav142005@gmail.com', '22AIML035', '22AIML035', 'Vaibhav?2005', '8218900914', NULL, '2023-03-02 06:20:15', 0, '2cd7a5bdbf6d5dbf0355a5906d710841', 0),
(175, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'Akhilesh', 'Verma', 'av14021999@gmail.com', '22AIML034', '22AIML034', 'Akhilesh@123', '9336220495', NULL, '2023-03-02 06:20:25', 0, 'b98b043f89de4fed2f4e740937ad44a3', 0),
(177, 1, 0, 'Computer Science And Engineering', 'B 3', 'Anurag ', 'Tyagi', 'tyagi.anurag2004@gmail.com', '22CS194', '22CS194.', 'Anurag@@2004', '9557092878', NULL, '2023-03-02 06:20:53', 0, '7d75892f0812b69296eefb894a315fea', 1),
(178, 1, 2, 'Computer Science And Engineering', 'B 2', 'Vedant', 'Saxena', 'Vedant.saxena20@gmail.com', '22CS172', '22CS172.', 'Ved@nt1234', '8758836441', NULL, '2023-03-02 06:21:25', 0, '492f50f621c0f141e87a681b6c9d9360', 0),
(179, 1, 2, 'Electrical And Electronics Engineering', 'B 7', 'Yashika ', 'Singh', 'yashikasingh.ys03@gmail.com', '22EEE058', '22EEE058.', 'Incollege@26', '8755630703', NULL, '2023-03-02 06:21:38', 1, '8d8f5b7ca13c547b9b1b13628ec59ee7', 1),
(180, 1, 2, 'Computer Science (AL & ML)', 'B 5', 'Harshvardhan', 'Singh', 'singh.harshvardhan078@gmail.com', '22AIML062', '22AIML062', 'Harsh@13', '9140662026', NULL, '2023-03-02 06:21:39', 1, '55541b00273c86d472a268bc19bf7b6f', 1),
(181, 1, 2, 'Computer Science (AL & ML)', 'B 5', 'Tanish', 'Rustagi', 'tanishrustagi47@gmail.com', '22AIML131', '22AIML131', 'Tanish123', '7827836271', NULL, '2023-03-02 06:21:59', 1, '2900e1294e7ae41d62a7c31d936ca4e6', 1),
(182, 1, 2, 'Computer Science And Engineering', 'B 2', 'Vansh', 'Yadav', 'vanshyadav0206@gmail.com', '22CS094', '22CS094.', 'Vansh@2023', '9369661400', NULL, '2023-03-02 06:22:10', 1, '96dd646163e361da6b0b9a9d4474d317', 1),
(185, 1, 2, 'Electrical And Electronics Engineering', 'B 7', 'ANUSHKA', 'BHUSHAN', 'anushka.oc@gmail.com', '22EEE052', '22EEE052.', 'Anushka@2004', '9999604841', NULL, '2023-03-02 06:22:30', 1, 'd2292922f22afb6ca4f0ba807bd2359d', 1),
(186, 1, 2, 'Civil Engineering', 'B 6', 'Muktesh', 'sahoo', 'mukteshsahoo02@gmail.com', '22CE052', '22CE052.', 'Muktesh18', '8368442248', NULL, '2023-03-02 06:22:30', 1, '55fdd2a35e5edc042ec1befa3d4052ed', 1),
(187, 1, 0, 'Electrical And Electronics Engineering', 'B 7', 'Ikshita', 'Srivastava', 'ikshita3108@gmail.com', '22EEE025', '22EEE025.', 'Feedback100*', '8303000945', NULL, '2023-03-02 06:22:53', 0, '20617649dba6c987599e229e0e2a5327', 1),
(188, 1, 0, 'Civil Engineering', 'B 7', 'Arunav', 'Gupta', 'arunavg18@gmail.com', '22CE062', '22CE062.', '12345Aru@', '8840404599', NULL, '2023-03-02 06:22:58', 0, 'ad78fe6163591b8d5136a78a1f393864', 1),
(190, 1, 0, 'Computer Science And Engineering', 'B 2', 'Shubham', 'Sinha', '22cs167@jssaten.ac.in', '22CS167', '22CS167.', 'Engineer@04', '7070436295', NULL, '2023-03-02 06:23:00', 0, 'fb80ed25c161d4094b20023b4b5623ed', 1),
(191, 1, 2, 'Civil Engineering', 'B 7', 'Ayush ', 'Kumar', '2003.10.ashu@gmail.com', '22CE060', '22CE060.', 'Ashu$26', '9871476338', NULL, '2023-03-02 06:23:08', 1, '4d19876600f20fae1caa91f8d049eb80', 1),
(192, 1, 0, 'Electrical And Electronics Engineering', 'B 7', 'Arnav ', 'Agarwal', 'arnavagrawal11111@gmail.com', '22EEE053', '22EEE053.', 'Arnav@1304', '7489791048', NULL, '2023-03-02 06:23:14', 0, '464e0ee51227c7a8f215d228abe36b2c', 1),
(193, 1, 2, 'Electrical And Electronics Engineering', 'B 7', 'Sahil Shyam ', 'Gupta', 'sahilshyamgupta@gmail.com', '22EEE004', '22EEE004.', '07Ss5v3105', '9760526116', NULL, '2023-03-02 06:23:42', 1, '47405de6fd30872018022b89002d0747', 1),
(194, 1, 0, 'Computer Science And Engineering', 'B 2', 'Kshitiz prakash', 'Srivastav', 'kshitizsrivastav3344@gmail.com', '22CS074', '22CS074.', 'Kshitiz@123', '7054312258', NULL, '2023-03-02 06:24:07', 0, 'ed9e02ea267c2000eb575acb498157c4', 1),
(195, 1, 2, 'Computer Science (AL & ML)', 'B 5', 'TATHAGAT', 'TRIPATHI', '22csaiml060@gmail.com', '22AIML060', '22AIML060', 'Venomide123', '8924022322', NULL, '2023-03-02 06:24:08', 0, '45880e1fc3108ac9b7b3f45593fb7e1e', 0),
(196, 1, 2, 'Computer Science And Engineering', 'B 2', 'Lakshya', 'Bajpai', 'lakshyabajpai1104@gmail.com', '22CS176', '22CS176.', 'Laddu403', '9717836151', NULL, '2023-03-02 06:24:20', 1, 'b507e446e71e767fa339911e9236e4be', 1),
(197, 1, 2, 'Computer Science And Engineering', 'B 2', 'Shrey', 'Agrawal', 'shreyvinayakagrawal1111@gmail.com', '22CS107', '22CS107.', 'Shrey@29', '9389377628', NULL, '2023-03-02 06:25:23', 1, '230a9a92120129e534d9873542fdb4ec', 1),
(198, 1, 2, 'Computer Science And Engineering', 'B 2', 'Dev', 'Giri', 'giridev067@gmail.com', '22CS090', '22CS090.', 'Dev123@', '8171588538', NULL, '2023-03-02 06:25:25', 1, '22ebe1e0d653270f0fc14efd6b753a7c', 1),
(199, 1, 2, 'Computer Science (AL & ML)', 'B 5', 'vinayak', 'jain', 'vinayakjain5149@gmail.com', '22AIML128', '22AIML128', 'Vinayak@128', '9643443821', NULL, '2023-03-02 06:26:08', 1, '37b57f5164046274b51daf4c8357cd13', 1),
(200, 1, 2, 'Electrical And Electronics Engineering', 'B 7', 'Anjali', 'Tripathi', 'tripathisneha205@gmail.com', '22EEE032', '22EEE032.', 'Anjali@2004', '8115717840', NULL, '2023-03-02 06:27:13', 1, 'f3dabce638a0250af10687ed83305ba7', 1),
(201, 1, 2, 'Electrical And Electronics Engineering', 'B 7', 'Abhir', 'Verma', 'abhirvrma20@gmail.com', '22EEE051', '22EEE051.', 'Ntpc@123', '9990722418', NULL, '2023-03-02 06:27:19', 0, '174c5b2ff8bb828b08ef6e2d495d3bf3', 0),
(202, 1, 2, 'Electrical Engineering', 'B 6', 'Roopshree', 'Bharti', 'roopshreebharti@gmail.com', '22EE023', '22EE023.', 'Jss@123', '6394609686', NULL, '2023-03-02 06:27:58', 0, 'ba9893968b0fc0674b7225ab260dbd81', 0),
(203, 1, 0, 'Electrical Engineering', 'B 6', 'vivek ', 'Singh', 'vsgwl2004@gmal.com', '22EE015', '22EE015.', 'Vivek@000', '7879550298', NULL, '2023-03-02 06:29:57', 0, '6023309d473908d76061234da255c3a1', 0),
(204, 1, 0, 'Electrical Engineering', 'B 6', 'Prince', 'Kumar', '22ee018prince@gmail.com', '22ee018', '22EE018.', 'Prince@123', '9910861433', NULL, '2023-03-02 06:30:18', 0, 'a51a85de75037112105348be0e6bbbc4', 1),
(205, 1, 2, 'Electrical And Electronics Engineering', 'B 7', 'Aditi', 'Upadhyaya', 'bsbaditi2003@gmail.com', '22EEE045', '22EEE045.', 'P@2003@p', '8840917349', NULL, '2023-03-02 06:32:48', 1, '23d43d141e4910783f120b961d16207a', 1),
(206, 1, 2, 'Electrical And Electronics Engineering', 'B 7', 'Shreya ', 'Chaubey', 'skchaubey494@gmail.com', '22EEE046', '22EEE046.', 'Wtfidk.4', '8595823584', NULL, '2023-03-02 06:33:31', 1, '4e003e057500b842b198474c16609350', 1),
(207, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'shraddhansh ', 'singh', '22csaiml016@jssaten.ac.in', '22AIML016', '22AIML016', '22Aiml016', '6306780311', NULL, '2023-03-02 06:34:03', 0, 'f059cf3c97a8c63eab1d67c602f3a9e9', 0),
(209, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'aniket singh ', 'yadav', 'singhaniyadav1704@gmal.com', '22aiml017', '22aiml017', 'Aniket@1704', '8090298527', NULL, '2023-03-02 06:34:51', 0, '0fc05ed5470e4b0f5bf971548298a959', 0),
(210, 1, 2, 'Electrical Engineering', 'B 6', 'Shriyansh', 'Pandey', 'artipandey342@gmail.com', '22EE013', '22EE013.', 'Pandey@0002', '8580612386', NULL, '2023-03-02 06:35:29', 0, 'a30cb0d683d33d083638df9ad7807261', 1),
(211, 1, 0, 'Electrical And Electronics Engineering', 'B 7', 'aanya ', 'bahuguna', 'deepakbahuguna99@2004', '22EEE057', '22EEE057.', 'Music@2004', '9205702869', NULL, '2023-03-02 06:38:16', 0, 'd85931f12643a1d02e5c1e6ced406337', 0),
(212, 1, 2, 'Electrical Engineering', 'Section', 'harsh', 'patel', 'harshsingha9451@gmail.com', '22EE017', '22EE017.', 'Harsh@123', '9120716501', NULL, '2023-03-02 06:38:54', 0, 'd8a411dde307b27e812fc88dd13ed805', 1),
(213, 1, 2, 'Mechanical Engineering', 'B 8', 'mayank singh', 'chauhan', 'chauhanmayanksingh1@gmail.com', '22ME067', '22ME067.', 'msc@Mr1', '9310233057', NULL, '2023-03-02 06:39:15', 1, '7fe094404c49b0f2580d52df0e5141d7', 1),
(214, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'Prabhat', 'kesharwani', 'prabhatkesharwani1947@gmail.com', '22AIML001', '22AIML001', 'Prabhat123@', '7310014820', NULL, '2023-03-02 06:39:55', 1, '1819b31e421dd9d667e6a99cb4f89a1b', 1),
(215, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'krati', 'bajpai', 'bajpaikrati59@gmail.com', '22AIML010', '22AIML010', 'Krati@123', '7651897753', NULL, '2023-03-02 06:40:01', 1, '057f33384ad09cdceea8f3d2015bc2b8', 1),
(216, 1, 2, 'Computer Science (AL & ML)', 'B 4', 'vidhi', 'verma', 'vidhijsso19@gmail.com', '22AIML019', '22AIML019', 'Noni@1522', '9625444610', NULL, '2023-03-02 06:40:33', 0, '9b61575928deeb355f2a59d91daef268', 0),
(217, 1, 2, 'Mechanical Engineering', 'B 8', 'sandeep ', 'kumar kuri', 'sandeepkuri07@gmail.com', '22ME062', '22ME062.', 'S@ndeep0291', '9560202911', NULL, '2023-03-02 06:40:45', 0, 'fe2deb834f32c26b813f13b82a262292', 0),
(218, 0, 2, 'Mechanical Engineering', 'B 8', 'kunal', 'bhardwaj', '22ME069@jssaten.ac.in', '22ME069', '22ME069.', 'Kunal@2004', '8384031973', NULL, '2023-03-02 06:41:06', 1, '7ad032b8aa93ea0d230d113caf24ef69', 1),
(219, 1, 0, 'Computer Science (AL & ML)', 'B 4', 'Harsh', 'singh', 'harsh17215@gmail.com', '22AIML011', '22AIML011', 'Har@12345', '9569481852', NULL, '2023-03-02 06:41:17', 0, '9bfc2829f0008e573d1b160317758226', 1),
(220, 1, 2, 'Mechanical Engineering', 'B 8', 'Tarun', 'Sharma', '22me063@jssaten.ac.in', '22ME063', '22ME063.', '22ME063SharmaJi', '7310990281', NULL, '2023-03-02 06:42:24', 1, 'bf4f09b4dea2ceffe40f97e3ae467880', 1),
(221, 1, 2, 'Mechanical Engineering', 'B 8', 'aditya', 'pal', '22me021@jssten.ac.in', '22me021', '22me021.', 'Aditya@2022', '8586882169', NULL, '2023-03-02 06:42:25', 0, 'b3aec26b4863ae151e5ef8c2bbb1e00c', 0),
(223, 1, 2, 'Computer Science And Engineering', 'A 4', 'Aayush', 'kumar', '20it99@jssaten.ac.in', '20it88', '20it88.', 'Test@12345', '7505673005', NULL, '2023-03-02 09:46:14', 0, '07805958e64b5261c71927e4be6015f5', 1),
(224, 1, 2, 'Electronics And Communication Engineering', 'A 1', 'Shivansh ', 'Shukla', 'shivansh.shukla.fzd@gmail.com', '22EC028', '22EC028.', 'Shivansh@#12', '9140612700', NULL, '2023-03-03 05:36:45', 1, 'b914f5e812854fdccd7a882457cb0033', 1),
(225, 1, 2, 'Information Technology', 'A 4', 'AMAN', 'Jain', 'amanstpaul16@gmail.com', '22IT018', '22IT018.', 'Dramanice.ac1', '7303505835', NULL, '2023-03-03 05:44:39', 1, '2c472cdd8bdd344961051b252117171e', 1),
(226, 1, 2, 'Information Technology', 'A 4', 'Faisal ', 'Khan', 'faisal979516@gmail.com', '22IT023', '22IT023.', 'Faisal@123', '7704821563', NULL, '2023-03-03 05:46:09', 1, '846494401eb8161da37223bfa7373f6b', 1),
(227, 1, 2, 'Computer Science (DS)', 'A 8', 'Ramit', 'Vishwakarma', '22csds064@jssaten.ac.in', '22csds064', '22csds064', 'Rishu@123', '9305786097', NULL, '2023-03-03 05:46:17', 1, 'b20c622f003f4c80a9c0f08a621688d6', 1),
(228, 1, 2, 'Computer Science (DS)', 'A 7', 'Swapnil', 'Singh', '22CSDS049@JSSATEN.AC.IN', '22CSDS049', '22CSDS049', 'cSdS@4949', '9454151115', NULL, '2023-03-03 05:47:08', 1, '91cfe5c6d9af81da5cc254ce8eb5e9ad', 1),
(229, 1, 2, 'Computer Science (DS)', 'A 8', 'Abhishek ', 'Kumar', 'mr.abhi9974@gmai.com', '22CSDS082', '22CSDS082', 'Mr9974Abhi', '9473983102', NULL, '2023-03-03 05:47:13', 0, '64a633d13b98b12e6c468b209c5dc184', 0),
(230, 1, 2, 'Computer Science And Engineering', 'A 8', 'Palak', 'Sharma', 'aapalaks@gmail.com', '22CSDS091', '22CSDS091', 'Keyword@1234', '9677074129', NULL, '2023-03-03 05:49:08', 1, '40cb14a51062720c83947b9605c6c4e9', 1),
(231, 1, 2, 'Information Technology', 'A 4', 'Aditya', 'Verma', 'adi22bebold@gmail.com', '22IT031', '22IT031.', 'Aditya22IT', '9555022899', NULL, '2023-03-03 05:49:43', 1, '540fff9be0550ab1989c5ba68b63ae34', 1),
(232, 1, 2, 'Electronics And Communication Engineering', 'A 3', 'Tushar', 'Chaturvedi', 'chaturveditushar123@gtmail.comk', '22EC144', '22EC144.', 'Ronnie@7m', '7897265292', NULL, '2023-03-03 05:50:04', 0, '6d064313c8f4779e5b3b627cdc800c02', 0),
(233, 1, 2, 'Electronics And Communication Engineering', 'A 2', 'Agrim', 'Bhardwaj', 'agrimbhardwaj185@gmail.com', '22EC057', '22EC057.', 'Agrim123@', '8726866873', NULL, '2023-03-03 05:50:10', 1, '75a0be9cc91bf98b33bab45486248c2a', 1),
(234, 1, 2, 'Computer Science (DS)', 'A 7', 'Indrajeet', 'patel', 'indrajeetpatel2308@gmail.com', '22csds044', '22csds044', 'Alpha@2022!', '9569412653', NULL, '2023-03-03 05:50:43', 1, '81bc5e23bd9336afe14a925997a3390a', 1),
(235, 1, 2, 'Computer Science (DS)', 'A 7', 'vishal', 'yadav', 'vishal04032003@gmail.com', '22CSDS045', '22CSDS045', 'Vishal9678', '6392026177', NULL, '2023-03-03 05:50:50', 1, 'bc77a093f5f0b16959dae3fc6ba5a052', 1),
(236, 1, 2, 'Electronics And Communication Engineering', 'A 1', 'Vaibhav', 'Kumar', 'va6083874kr@gmail.com', '22EC026', '22EC026.', 'Lenz@vaibhavjss9456', '7505220748', NULL, '2023-03-03 05:51:14', 1, 'ebb4554405f2fae1fd630ad3340601e9', 1),
(237, 1, 2, 'Information Technology', 'A 6', 'Piyush', 'bharti', 'piyushx0744@gmail.com', '22IT138', '22IT138.', 'Piyush@0744', '8595797070', NULL, '2023-03-03 05:51:36', 1, 'c98d44e17fa7e9300a2651e8c1583373', 1),
(238, 1, 2, 'Electronics And Communication Engineering', 'A 2', 'Himanshu', 'Singh', 'himanshusinghdon29@gmail.com', '22EC060', '22EC060.', '9935635117himM', '6392021851', NULL, '2023-03-03 05:51:53', 0, 'fec7fa2f37e8f3347e9eaa1dbcabc9f8', 0),
(239, 1, 2, 'Electronics And Communication Engineering', 'A 3', 'Mayank ', 'Chaurasia', '22EC103@jssaten.ac.in', '22EC103', '22EC103.', 'mAYANK@0929', '6392587298', NULL, '2023-03-03 05:51:58', 1, 'd91aec112e887a6760d9fd6ba00254e4', 1),
(240, 1, 2, 'Electronics And Communication Engineering', 'A 3', 'Mahima ', 'Srivastava', '22EC129@jssaten.ac.in', '22EC129', '22EC129.', 'Mahima@0708', '9335509929', NULL, '2023-03-03 05:52:05', 0, '7ecb39593b2935f0508664a29fdad221', 0),
(241, 1, 2, 'Electronics And Communication Engineering', 'A 3', 'Snehil', 'Jaiswal', 'jaiswalsnehil35@gmail.com', '22EC114', '22EC114.', 'Sj@1303', '7233823593', NULL, '2023-03-03 05:52:46', 1, '68573a0f221bc3f78f5b2cf72e8abfcc', 1),
(242, 1, 2, 'Information Technology', 'A 5', 'HIMANSHU', 'SHEKHAR', '22it073@jssaten.ac.in', '22IT073', '22IT073.', 'Reena@1999', '9643097105', NULL, '2023-03-03 05:52:54', 1, 'dad49a1c742ee6ad1f3d2ab1c61d0fe8', 1),
(243, 1, 2, 'Computer Science (DS)', 'A 7', 'suyash', 'srivastava', 's89112168@gmail.com', '2100911540055', '21CSDS060', 'Suyashjssinventor56', '9415158806', NULL, '2023-03-03 05:52:54', 1, '2730d378e78f744b78b10ad1ffa83123', 1),
(244, 1, 0, 'Electronics And Communication Engineering', 'A 3', 'Rishika Dolvy', 'Saxena', 'saxenarishika24@gmail.com', '22EC124', '22EC124.', 'Akirhs24#', '9410015147', NULL, '2023-03-03 05:53:06', 0, 'f4db3ed3b3a76b040249302e37ad1822', 0),
(245, 1, 2, 'Electronics And Communication Engineering', 'A 1', 'NIKHIL', 'ANAND', 'josephitenikhil444@gmail.com', '22EC194', '22EC194.', 'Aa9504790874', '7667441870', NULL, '2023-03-03 05:53:25', 1, '81180c1ab58104f1a1112ab6f7229e42', 1),
(246, 1, 2, 'Electronics And Communication Engineering', 'A 3', 'Vanshaj ', 'Chaudhary', 'vanshaj.chaudhary09@gmail.com', '22EC126', '22EC126.', 'Gr@peC1ty@123', '9811623032', NULL, '2023-03-03 05:53:29', 1, '95468c93d8ff72ee4407bfe3e215120a', 1),
(247, 1, 2, 'Computer Science (DS)', 'A 7', 'Aryan', 'Budhwar', '22csds132@jssaten.ac.in', '22CSDS132', '22CSDS132', 'Aryan@462003', '9718656069', NULL, '2023-03-03 05:53:31', 0, '6c23e9af0c5513d58d10d860678a1b86', 0),
(248, 1, 2, 'Information Technology', 'A 4', 'Aniket', 'Misra', 'misra98aniket@gmail.com', '22IT019', '22IT019.', 'Misra#1', '8788521403', NULL, '2023-03-03 05:53:56', 1, '288444b41efc5cd7e31b3b90f1080899', 1),
(249, 1, 2, 'Electronics And Communication Engineering', 'A 3', 'Chaitanya', 'Kainth', 'chaitanyakainth@gmail.com', '22EC191', '22EC191.', 'Ck070804@', '7827229579', NULL, '2023-03-03 05:54:51', 1, '0d809019e75f13e6904719e4c6260efa', 1),
(250, 1, 2, 'Electronics And Communication Engineering', 'Section', 'ANURAG', 'PRATAP SINGH', 'anuragpratap2004@gmail.com', '22EC190', '22EC190.', 'Anurag@2023', '9354089352', NULL, '2023-03-03 05:55:08', 0, '841684dc3aeacec5f8282a5bd825d2fc', 1),
(251, 1, 2, 'Information Technology', 'A 5', 'AKASH ', 'YADAV', '22IT069@JSSATEN.AC.IN', '22IT069', '22IT069.', 'Akashyadav@069', '8840666716', NULL, '2023-03-03 05:55:14', 1, '3a6f1582d14f1649877e815cfe3e4abf', 1),
(252, 1, 0, 'Computer Science (DS)', 'A 7', 'ayush', 'kumar singh', 'ashsin56721@gmail.com', '22CSDS038', '22CSDS038', 'Qwerty12345@', '9311815018', NULL, '2023-03-03 05:55:21', 0, '1146ec0fb64c81467878bf4636317fa1', 0),
(253, 1, 2, 'Electronics And Communication Engineering', 'A 3', 'Ishika ', 'Upreti', '22EC110@jssaten.ac.in', '22EC110', '22EC110.', 'Ishika@01', '8171773218', NULL, '2023-03-03 05:55:57', 1, '63b9cec539cb5a72b48ce21c16ae4038', 1),
(254, 1, 2, 'Electronics And Communication Engineering', 'A 3', 'Anubhav', 'Shukla', 'anubhavshukla1802@gmail.com', '22EC142', '22EC142.', 'Anubhav@123', '6307559778', NULL, '2023-03-03 05:55:59', 1, '4c013d9aad4c7d6fc48a7fd891e7bb1e', 1),
(255, 1, 2, 'Computer Science (DS)', 'A 7', 'vineet ', 'kumar', 'vineet@1234', '22CSDS039', '22CSDS039', 'Vineet@12345', '7068678545', NULL, '2023-03-03 05:56:33', 0, 'a826b15d72e89194bffee6e97c2033f0', 0),
(256, 2, 3, 'Information Technology', 'IT 2', 'Garima ', 'Singh', '22it163@jssaten.ac.in', '22IT163', '22IT163.', '#IamB+1', '8105881174', 'WhatsApp Image 2024-05-29 at 2.30.10 PM.jpeg', '2023-03-03 05:57:03', 0, '39d459ddccbda65bb2067c97ea0759b2', 1),
(257, 1, 2, 'Electronics And Communication Engineering', 'A 2', 'amit', 'kumar', 'amitkumarjnv03@gmail.com', '22ec054', '22ec054.', 'Amitkumarjnv@03', '7880494561', NULL, '2023-03-03 05:57:35', 0, 'd2d524f334e1b1582a25d906981bf14f', 0),
(258, 1, 2, 'Electronics And Communication Engineering', 'A 3', 'yash ', 'raj', 'yashraj260203@gmail.com', '22EC148', '22EC148.', 'A14yj5ws5k', '7818808717', NULL, '2023-03-03 05:57:36', 1, '0abd6585c0bcb07b5c4aa36a33befaa8', 1),
(259, 1, 2, 'Computer Science (DS)', 'A 8', 'MOHAMMAD ASAD ', 'KHAN', 'ASAYARKHANS@GMAIL.COM', '22CSDS100', '22CSDS100', 'Asadkhan1511', '9839587473', NULL, '2023-03-03 05:57:50', 1, 'ac6a0a2cadc5f32c1d98976b7bc8bc9c', 1),
(260, 1, 2, 'Computer Science (DS)', 'A 8', 'Anirudh ', 'Sharma', 'anirudhsharma5312@gmail.com', '22CSDS116', '22CSDS116', 'Anirudh@1509', '8171826247', NULL, '2023-03-03 05:57:56', 1, '21b2ce73d0535ce781a2a7e96880f583', 1),
(261, 1, 2, 'Electronics And Communication Engineering', 'A 3', 'Kushagra', 'Soni', '22EC138@jssaten.ac.in', '22EC138', '22EC138.', 'Kush@1234', '7715002210', NULL, '2023-03-03 05:58:23', 0, '91764535f907e940970f67e4897c3990', 0),
(262, 1, 2, 'Electronics And Communication Engineering', 'A 3', 'abhay', 'gupta', '22EC204@jssaten.ac.in', '22EC204', '22EC204.', 'Abhay2002@', '8303856996', NULL, '2023-03-03 05:58:31', 1, 'ef210c454bc9e83e7e9a3ec9104a2b9a', 1),
(263, 1, 2, 'Electronics And Communication Engineering', 'A 1', 'Poorvi', 'Raghav', '22EC018@jssaten.ac.in', '22EC018', '22EC018.', 'SriPoorvi@0203', '9455121550', NULL, '2023-03-03 06:01:36', 1, '6f85b1075fe13abbba1fadbb5e350cdb', 1),
(264, 1, 2, 'Electronics And Communication Engineering', 'A 1', 'bagish', 'pandey', 'bagishpandey02@gmail.com', '22EC014', '22EC014.', 'B@gish1234', '7376609908', NULL, '2023-03-03 06:02:02', 1, '83c05941ca4bfad633d5420477350ef6', 1),
(265, 1, 2, 'Electronics And Communication Engineering', 'A 3', 'Achintya', 'Raj', 'bablysrivastava72@gmail.com', '22EC143', '22EC143.', '1@chintyaEce', '8299787587', NULL, '2023-03-03 06:03:18', 1, '342b7e3681db5ce197b620112c45dc29', 1),
(266, 1, 2, 'Electronics And Communication Engineering', 'A 1', 'Aryan ', 'Trivedi', 'trivediaryan25@gmail.com', '22EC158', '22EC158.', 'Ar@29390', '8700018036', NULL, '2023-03-03 06:03:56', 1, 'd11415d240c01cf68e887706b13c824e', 1),
(267, 1, 2, 'Electronics And Communication Engineering', 'A 3', 'yash', 'tiwari', 'yashtiwari1409@gmail.com', '22ec185', '22ec185.', 'Nathonlyon1', '9999140582', NULL, '2023-03-03 06:04:31', 1, 'f84f03b8a31cdbefd19c7a2fc08399b3', 1),
(268, 1, 2, 'Electronics And Communication Engineering', 'A 3', 'AANCHAL', 'JAISWAL', 'aanchaljais9415@gmail.com', '22EC136', '22EC136.', 'September003', '9555068745', NULL, '2023-03-03 06:04:36', 1, '1fbecbebc4334868e8aa47a1fd212f08', 1),
(269, 1, 2, 'Electronics And Communication Engineering', 'A 1', 'DEVESH', 'MISHRA', 'deveshpryj@gmail.com', '22EC013', '22EC013.', 'Jss@#12', '6394952830', NULL, '2023-03-03 06:04:59', 1, '3c2190c0210f74647a762530c9f3af8a', 1),
(270, 1, 2, 'Electronics And Communication Engineering', 'A 3', 'Ayushi', 'Agrawal', 'ayushiagarwal2711@gmail.com', '22EC120', '22EC120.', 'Nka241073@', '9984851495', NULL, '2023-03-03 06:05:11', 1, '7ee1042cdf39b7e076d426c909d35ec2', 1),
(271, 1, 2, 'Information Technology', 'A 6', 'Akshay', 'Goel', 'goelakshay2012@gmail.com', '22IT145', '22IT145.', '16082012@An', '8923452712', NULL, '2023-03-03 06:17:01', 1, '8bde48b846c0f9160d6c9b57d6c72795', 1),
(272, 1, 2, 'Information Technology', 'A 5', 'Alok', 'Maurya', '22it093@jssaten.ac.in', '22it093', '22it093.', 'Alok@9834', '9834363247', NULL, '2023-03-03 06:17:01', 1, 'f29638d16fd676e484a1beaf9208f0c3', 1),
(273, 1, 2, 'Electronics And Communication Engineering', 'A 1', 'Aman ', 'Sharma', 'aman8586089675@gmail.com', '22EC152', '22EC152.', 'Aman##29', '8586089675', NULL, '2023-03-03 06:17:23', 1, 'd4c1f8656562aecdcd5c9231b9d1a010', 1),
(274, 1, 2, 'Information Technology', 'A 5', 'DIVYA', 'KUMAR', '22it082@jssaten.ac.in', '22IT082', '22IT082.', '9163@Aadima', '7091811358', NULL, '2023-03-03 06:18:30', 1, '53ce580e07dc883d8d5a75ff3be743d7', 1),
(275, 1, 2, 'Information Technology', 'A 6', 'Khushi', 'Madeshia', 'khushimadeshia01@gmail.com', '22IT147', '22IT147.', 'Khushi@456', '7388787300', NULL, '2023-03-03 06:28:23', 1, '349617af0864c62ee000f391590d4924', 1),
(276, 1, 2, 'Information Technology', 'A 6', 'ARUN', 'KUMAR SHARMA', 'asaruns0718@gmail.com', '22IT184', '22IT184.', 'Arun@9711', '8052176430', NULL, '2023-03-03 06:29:44', 1, 'aff3976248cb2dc4e906072cd2783b80', 1),
(277, 1, 0, 'Information Technology', 'A 6', 'ANANT', 'RAWAT', '22IT195@jssaten.ac.in', '22IT195', '22IT195.', 'iAABMN10852!', '7668797803', NULL, '2023-03-03 06:35:48', 0, '843067494d39979c437c210bc95dcc73', 1),
(278, 1, 2, 'Electronics And Communication Engineering', 'A 1', 'Srinivas ', 'Pandey', '22ec012@jssaten.ac.in', '22EC012', '22EC012.', 'Pandey@123', '9453697724', NULL, '2023-03-03 06:55:44', 1, '6e038ca307430a2ff0a24f9c602ce102', 1),
(279, 4, 7, 'Information Technology', 'IT 2', 'ram', 'ram', 'yashshukla282003@gmail.com', '2342423424423', '20it098.', 'Test@12345', '8676557899', NULL, '2024-05-30 09:31:10', 0, '9060426db50512665915eda94ffb4607', 0),
(280, 3, 5, 'Information Technology', 'IT 1', 'Yash', 'Shukla', 'swapnilskumars@gmail.com', '123142', '33423.', 'Hello@123', '1234567891', NULL, '2024-05-30 10:51:46', 0, 'cbb92610ba215d702da08e0ee2a98ff5', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseoutcomes`
--
ALTER TABLE `courseoutcomes`
  ADD PRIMARY KEY (`sno`),
  ADD KEY `subjectcode` (`subjectcode`),
  ADD KEY `subject` (`subject`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `facultyresponse`
--
ALTER TABLE `facultyresponse`
  ADD UNIQUE KEY `facultyemail` (`facultyemail`,`year`,`semester`,`suballoted`,`subject`),
  ADD KEY `responsefacultysubjectalloted_fk` (`suballoted`),
  ADD KEY `responsefacultysubjectcode_fk` (`subject`);

--
-- Indexes for table `respone`
--
ALTER TABLE `respone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersemail_fk` (`usersemail`),
  ADD KEY `subjectcode` (`subjectcode`),
  ADD KEY `facultyemail` (`facultyemail`),
  ADD KEY `subject` (`subject`);

--
-- Indexes for table `subjectalloted`
--
ALTER TABLE `subjectalloted`
  ADD PRIMARY KEY (`sno`),
  ADD KEY `suballoted` (`suballoted`),
  ADD KEY `facultyemail` (`facultyemail`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `section_` (`section_`,`subjectcode`,`subject`),
  ADD KEY `subjectcode` (`subjectcode`),
  ADD KEY `subject` (`subject`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `urollno` (`urollno`),
  ADD UNIQUE KEY `addno` (`addno`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courseoutcomes`
--
ALTER TABLE `courseoutcomes`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `respone`
--
ALTER TABLE `respone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1450;

--
-- AUTO_INCREMENT for table `subjectalloted`
--
ALTER TABLE `subjectalloted`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courseoutcomes`
--
ALTER TABLE `courseoutcomes`
  ADD CONSTRAINT `subject_fk` FOREIGN KEY (`subject`) REFERENCES `subjects` (`subject`) ON UPDATE CASCADE,
  ADD CONSTRAINT `subjectcode_fk` FOREIGN KEY (`subjectcode`) REFERENCES `subjects` (`subjectcode`) ON UPDATE CASCADE;

--
-- Constraints for table `facultyresponse`
--
ALTER TABLE `facultyresponse`
  ADD CONSTRAINT `responsefacultyemail_fk` FOREIGN KEY (`facultyemail`) REFERENCES `faculty` (`email`) ON UPDATE CASCADE,
  ADD CONSTRAINT `responsefacultysubjectalloted_fk` FOREIGN KEY (`suballoted`) REFERENCES `subjects` (`subjectcode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `responsefacultysubjectcode_fk` FOREIGN KEY (`subject`) REFERENCES `subjects` (`subject`) ON UPDATE CASCADE;

--
-- Constraints for table `respone`
--
ALTER TABLE `respone`
  ADD CONSTRAINT `facultyemail` FOREIGN KEY (`facultyemail`) REFERENCES `faculty` (`email`) ON UPDATE CASCADE,
  ADD CONSTRAINT `responsesubjectcode_fk` FOREIGN KEY (`subjectcode`) REFERENCES `subjects` (`subjectcode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `subjectname_fk` FOREIGN KEY (`subject`) REFERENCES `subjects` (`subject`) ON UPDATE CASCADE,
  ADD CONSTRAINT `useremail_fk` FOREIGN KEY (`usersemail`) REFERENCES `users` (`email`) ON UPDATE CASCADE;

--
-- Constraints for table `subjectalloted`
--
ALTER TABLE `subjectalloted`
  ADD CONSTRAINT `facultyemail_fk` FOREIGN KEY (`facultyemail`) REFERENCES `faculty` (`email`) ON UPDATE CASCADE,
  ADD CONSTRAINT `subjectalloted_fk` FOREIGN KEY (`suballoted`) REFERENCES `subjects` (`subjectcode`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
