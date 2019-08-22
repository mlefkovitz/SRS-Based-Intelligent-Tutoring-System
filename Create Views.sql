create view `learning-with-texts`.vw_studentword
AS 
(
  select
    studentwordstatus.StuID
    ,words_new.WoID
    ,words_new.WoLgID
    ,words_new.WoText
    ,words_new.WoTextLC
    ,words_new.WoTranslation
    ,words_new.WoRomanization
    ,words_new.WoSentence
    ,words_new.WoCreated
    ,studentwordstatus.WoStatus
    ,studentwordstatus.WoStatusChanged
    ,studentwordstatus.WoTodayScore
    ,studentwordstatus.WoTomorrowScore
    ,studentwordstatus.WoRandom
  FROM words_new
  LEFT JOIN studentwordstatus
  ON words_new.WoID = studentwordstatus.WoID
);