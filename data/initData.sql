/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/12/30 11:46:16                          */
/*==============================================================*/


DROP DATABASE IF EXISTS `passjava_ums`;
DROP DATABASE IF EXISTS `passjava_qms`;
DROP DATABASE IF EXISTS `passjava_sms`;
DROP DATABASE IF EXISTS `passjava_cms`;
DROP DATABASE IF EXISTS `passjava_chms`;

CREATE DATABASE passjava_ums CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE DATABASE passjava_qms CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE DATABASE passjava_sms CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE DATABASE passjava_cms CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE DATABASE passjava_chms CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

USE passjava_ums;

DROP TABLE IF EXISTS ums_member;

/*==============================================================*/
/* Table: "��Ա-��Ա��"                                              */
/*==============================================================*/
create table ums_member
(
   id                   bigint not null,
   miniAppOpenId        int,
   serviceNumberOpenId  varchar(64),
   wechatUnionId        varchar(64),
   memberClassId        bigint,
   username             char(64),
   password             varchar(64),
   nickname             varchar(64),
   phoneNumber          varchar(20),
   email                varchar(64),
   profile              varchar(500),
   gender               tinyint,
   birthday             date,
   city                 varchar(500),
   userSource           tinyint,
   points               int,
   registerTime         datetime,
   createTime           datetime,
   updateTime           datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: "��Ա-����ֵ�仯��ʷ��¼��"                                       */
/*==============================================================*/
create table ums_growth_change_history
(
   id                   bigint not null,
   memberId             bigint,
   variate              int,
   pointsSource         tinyint,
   comment              varchar(500),
   createTime           datetime,
   updateTime           datetime,
   primary key (id)
);


USE passjava_cms;

DROP TABLE IF EXISTS cms_banner;

/*==============================================================*/
/* Table: "����-�������"                                            */
/*==============================================================*/
create table cms_banner
(
   id                   bigint not null,
   imgPath              varchar(500),
   title                varchar(500),
   displayOrder                int,
   isShowed             tinyint,
   redirectType         tinyint,
   createTime           datetime,
   updateTime           datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: "����-��Ѷ��"                                              */
/*==============================================================*/
create table cms_news
(
   id                   bigint not null,
   imgPath              varchar(500),
   title                varchar(500),
   displayOrder              int,
   isShowed             tinyint,
   redirectType         tinyint,
   createTime           datetime,
   updateTime           datetime,
   primary key (id)
);

USE passjava_sms;

DROP TABLE IF EXISTS sms_study_time;

/*==============================================================*/
/* Table: "ѧϰ-�û�ѧϰʱ����"                                          */
/*==============================================================*/
create table sms_study_time
(
   id                   bigint not null,
   topicId              bigint,
   userId               bigint,
   learnTime            int,
   createTime           datetime,
   updateTime           datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: "ѧϰ-�û�ѧϰ�������¼��"                                       */
/*==============================================================*/
create table sms_view_log
(
   id                   bigint not null,
   topicId              bigint,
   userId               bigint,
   learnTime            int,
   createTime           datetime,
   updateTime           datetime,
   primary key (id)
);

USE passjava_chms;

DROP TABLE IF EXISTS chms_channel;

/*==============================================================*/
/* Table: "����-������"                                              */
/*==============================================================*/
create table chms_channel
(
   id                   bigint not null,
   channelName          varchar(100),
   channelAppId         varchar(100),
   channelAppSecret     varchar(100),
   createTime           datetime,
   updateTime           datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: "����-��֤��"                                              */
/*==============================================================*/
create table chms_access_token
(
   id                   bigint not null,
   channelName          varchar(100),
   channelAppId         varchar(100),
   channelAppSecret     varchar(100),
   createTime           datetime,
   updateTime           datetime,
   primary key (id)
);

USE passjava_qms;

DROP TABLE IF EXISTS qms_question;

/*==============================================================*/
/* Table: "��Ŀ-��Ŀ���ͱ�"                                            */
/*==============================================================*/
create table qms_type
(
   id                   bigint not null,
   typeName             char(64),
   typeLogoPath         varchar(500),
   createTime           datetime,
   updateTime           datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: "��Ŀ-��Ŀ��"                                              */
/*==============================================================*/
create table qms_question
(
   id                   bigint not null,
   questionName         varchar(500),
   questionAnswer       varchar(2000),
   questionDiffcultyClass tinyint,
   displayOrder              int,
   subtitle             varchar(500),
   questionType         bigint,
   isShowed             tinyint,
   createTime           datetime,
   updateTime           datetime,
   primary key (id)
);

