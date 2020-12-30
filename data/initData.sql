/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/12/30 11:46:16                          */
/*==============================================================*/


drop table if exists "��Ա-��Ա��";

drop table if exists "��Ա-����ֵ�仯��ʷ��¼��";

drop table if exists "����-�������";

drop table if exists "����-��Ѷ��";

drop table if exists "ѧϰ-�û�ѧϰʱ����";

drop table if exists "ѧϰ-�û�ѧϰ�������¼��";

drop table if exists "����-������";

drop table if exists "����-��֤��";

drop table if exists "��Ŀ-��Ŀ���ͱ�";

drop table if exists "��Ŀ-��Ŀ��";

/*==============================================================*/
/* Table: "��Ա-��Ա��"                                              */
/*==============================================================*/
create table "��Ա-��Ա��"
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
create table "��Ա-����ֵ�仯��ʷ��¼��"
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

/*==============================================================*/
/* Table: "����-�������"                                            */
/*==============================================================*/
create table "����-�������"
(
   id                   bigint not null,
   imgPath              varchar(500),
   title                varchar(500),
   "order"              int,
   isShowed             tinyint,
   redirectType         tinyint,
   createTime           datetime,
   updateTime           datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: "����-��Ѷ��"                                              */
/*==============================================================*/
create table "����-��Ѷ��"
(
   id                   bigint not null,
   imgPath              varchar(500),
   title                varchar(500),
   "order"              int,
   isShowed             tinyint,
   redirectType         tinyint,
   createTime           datetime,
   updateTime           datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: "ѧϰ-�û�ѧϰʱ����"                                          */
/*==============================================================*/
create table "ѧϰ-�û�ѧϰʱ����"
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
create table "ѧϰ-�û�ѧϰ�������¼��"
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
/* Table: "����-������"                                              */
/*==============================================================*/
create table "����-������"
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
create table "����-��֤��"
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
/* Table: "��Ŀ-��Ŀ���ͱ�"                                            */
/*==============================================================*/
create table "��Ŀ-��Ŀ���ͱ�"
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
create table "��Ŀ-��Ŀ��"
(
   id                   bigint not null,
   questionName         varchar(500),
   questionAnswer       varchar(2000),
   questionDiffcultyClass tinyint,
   "order"              int,
   subtitle             varchar(500),
   questionType         bigint,
   isShowed             tinyint,
   createTime           datetime,
   updateTime           datetime,
   primary key (id)
);

