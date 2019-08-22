INSERT INTO `learning-with-texts`.students (StuID, StuName, StuLogin, StuPass, StuCreated) VALUES (1, 'Student1', 'Student1', '1234', '2019-04-02 19:45:49');
INSERT INTO `learning-with-texts`.students (StuID, StuName, StuLogin, StuPass, StuCreated) VALUES (2, 'Student2', 'Student2', '12345', '2019-04-02 19:46:01');
INSERT INTO `learning-with-texts`.students (StuID, StuName, StuLogin, StuPass, StuCreated) VALUES (3, 'Student3', 'Student3', '123', '2019-04-02 19:46:11');

insert into `learning-with-texts`.words_new
(WoID, WoLgID, WoText, WoTextLC, WoTranslation, WoRomanization, WoSentence, WoCreated)
Select
  WoID, WoLgID, WoText, WoTextLC, WoTranslation, WoRomanization, WoSentence, WoCreated
FROM `learning-with-texts`.words;

insert into `learning-with-texts`.studentwordstatus
(StuID, WoID, WoStatus, WoStatusChanged, WoTodayScore, WoTomorrowScore, WoRandom)
Select
  1, WoID, WoStatus, WoStatusChanged, WoTodayScore, WoTomorrowScore, WoRandom
FROM `learning-with-texts`.words
WHERE WoLgID = 5;

INSERT INTO `learning-with-texts`.wordsuggestions (SugID, WoID, SugTxt) VALUES (1, 72, 'Domo Arigato Mr. Roboto');
INSERT INTO `learning-with-texts`.wordsuggestions (SugID, WoID, SugTxt) VALUES (2, 97, 'It''s pronounced kind of like England');

INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (54, 53);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (55, 53);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (55, 62);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (56, 62);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (57, 63);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (58, 63);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (59, 63);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (60, 63);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (61, 63);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (65, 72);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (68, 72);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (69, 72);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (70, 72);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (71, 72);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (96, 97);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (98, 87);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (99, 87);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (100, 97);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (103, 83);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (103, 85);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (104, 83);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (104, 85);
INSERT INTO `learning-with-texts`.worddep (WoID, DepWoID) VALUES (105, 85);