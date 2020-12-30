/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/12/30 11:46:16                          */
/*==============================================================*/


drop table if exists "会员-会员表";

drop table if exists "会员-积分值变化历史记录表";

drop table if exists "内容-横幅广告表";

drop table if exists "内容-资讯表";

drop table if exists "学习-用户学习时常表";

drop table if exists "学习-用户学习浏览器记录表";

drop table if exists "渠道-渠道表";

drop table if exists "渠道-认证表";

drop table if exists "题目-题目类型表";

drop table if exists "题目-题目表";

/*==============================================================*/
/* Table: "会员-会员表"                                              */
/*==============================================================*/
create table "会员-会员表"
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
/* Table: "会员-积分值变化历史记录表"                                       */
/*==============================================================*/
create table "会员-积分值变化历史记录表"
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
/* Table: "内容-横幅广告表"                                            */
/*==============================================================*/
create table "内容-横幅广告表"
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
/* Table: "内容-资讯表"                                              */
/*==============================================================*/
create table "内容-资讯表"
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
/* Table: "学习-用户学习时常表"                                          */
/*==============================================================*/
create table "学习-用户学习时常表"
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
/* Table: "学习-用户学习浏览器记录表"                                       */
/*==============================================================*/
create table "学习-用户学习浏览器记录表"
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
/* Table: "渠道-渠道表"                                              */
/*==============================================================*/
create table "渠道-渠道表"
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
/* Table: "渠道-认证表"                                              */
/*==============================================================*/
create table "渠道-认证表"
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
/* Table: "题目-题目类型表"                                            */
/*==============================================================*/
create table "题目-题目类型表"
(
   id                   bigint not null,
   typeName             char(64),
   typeLogoPath         varchar(500),
   createTime           datetime,
   updateTime           datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: "题目-题目表"                                              */
/*==============================================================*/
create table "题目-题目表"
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

