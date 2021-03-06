create database oes;
use oes;
create table user (
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        user_name VARCHAR(30) NOT NULL,
        password VARCHAR(100) NOT NULL,
        chinese_name VARCHAR(50) NOT NULL,
        pic VARCHAR(50),
        gender VARCHAR(10),
        telephone_number VARCHAR(20),
        email_address VARCHAR(50)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

create table user_role (
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        role_id INT NOT NULL,
        user_id INT NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

create table role (
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        role_name VARCHAR(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

create table question (
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        title VARCHAR(500) NOT NULL,
        answer_a VARCHAR(100) NOT NULL,
        answer_b VARCHAR(100) NOT NULL,
        answer_c VARCHAR(100),
        answer_d VARCHAR(100),
        correct_answer VARCHAR(20),
        is_delete INT NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

create table exam (
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        exam_name VARCHAR(50) NOT NULL,
        exam_description VARCHAR(200) NOT NULL,
        effective_time datetime NOT NULL,
        single_question_score INT NOT NULL,
        question_quantity INT NOT NULL,
        duration INT NOT NULL,
        total_score INT NOT NULL,
        creator VARCHAR(30) NOT NULL,
        pass_criteria INT NOT NULL,
        is_draft INT NOT NULL,
        is_deleted INT NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

insert into user(user_name,password,chinese_name,pic,gender,telephone_number,email_address) values('admin','202cb962ac59075b964b07152d234b70','liubei','/upload/images/pho.png','male','12345698714','11@qq.com');
insert into role(role_name) values('student');
insert into user_role(role_id,user_id) values(1,1);
insert into question(title,answer_a,answer_b,answer_c,answer_d,correct_answer,is_delete) values('what is your favourite book','java','php','commic','json','A',0);
insert into exam(exam_name,exam_description,effective_time,single_question_score,question_quantity,duration,total_score,creator,pass_criteria,is_draft,is_deleted) 
values('yuwen','zhoukao','2017-05-17',5,20,60,100,'yuwenlaoshi','60',0,0);        