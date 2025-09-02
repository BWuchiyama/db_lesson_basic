
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
