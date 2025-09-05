
Q1
insert into reports (person_id, content)
    -> values(1, '鈴木たかしの日報'),
    -> (2, ' 田中ゆうこの日報'),
    -> (3, '福田だいすけの日報'),
    -> (4, '豊島はなこの日報'),
    -> (5, '近藤ひろとの日報'),
    -> (7, '芹沢こうじの日報'),
    -> (8, '金城きよたかの日報'),
    -> (9, '佐藤たかとの日報'),
    -> (999, '加藤げんじの日報');

Q2
 ALTER TABLE people　ADD COLUMN department_id INT UNSIGNED NULL COMMENT '部署ID' AFTER email;

Q3
departments

insert into departments (name)
    -> values ('営業')
    -> ('開発'),
    -> ('経理'),
    -> ('人事'),
    -> ('情報システム');

people

insert into people (name, email, department_id, age, gender)
    -> values('福岡けいじ', 'hukuoka@beyond-works.co.jp', 1, 28, 1),
    -> ('柳田こうた', 'yanagida@beyond-works.co.jp', 1,35,1),
    -> ('井上せいしろう', 'inoue@beyond-works.co.jp', 1,39,1),
    -> ('及川けいこ', 'oikawa@beyond-works.co.jp', 2,40,2),
    -> ('関みく', 'seki@beyond-works.co.jp', 2,37,2),
    -> ('阿部たくと', 'abe@beyond-works.co.jp', 2,22,1),
    -> ('穂刈きょうか', 'hokari@beyond-works.co.jp', 2,27,2),
    -> ('多田としのり', 'tada@beyond-works.co.jp', 3,30,1),
    -> ('安藤よしき', 'anndou@beyond-works.co.jp', 4,37,1),
    -> ('本橋しょうこ', 'motohasi@beyond-works.co.jp', 5,20,2);

reports

insert into reports (person_id, content)
    -> values (7, '福岡けいじの日報　DBレッスン'),
    -> (8, '柳田こうたの日報　DBレッスン'),
    -> (9, '井上せいしろうの日報　DBレッスン'),
    -> (10, '及川けいこの日報　DBレッスン'),
    -> (11, '関みくの日報　DBレッスン'),
    -> (12, '阿部たくとの日報　DBレッスン'),
    -> (13, '穂刈きょうかの日報　DBレッスン'),
    -> (14, '多田としのりの日報　DBレッスン'),
    -> (15, '安藤よしきの日報　DBレッスン'),
    -> (16, '本橋しょうこの日報　DBレッスン');

Q4

MariaDB [db_lesson]> update people
    -> set department_id = case person_id
    -> when 1 then 1
    -> when 2 then 2
    -> when 3 then 3
    -> when 4 then 4
    -> when 6 then 5
    -> end;


MariaDB [db_lesson]> update people
    -> set department_id = case person_id
    -> when 7 then 1
    -> when 8 then 1
    -> when 9 then 1
    -> when 10 then 2
    -> when 11 then 2
    -> when 12 then 2
    -> when 13 then 2
    -> when 14 then 3
    -> when 15 then 4
    -> when 16 then 5
    -> end
    -> where person_id in (7,8,9,10,11,12,13,14,15,16);



