INSERT INTO `tblusers` (`idUser`, `name`, `surname`, `email`, `password`, `nickname`, `phoneNumber`, `curriculum`, `profilePhoto`, `gender`, `aboutMe`, `birthDate`, `address`) VALUES
(1, 'everson', 'zelaya', 'eversonzs@hotmail.com', '123', 'eversonzs', '3804905363', NULL, NULL, 'male', NULL, '1994-05-10', 'Laquila'),
(2, 'Dima', 'Ayash ', 'dimaayash91@gmail.com ', '123', 'DimAya', NULL, NULL, NULL, 'female', NULL, '1991-02-15', NULL),
(3, 'Tala', 'Najem', 'Tala@gmail.com', '123', 'TalaN', NULL, NULL, NULL, 'female', NULL, '1991-06-17', NULL),
(4, 'Hilda', 'Guevara', 'hg@gmail.com', '123', 'HG', '123456789', NULL, NULL, 'female', 'holsaaa', '2017-07-01', 'L\'aquila');

INSERT INTO `tbltype` (`idType`, `typeName`) VALUES
(1, 'Development'),
(2, 'Graphics'),
(3, 'Documentation');

INSERT INTO `tblroles` (`idRole`, `roleName`) VALUES
(1, 'Coordinator'),
(2, 'Developer');

INSERT INTO `tblprojects` (`idProject`, `projectName`, `description`, `datePublish`, `status`, `picture`) VALUES
(1, 'Project test', 'It is a web engineering class project', '2017-7-14', 'Open', NULL),
(2, 'Project 2', 'It is a web engineering class project, This is a porject for web engineering, L\'Aquila 2017.  This is a porject for web engineering, L\'Aquila 2017 This is a porject for web engineering, L\'Aquila 2017 This is a porject for web engineering, L\'Aquila 2017 This is a porject for web engineering, L\'Aquila 2017 This is a porject for web engineering, L\'Aquila 2017 This is a porject for web engineering, L\'Aquila 2017', '2017-7-14', 'Open', NULL),
(3, 'Try again', 'It is a web engineering class project', '2017-7-15', 'Open', NULL),
(4, 'Project123', 'It is a web engineering class project', '2017-7-13', 'Open', NULL),
(5, 'Another', 'It is a web engineering class project', '2017-7-18', 'Open', NULL),
(6, 'SocialDevelop', 'It is a web engineering class project', '2017-7-11', 'Open', NULL),
(7, 'test', 'it is to test the project', '2017-7-14', 'Close', NULL),
(8, 'ProjectEverson', 'Holaaaaaaaaa', '2017-7-14', 'Open', NULL),
(9, 'Everson2', 'Ciaooo', '2017-7-14', 'Open', NULL),
(11, 'GoTasl', 'Let\'s go to create a task for this project.', '2017-7-15', 'Open', NULL),
(13, 'TravelNetwork', 'Another project.', '2017-7-16', 'Open', NULL),
(14, 'Prueba', 'HOlaaa', '2017-7-17', 'Open', NULL);

INSERT INTO `tblmessages` (`idMessage`, `idUser`, `idProject`, `message`, `privacity`, `dateMessage`) VALUES
(1, 1, 1, 'Ciaooooooo', 'public', '2017-07-11 00:30:00'),
(2, 2, 1, 'Ciaooo hola', 'public', '2017-07-14 17:10:51'),
(3, 2, 3, 'First coment', 'public', '2017-07-14 21:36:46'),
(4, 2, 6, 'Trying!!', 'private', '2017-07-14 22:12:37'),
(5, 2, 6, 'Public message!', 'public', '2017-07-14 22:13:14'),
(6, 2, 2, 'Holaa', 'public', '2017-07-15 09:53:08'),
(7, 2, 1, 'Holaa', 'public', '2017-07-15 14:39:42');

INSERT INTO `tbltasks` (`idTask`, `taskName`, `description`, `status`, `collaboratorsNum`, `idType`, `idProject`, `startDate`, `dueDate`) VALUES
(1, 'LoginPage', 'Create a login page for this project.', 'Open', 1, 1, 13, '2017-07-17', '2017-07-19'),
(2, 'Trying', 'Trying to add a task.', 'Open', 2, 1, 3, '2017-07-17', '2017-07-17'),
(3, 'New task', 'New task in project test', 'Open', 5, 2, 1, '2017-07-23', '2017-08-04'),
(4, 'Testing skill level', 'Skillss', 'Open', 3, 1, 3, '2017-07-16', '2017-07-17'),
(5, 'Ciaoo', 'Ciaoo ciao ', 'Open', 2, 1, 2, '2017-02-01', '2017-03-01'),
(6, 'Ciaoo', 'cioaaa', 'Open', 3, 1, 3, '2017-07-12', '2017-07-19'),
(7, 'Task ciao', 'Holaa', 'Open', 2, 1, 1, '2017-01-01', '2017-02-01'),
(8, 'Holaa', 'Hola mundo', 'Open', 1, 1, 2, '2017-07-16', '2017-07-16'),
(9, 'Hola tarea', 'Hola ', 'Open', 1, 3, 7, '2017-01-02', '2018-02-02'),
(10, 'Hola tarea', 'Hola ', 'Open', 1, 3, 7, '2017-01-02', '2018-02-02'),
(11, 'Another task', 'Holaaaaaa', 'Open', 1, 3, 5, '2017-07-21', '2017-07-23'),
(12, 'Another task 2', 'Holaaaaaa', 'Open', 1, 3, 5, '2017-07-21', '2017-07-23'),
(13, 'Another task 3', 'Holaaaaaa', 'Open', 1, 3, 5, '2017-07-21', '2017-07-23'),
(14, 'Another  4', 'Holaaaaaa', 'Open', 1, 3, 5, '2017-07-21', '2017-07-23'),
(15, 'Task for this project', 'Holaaaaaaaaaa', 'Open', 1, 3, 13, '2017-07-16', '2017-07-19'),
(16, 'Task Everson', 'Holaaaaaaaaaaaa', 'Open', 1, 2, 9, '2017-07-16', '2017-07-25'),
(17, 'Taskssss', 'Tasks1', 'Open', 1, 3, 4, '2017-07-19', '2017-07-19'),
(18, 'Tarea', 'Tareas', 'Open', 2, 3, 4, '2017-07-11', '2017-07-27'),
(19, 'Fineeeee', 'I did, I hope', 'Open', 2, 3, 4, '2017-07-13', '2017-07-20'),
(20, 'Fine', 'fine', 'Open', 1, 3, 11, '2017-07-16', '2017-07-11'),
(21, 'Register form', 'Create a register form ', 'Open', 1, 1, 6, '2017-07-17', '2017-07-19'),
(22, 'Taks1', 'Task 1 for project 1', 'Open', 2, 2, 1, '2017-07-18', '2017-07-21');

INSERT INTO `tblusersprojects` (`idUser`, `idProject`, `idRole`) VALUES
(2, 11, 1),
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(1, 5, 1),
(2, 6, 1),
(3, 7, 1),
(4, 8, 1),
(2, 9, 1),
(1, 13, 1),
(1, 14, 1);

INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('HTML');
INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('CSS');
INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('Java');
INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('JavaScript');
INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('PHP');
INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('MySQL');
INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('Oracle');
INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('MongoDB');
INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('Photoshop');
INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('Mobile');