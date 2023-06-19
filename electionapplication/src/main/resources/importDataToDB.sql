

-------------------------------#insert data into T_COUNTRY STARTS---------------------------------------------

INSERT INTO `sql_election`.`T_COUNTRY` (`id`, `arabic_name`, `name`, `country_code`) VALUES ('1', 'الأردن', 'Jordan', '962');

-------------------------------#insert data into T_COUNTRY ENDS-----------------------------------------------






-------------------------------#insert data into t_governorate STARTS------------------------------------------

INSERT INTO t_governorate (id, name, arabic_name,country_id)
VALUES (1, "Amman", "عمّان", "1" );


INSERT INTO t_governorate (id, name, arabic_name,country_id)
VALUES (2, "Irbid", "إربد" , "1");

INSERT INTO t_governorate (id, name, arabic_name,country_id)
VALUES (3, "Balqa", "البلقاء", "1");

INSERT INTO t_governorate (id, name, arabic_name,country_id)
VALUES (4, "Karak" , "الكرك", "1");

INSERT INTO t_governorate (id, name, arabic_name,country_id)
VALUES (5, "Ma'an", "معان", "1");

INSERT INTO t_governorate (id, name, arabic_name,country_id)
VALUES (6, "Zarqa", "الزرقاء", "1");

INSERT INTO t_governorate (id, name, arabic_name,country_id)
VALUES (7, "Al-Mafraq", "المفرق", "1");

INSERT INTO t_governorate (id, name, arabic_name,country_id)
VALUES (8, "At-Tafilah", "الطفيلة", "1");

INSERT INTO t_governorate (id, name, arabic_name,country_id)
VALUES (9, "Madaba", "مادبا", "1");

INSERT INTO t_governorate (id, name, arabic_name,country_id)
VALUES (10, "Jerash", "جرش", "1");

INSERT INTO t_governorate (id, name, arabic_name,country_id)
VALUES (11, "Ajloun", "عجلون", "1");

INSERT INTO t_governorate (id, name, arabic_name,country_id)
VALUES (12, "Aqaba", "العقبة", "1");


INSERT INTO t_governorate (id, name, arabic_name,country_id)
VALUES (13, "Badia" ,"البادية", "1");

-------------------------------#insert data into t_governorate ENDS------------------------------------------

















#-------------------------------#insert data into t_constituency STARTS------------------------------------------
#-------Amman----------------------------Starts
INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (1, 1,  "The first constituency", "الدائرة الانتخابية الاولى" );

INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (2, 1,  "Second constituency", "الدائرة الانتخابية الثانية" );


INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (3, 1,  "Third constituency", "االدائرة الانتخابية الثالثة" );


INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (4, 1,  "Fourth constituency", "الدائرة الانتخابية الرابعة" );


INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (5, 1,  "Fifth constituency", "الدائرة الانتخابية الخامسة" );




INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (6, 1,  "Sixth constituency", "الدائرة الانتخابية السادسة" );


INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (7, 1,  "Seventh constituency", "االدائرة الانتخابية السابعة" );
#-------Amman----------------------------Ends


#-------Irbid----------------------------STARTS
INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (8, 2,  "The first constituency", "الدائرة الانتخابية الاولى" );

INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (9, 2,  "Second constituency", "الدائرة الانتخابية الثانية" );

INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (10, 2,  "Third constituency", "االدائرة الانتخابية الثالثة" );

INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (11, 2,  "Fourth constituency", "الدائرة الانتخابية الرابعة" );

INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (12, 2,  "Fifth constituency", "الدائرة الانتخابية الخامسة" );

INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (13, 2,  "Sixth constituency", "الدائرة الانتخابية السادسة" );

INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (14, 2,  "Seventh constituency", "االدائرة الانتخابية السابعة" );

INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (15, 2,  "Eighth constituency", "الدائرة الانتخابية الثامنة" );

INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (16, 2,  "The ninth constituency", "الدائرة الانتخابية التاسعة" );

#-------Irbid----------------------------ENDS

#-------Balqa----------------------------STARTS
INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (17, 3,  "The first constituency", "الدائرة الانتخابية الاولى" );

INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (18, 3,  "Second constituency", "الدائرة الانتخابية الثانية" );


INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (19, 3,  "Third constituency", "االدائرة الانتخابية الثالثة" );


INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (20, 3,  "Fourth constituency", "الدائرة الانتخابية الرابعة" );

#-------Balqa----------------------------ENDS

#-------Karak----------------------------STARTS
INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (21, 4,  "The first constituency", "الدائرة الانتخابية الاولى" );

INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (22, 4,  "Second constituency", "الدائرة الانتخابية الثانية" );


INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (23, 4,  "Third constituency", "االدائرة الانتخابية الثالثة" );


INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (24, 4,  "Fourth constituency", "الدائرة الانتخابية الرابعة" );


INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (25, 4,  "Fifth constituency", "الدائرة الانتخابية الخامسة" );


INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (26, 4,  "Sixth constituency", "الدائرة الانتخابية السادسة" );


INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (27, 4,  "Seventh constituency", "االدائرة الانتخابية السابعة" );

#-------Karak----------------------------ENDS


#-------Ma'an----------------------------sTARTS
INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (28, 5,  "The first constituency", "الدائرة الانتخابية الاولى" );

INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (29, 5,  "Second constituency", "الدائرة الانتخابية الثانية" );


INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (30, 5,  "Third constituency", "االدائرة الانتخابية الثالثة" );

#-------Ma'an----------------------------ENDS


#-------zARQA----------------------------START
INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (31, 6,  "The first constituency", "الدائرة الانتخابية الاولى" );


INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (32, 6,  "Second constituency", "الدائرة الانتخابية الثانية" );


INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (33, 6,  "Third constituency", "االدائرة الانتخابية الثالثة" );


INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (34, 6,  "Fourth constituency", "الدائرة الانتخابية الرابعة" );

#-------zARQA----------------------------ENDS

#-------Al-Mafraq----------------------------STARTS
INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (35, 7,  "The first constituency", "الدائرة الانتخابية الاولى" );
#-------Al-Mafraq----------------------------ENDS


#-------TAFELA----------------------------STARTS
INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (36, 8,  "The first constituency", "الدائرة الانتخابية الاولى" );

INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (37, 8,  "Second constituency", "الدائرة الانتخابية الثانية" );

#-------TAFELA----------------------------ENDS

#-------مادبا----------------------------STARTS
INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (38, 9,  "The first constituency", "الدائرة الانتخابية الاولى" );

INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (39, 9,  "Second constituency", "الدائرة الانتخابية الثانية" );

#-------مادبا----------------------------ENDS

#-------جرش----------------------------STARTS
INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (40, 10,  "The first constituency", "الدائرة الانتخابية الاولى" );

#-------جرش----------------------------ENDS

#-------عجلون----------------------------STARTS
INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (41, 11,  "The first constituency", "الدائرة الانتخابية الاولى" );

INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (42, 11,  "Second constituency", "الدائرة الانتخابية الثانية" );

#-------عجلون----------------------------ENDS

#-------العقبة----------------------------STARTS
INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (43, 12,  "The first constituency", "الدائرة الانتخابية الاولى" );
 
#-------العقبة----------------------------ENDS




#-------البادية----------------------------START
INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (44, 13,  "The first constituency", "الدائرة الانتخابية الاولى" );


INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (45, 13,  "Second constituency", "الدائرة الانتخابية الثانية" );


INSERT INTO t_constituency (id, governorate_id, name, arabic_name)
VALUES (46, 13,  "Third constituency", "االدائرة الانتخابية الثالثة" );








update t_constituency set arabic_name = 'بدو الشمال' , name = "North Bedouin" where id = 44 ; 
update t_constituency set arabic_name = 'بدو الوسط' , name = "Mediation Bedouin" where id = 45 ; 
update t_constituency set arabic_name = 'بدو الوسط' , name = "South Bedouin" where id = 46 ; 

 
#-------البادية----------------------------ENDS
#-------------------------------#insert data into t_constituency ENDS------------------------------------------

