CREATE TABLE `account` (
  `accountID` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `departmentID` int DEFAULT NULL,
  `positionID` int DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`accountID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `answer` (
  `answerID` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `questionID` int DEFAULT NULL,
  `isCorrect` enum('Đúng','Sai') DEFAULT NULL,
  PRIMARY KEY (`answerID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `categoryquestion` (
  `categoryID` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `department` (
  `departmentID` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`departmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `exam` (
  `examID` int NOT NULL AUTO_INCREMENT,
  `code` int DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `categoryID` int DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `creatorID` int DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`examID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `examquestion` (
  `examID` int DEFAULT NULL,
  `questionID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `group` (
  `groupID` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) DEFAULT NULL,
  `creatorID` int DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`groupID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `groupaccount` (
  `groupID` int DEFAULT NULL,
  `accountID` int DEFAULT NULL,
  `create_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `position` (
  `positionID` int NOT NULL AUTO_INCREMENT,
  `position_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`positionID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `question` (
  `questionID` int NOT NULL AUTO_INCREMENT,
  `content` varchar(50) DEFAULT NULL,
  `categoryID` int DEFAULT NULL,
  `typeID` int DEFAULT NULL,
  `creatorID` int DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`questionID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `typequestion` (
  `typeID` int NOT NULL AUTO_INCREMENT,
  `type_name` enum('Essay','Multiple-choice') DEFAULT NULL,
  PRIMARY KEY (`typeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
