/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     02.06.2020 01:45:14                          */
/*==============================================================*/


drop table if exists Collab_Task_Plan;

drop table if exists Collaborator;

drop table if exists Collaborator_Competence;

drop table if exists Competence;

drop table if exists Competence_Task;

drop table if exists Project;

drop table if exists Task;

drop table if exists User;

/*==============================================================*/
/* Table: Project                                               */
/*==============================================================*/
create table Project
(
   idProject            int not null auto_increment,
   title                varchar(254) not null,
   startDate            datetime not null,
   endDate              datetime not null,
   duration             int not null,
   description          varchar(254),
   created_at           datetime,
   primary key (idProject)
);

/*==============================================================*/
/* Table: Task                                                  */
/*==============================================================*/
create table Task
(
   idProject            int not null,
   idTask               int not null,
   title                varchar(254) not null,
   startDate            datetime not null,
   endDate              datetime not null,
   duration             int not null,
   description          varchar(254),
   created_at           datetime,
   primary key (idProject, idTask),
   constraint FK_contain foreign key (idProject)
      references Project (idProject) on delete cascade on update cascade
);

ALTER TABLE Task ADD INDEX(idTask);
ALTER TABLE Task CHANGE idTask idTask INT(11) NOT NULL AUTO_INCREMENT;

/* This is the implementation of the aggregation relationship */


/*==============================================================*/
/* Table: Collaborator                                          */
/*==============================================================*/
create table Collaborator
(
   idCollab             int not null auto_increment,
   firstName            varchar(254) not null,
   lastName             varchar(254) not null,
   gender               char(1),
   email                varchar(254),
   created_at           datetime,
   primary key (idCollab)
);

/*==============================================================*/
/* Table: Collab_Task_Plan                                      */
/*==============================================================*/
create table Collab_Task_Plan
(
   idProject            int not null,
   idTask               int not null,
   idCollab             int not null,
   assignedHours        int not null,
   primary key (idProject, idTask, idCollab),
   constraint FK_Collaborator_Task_1 foreign key (idProject, idTask)
      references Task (idProject, idTask) on delete cascade on update cascade,
   constraint FK_Collaborator_Task_2 foreign key (idCollab)
      references Collaborator (idCollab)
);

/*==============================================================*/
/* Table: Competence                                            */
/*==============================================================*/
create table Competence
(
   idComp               int not null auto_increment,
   name                 varchar(254) not null,
   created_at           datetime,
   primary key (idComp)
);

/*==============================================================*/
/* Table: Collaborator_Competence                               */
/*==============================================================*/
create table Collaborator_Competence
(
   idCollab             int not null,
   idComp               int not null,
   primary key (idCollab, idComp),
   constraint FK_Collaborator_Competence_1 foreign key (idCollab)
      references Collaborator (idCollab),
   constraint FK_Collaborator_Competence_2 foreign key (idComp)
      references Competence (idComp)
);

/*==============================================================*/
/* Table: Competence_Task                                       */
/*==============================================================*/
create table Competence_Task
(
   idProject            int not null,
   idTask               int not null,
   idComp               int not null,
   primary key (idProject, idTask, idComp),
   constraint FK_Competence_Task_1 foreign key (idProject, idTask)
      references Task (idProject, idTask) on delete cascade on update cascade,
   constraint FK_Competence_Task_2 foreign key (idComp)
      references Competence (idComp)
);

/*==============================================================*/
/* Table: User                                                  */
/*==============================================================*/
create table User
(
   idUser               int not null auto_increment,
   username             varchar(254) not null,
   password             varchar(254) not null,
   userGroup            varchar(254) not null,
   role                 varchar(254) not null,
   primary key (idUser)
);


/* -------SOME INSERTS */

INSERT INTO User (username, password, userGroup, role)
VALUES ('master','123456','admin','admin');

