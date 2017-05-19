/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 10                       */
/* Created on:     2017/3/7 15:09:55                            */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_admins_admins_ROL_ROLE') then
    alter table admins
       delete foreign key FK_admins_admins_ROL_ROLE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CLASS_TE_CLASS_TEA_CLASS') then
    alter table class_teac
       delete foreign key FK_CLASS_TE_CLASS_TEA_CLASS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CLASS_TE_CLASS_TEA_TEACHER') then
    alter table class_teac
       delete foreign key FK_CLASS_TE_CLASS_TEA_TEACHER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_COURSE_RELATIONS_TEACHER') then
    alter table course
       delete foreign key FK_COURSE_RELATIONS_TEACHER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SCORE_COURSE_SC_COURSE') then
    alter table score
       delete foreign key FK_SCORE_COURSE_SC_COURSE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SCORE_STU_SCORE_STUDENT') then
    alter table score
       delete foreign key FK_SCORE_STU_SCORE_STUDENT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_STU_COUR_STU_COURS_STUDENT') then
    alter table stu_course
       delete foreign key FK_STU_COUR_STU_COURS_STUDENT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_STU_COUR_STU_COURS_COURSE') then
    alter table stu_course
       delete foreign key FK_STU_COUR_STU_COURS_COURSE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_STU_TEAC_STU_TEAC_STUDENT') then
    alter table stu_teac
       delete foreign key FK_STU_TEAC_STU_TEAC_STUDENT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_STU_TEAC_STU_TEAC2_TEACHER') then
    alter table stu_teac
       delete foreign key FK_STU_TEAC_STU_TEAC2_TEACHER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_STUDENT_CLASS_STU_CLASS') then
    alter table student
       delete foreign key FK_STUDENT_CLASS_STU_CLASS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_STUDENT_STU_ROLE_ROLE') then
    alter table student
       delete foreign key FK_STUDENT_STU_ROLE_ROLE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TEACHER_TEAC_ROLE_ROLE') then
    alter table teacher
       delete foreign key FK_TEACHER_TEAC_ROLE_ROLE
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='admins_role_FK'
     and t.table_name='admins'
) then
   drop index admins.admins_role_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='admins_PK'
     and t.table_name='admins'
) then
   drop index admins.admins_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='admins'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table admins
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='class_PK'
     and t.table_name='class'
) then
   drop index class.class_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='class'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table class
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='class_teac2_FK'
     and t.table_name='class_teac'
) then
   drop index class_teac.class_teac2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='class_teac_FK'
     and t.table_name='class_teac'
) then
   drop index class_teac.class_teac_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='class_teac_PK'
     and t.table_name='class_teac'
) then
   drop index class_teac.class_teac_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='class_teac'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table class_teac
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='Relationship_9_FK'
     and t.table_name='course'
) then
   drop index course.Relationship_9_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='course_PK'
     and t.table_name='course'
) then
   drop index course.course_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='course'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table course
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='role_PK'
     and t.table_name='role'
) then
   drop index role.role_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='role'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table role
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='course_score_FK'
     and t.table_name='score'
) then
   drop index score.course_score_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='stu_score_FK'
     and t.table_name='score'
) then
   drop index score.stu_score_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='score_PK'
     and t.table_name='score'
) then
   drop index score.score_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='score'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table score
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='stu_course2_FK'
     and t.table_name='stu_course'
) then
   drop index stu_course.stu_course2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='stu_course_FK'
     and t.table_name='stu_course'
) then
   drop index stu_course.stu_course_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='stu_course_PK'
     and t.table_name='stu_course'
) then
   drop index stu_course.stu_course_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='stu_course'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table stu_course
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='stu_teac2_FK'
     and t.table_name='stu_teac'
) then
   drop index stu_teac.stu_teac2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='stu_teac_FK'
     and t.table_name='stu_teac'
) then
   drop index stu_teac.stu_teac_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='stu_teac_PK'
     and t.table_name='stu_teac'
) then
   drop index stu_teac.stu_teac_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='stu_teac'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table stu_teac
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='stu_role_FK'
     and t.table_name='student'
) then
   drop index student.stu_role_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='class_stu_FK'
     and t.table_name='student'
) then
   drop index student.class_stu_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='student_PK'
     and t.table_name='student'
) then
   drop index student.student_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='student'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table student
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='teac_role_FK'
     and t.table_name='teacher'
) then
   drop index teacher.teac_role_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='teacher_PK'
     and t.table_name='teacher'
) then
   drop index teacher.teacher_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='teacher'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table teacher
end if;

/*==============================================================*/
/* Table: admins                                                 */
/*==============================================================*/
create table admins 
(
   admins_id             integer                        not null,
   role_id              integer,
   admins_pwd            varchar(20),
   constraint PK_admins primary key (admins_id)
);

/*==============================================================*/
/* Index: admins_PK                                              */
/*==============================================================*/
create unique index admins_PK on admins (
admins_id ASC
);

/*==============================================================*/
/* Index: admins_role_FK                                         */
/*==============================================================*/
create index admins_role_FK on admins (
role_id ASC
);

/*==============================================================*/
/* Table: class                                                 */
/*==============================================================*/
create table class 
(
   class_id             integer                        not null,
   class_name           varchar(20),
   constraint PK_CLASS primary key (class_id)
);

/*==============================================================*/
/* Index: class_PK                                              */
/*==============================================================*/
create unique index class_PK on class (
class_id ASC
);

/*==============================================================*/
/* Table: class_teac                                            */
/*==============================================================*/
create table class_teac 
(
   class_id             integer                        not null,
   teac_id              integer                        not null,
   constraint PK_CLASS_TEAC primary key clustered (class_id, teac_id)
);

/*==============================================================*/
/* Index: class_teac_PK                                         */
/*==============================================================*/
create unique clustered index class_teac_PK on class_teac (
class_id ASC,
teac_id ASC
);

/*==============================================================*/
/* Index: class_teac_FK                                         */
/*==============================================================*/
create index class_teac_FK on class_teac (
class_id ASC
);

/*==============================================================*/
/* Index: class_teac2_FK                                        */
/*==============================================================*/
create index class_teac2_FK on class_teac (
teac_id ASC
);

/*==============================================================*/
/* Table: course                                                */
/*==============================================================*/
create table course 
(
   cour_id              integer                        not null,
   teac_id              integer,
   cour_name            varchar(20),
   constraint PK_COURSE primary key (cour_id)
);

/*==============================================================*/
/* Index: course_PK                                             */
/*==============================================================*/
create unique index course_PK on course (
cour_id ASC
);

/*==============================================================*/
/* Index: Relationship_9_FK                                     */
/*==============================================================*/
create index Relationship_9_FK on course (
teac_id ASC
);

/*==============================================================*/
/* Table: role                                                  */
/*==============================================================*/
create table role 
(
   role_id              integer                        not null,
   role_name            integer,
   constraint PK_ROLE primary key (role_id)
);

/*==============================================================*/
/* Index: role_PK                                               */
/*==============================================================*/
create unique index role_PK on role (
role_id ASC
);

/*==============================================================*/
/* Table: score                                                 */
/*==============================================================*/
create table score 
(
   score_id             integer                        not null,
   cour_id              integer,
   stu_id               integer,
   score_score          float,
   constraint PK_SCORE primary key (score_id)
);

/*==============================================================*/
/* Index: score_PK                                              */
/*==============================================================*/
create unique index score_PK on score (
score_id ASC
);

/*==============================================================*/
/* Index: stu_score_FK                                          */
/*==============================================================*/
create index stu_score_FK on score (
stu_id ASC
);

/*==============================================================*/
/* Index: course_score_FK                                       */
/*==============================================================*/
create index course_score_FK on score (
cour_id ASC
);

/*==============================================================*/
/* Table: stu_course                                            */
/*==============================================================*/
create table stu_course 
(
   stu_id               integer                        not null,
   cour_id              integer                        not null,
   constraint PK_STU_COURSE primary key clustered (stu_id, cour_id)
);

/*==============================================================*/
/* Index: stu_course_PK                                         */
/*==============================================================*/
create unique clustered index stu_course_PK on stu_course (
stu_id ASC,
cour_id ASC
);

/*==============================================================*/
/* Index: stu_course_FK                                         */
/*==============================================================*/
create index stu_course_FK on stu_course (
stu_id ASC
);

/*==============================================================*/
/* Index: stu_course2_FK                                        */
/*==============================================================*/
create index stu_course2_FK on stu_course (
cour_id ASC
);

/*==============================================================*/
/* Table: stu_teac                                              */
/*==============================================================*/
create table stu_teac 
(
   stu_id               integer                        not null,
   teac_id              integer                        not null,
   constraint PK_STU_TEAC primary key clustered (stu_id, teac_id)
);

/*==============================================================*/
/* Index: stu_teac_PK                                           */
/*==============================================================*/
create unique clustered index stu_teac_PK on stu_teac (
stu_id ASC,
teac_id ASC
);

/*==============================================================*/
/* Index: stu_teac_FK                                           */
/*==============================================================*/
create index stu_teac_FK on stu_teac (
stu_id ASC
);

/*==============================================================*/
/* Index: stu_teac2_FK                                          */
/*==============================================================*/
create index stu_teac2_FK on stu_teac (
teac_id ASC
);

/*==============================================================*/
/* Table: student                                               */
/*==============================================================*/
create table student 
(
   stu_id               integer                        not null,
   role_id              integer,
   class_id             integer,
   stu_name             varchar(20),
   stu_pwd              varchar(20),
   stu_sex              varchar(3),
   stu_tel              integer,
   stu_address          varchar(60),
   constraint PK_STUDENT primary key (stu_id)
);

/*==============================================================*/
/* Index: student_PK                                            */
/*==============================================================*/
create unique index student_PK on student (
stu_id ASC
);

/*==============================================================*/
/* Index: class_stu_FK                                          */
/*==============================================================*/
create index class_stu_FK on student (
class_id ASC
);

/*==============================================================*/
/* Index: stu_role_FK                                           */
/*==============================================================*/
create index stu_role_FK on student (
role_id ASC
);

/*==============================================================*/
/* Table: teacher                                               */
/*==============================================================*/
create table teacher 
(
   teac_id              integer                        not null,
   role_id              integer,
   teac_name            varchar(20),
   teac_pwd             varchar(20),
   constraint PK_TEACHER primary key (teac_id)
);

/*==============================================================*/
/* Index: teacher_PK                                            */
/*==============================================================*/
create unique index teacher_PK on teacher (
teac_id ASC
);

/*==============================================================*/
/* Index: teac_role_FK                                          */
/*==============================================================*/
create index teac_role_FK on teacher (
role_id ASC
);

alter table admins
   add constraint FK_admins_admins_ROL_ROLE foreign key (role_id)
      references role (role_id)
      on update restrict
      on delete restrict;

alter table class_teac
   add constraint FK_CLASS_TE_CLASS_TEA_CLASS foreign key (class_id)
      references class (class_id)
      on update restrict
      on delete restrict;

alter table class_teac
   add constraint FK_CLASS_TE_CLASS_TEA_TEACHER foreign key (teac_id)
      references teacher (teac_id)
      
      on delete restrict;

alter table course
   add constraint FK_COURSE_RELATIONS_TEACHER foreign key (teac_id)
      references teacher (teac_id)
      on update restrict
      on delete restrict;

alter table score
   add constraint FK_SCORE_COURSE_SC_COURSE foreign key (cour_id)
      references course (cour_id)
      on update restrict
      on delete restrict;

alter table score
   add constraint FK_SCORE_STU_SCORE_STUDENT foreign key (stu_id)
      references student (stu_id)
      on update restrict
      on delete restrict;

alter table stu_course
   add constraint FK_STU_COUR_STU_COURS_STUDENT foreign key (stu_id)
      references student (stu_id)
      on update restrict
      on delete restrict;

alter table stu_course
   add constraint FK_STU_COUR_STU_COURS_COURSE foreign key (cour_id)
      references course (cour_id)
      on update restrict
      on delete restrict;

alter table stu_teac
   add constraint FK_STU_TEAC_STU_TEAC_STUDENT foreign key (stu_id)
      references student (stu_id)
      on update restrict
      on delete restrict;

alter table stu_teac
   add constraint FK_STU_TEAC_STU_TEAC2_TEACHER foreign key (teac_id)
      references teacher (teac_id)
      on update restrict
      on delete restrict;

alter table student
   add constraint FK_STUDENT_CLASS_STU_CLASS foreign key (class_id)
      references class (class_id)
      on update restrict
      on delete restrict;

alter table student
   add constraint FK_STUDENT_STU_ROLE_ROLE foreign key (role_id)
      references role (role_id)
      on update restrict
      on delete restrict;

alter table teacher
   add constraint FK_TEACHER_TEAC_ROLE_ROLE foreign key (role_id)
      references role (role_id)
      on update restrict
      on delete restrict;

