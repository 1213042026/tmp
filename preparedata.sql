create database studentmis;
use studentmis;

create table admins 
(
   admins_id             integer                        not null,
   role_id              integer,
   admins_pwd            varchar(20)
);

create table class 
(
   class_id             integer                        not null,
   class_name           varchar(20)
);

create table class_teac 
(
   class_id             integer                        not null,
   teac_id              integer                        not null
);

create table course 
(
   cour_id              integer                        not null,
   teac_id              integer,
   cour_name            varchar(20)
);

create table role 
(
   role_id              integer                        not null,
   role_name            integer
);

create table score 
(
   score_id             integer                        not null,
   cour_id              integer,
   stu_id               integer,
   score_score          float
);

create table stu_course 
(
   stu_id               integer                        not null,
   cour_id              integer                        not null
);

create table stu_teac 
(
   stu_id               integer                        not null,
   teac_id              integer                        not null
);

create table student 
(
   stu_id               integer                        not null,
   role_id              integer,
   class_id             integer,
   stu_name             varchar(20),
   stu_pwd              varchar(20),
   stu_sex              varchar(3),
   stu_tel              integer,
   stu_address          varchar(60)
);

create table teacher 
(
   teac_id              integer                        not null,
   role_id              integer,
   teac_name            varchar(20),
   teac_pwd             varchar(20)
);

insert into student(stu_id,role_id,class_id,stu_name,stu_pwd,stu_sex,stu_tel,stu_address) values(1,1,1,'abc','123','male',1235,'china');
insert into class(class_id, class_name) values(1,'gaosan');
insert into class_teac(class_id, teac_id) values(1,1);    
insert into course(cour_id, teac_id, cour_name) values(1,1,'yuwen');
insert into role(role_id, role_name) values(1,'student');
insert into role(role_id, role_name) values(2,'teacher');
insert into score(score_id, cour_id, stu_id, score_score) values(1,1,1,99);
insert into stu_course(stu_id, cour_id) values(1,1);
insert into stu_teac(stu_id, teac_id) values(1,1);
insert into teacher(teac_id, role_id, teac_name, teac_pwd) values(1,2,'zhao','123');