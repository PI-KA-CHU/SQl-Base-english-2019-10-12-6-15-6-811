CREATE DATABASE OOCL;
USE OOCL;

CREATE TABLE IF NOT EXISTS `student`(
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `age` INT UNSIGNED,
    `sex` VARCHAR(10),
    PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `subject`(
    `id` INT AUTO_INCREMENT,
    `subject` VARCHAR(100) NOT NULL,
    `teacher` VARCHAR(50),
    `description` VARCHAR(100),
    PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `score`(
    `id` INT AUTO_INCREMENT,
    `student_id` INT NOT NULL,
    `subject_id` INT NOT NULL,
    `score` INT,
    PRIMARY KEY (id),
    foreign key (`student_id`) references student(id) on delete cascade on update cascade,
    foreign key (`subject_id`) references subject(id) on delete cascade on update cascade 
)ENGINE=InnoDB DEFAULT CHARSET=utf8;