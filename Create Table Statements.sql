create table `learning-with-texts`.words_new
(
  WoID            int(11) unsigned auto_increment
    primary key,
  WoLgID          int(11) unsigned                           not null,
  WoText          varchar(250)                               not null,
  WoTextLC        varchar(250) collate utf8_bin              not null,
  WoTranslation   varchar(500) default '*'                   not null,
  WoRomanization  varchar(100)                               null,
  WoSentence      varchar(1000)                              null,
  WoCreated       timestamp    default CURRENT_TIMESTAMP     not null,
  constraint WoLgIDTextLC
    unique (WoLgID, WoTextLC)
);

create index WoCreated_new
  on `learning-with-texts`.words_new (WoCreated);

create index WoLgID_new
  on `learning-with-texts`.words_new (WoLgID);

create index WoTextLC_new
  on `learning-with-texts`.words_new (WoTextLC);

create table `learning-with-texts`.studentwordstatus
(
  StuID            int(11) unsigned                          not null,
  WoID            int(11) unsigned                           not null,
  WoStatus        tinyint                                    not null,
  WoStatusChanged timestamp    default '0000-00-00 00:00:00' not null,
  WoTodayScore    double       default 0                     not null,
  WoTomorrowScore double       default 0                     not null,
  WoRandom        double       default 0                     not null,
  primary key(StuID,WoID),
  constraint StuIDWoID
    unique (StuID, WoID)
);

create index WoRandom_new
  on `learning-with-texts`.studentwordstatus (WoRandom);

create index WoStatus_new
  on `learning-with-texts`.studentwordstatus (WoStatus);

create index WoStatusChanged_new
  on `learning-with-texts`.studentwordstatus (WoStatusChanged);

create index WoTodayScore_new
  on `learning-with-texts`.studentwordstatus (WoTodayScore);

create index WoTomorrowScore_new
  on `learning-with-texts`.studentwordstatus (WoTomorrowScore);

create table `learning-with-texts`.students
(
  StuID            int(11) unsigned auto_increment
    primary key,
  StuName          varchar(100)                               not null,
  StuLogin          varchar(100)                               not null,
  StuPass          varchar(100)                               not null,
  StuCreated       timestamp    default CURRENT_TIMESTAMP     not null,
  constraint StuLogin
    unique (StuLogin)
);

create index StuLoginInd
  on `learning-with-texts`.students (StuLogin);

create index StuCreated
  on `learning-with-texts`.students (StuCreated);

create table `learning-with-texts`.wordsuggestions
(
  SugID            int(11) unsigned auto_increment
    primary key,
  WoID            int(11) unsigned                              not null,
  SugTxt          varchar(500)                               not null
);

create index SugWoID
  on `learning-with-texts`.wordsuggestions (WoID);


create table `learning-with-texts`.worddep
(
  WoID            int(11) unsigned                              not null,
  DepWoID            int(11) unsigned                           not null,
  primary key (WoID, DepWoID)
);

create index DepWoID
  on `learning-with-texts`.worddep (DepWoID);