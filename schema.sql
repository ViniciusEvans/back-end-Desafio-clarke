CREATE database Clarke_Energia;
CREATE TABLE clients(
    id serial primary key,
    name text not null,
    email text not null unique,
    hash_password text not null
);
CREATE TABLE interprises (
	id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  logo TEXT NOT NULL,
  address TEXT NOT NULL,
  costs TEXT NOT NULL,
  min_demand INTEGER not null,
  clients INTEGER not null,
  rate INTEGER not null
);
INSERT INTO interprises (name,logo,address,costs,min_demand,clients,rate)
VALUES
  ('Nisl Sem Corporation','#f48684','931-6792 Vitae Rd.','374,140.18',2350,13417,5),
  ('Morbi Quis Ltd','#82e5aa','Ap #556-5165 Malesuada Street','237,231.81',3136,8555,1),
  ('Nunc Lectus Pede LLC','#fc341e','P.O. Box 332, 2485 Mauris Avenue','154,758.20',949,122,1),
  ('Mollis Lectus Pede Industries','#7387d6','Ap #992-8163 Sem Av.','580,873.24',7041,10143,1),
  ('Nec Mauris Limited','#78dbdb','Ap #742-1167 Dolor. Rd.','557,672.76',2938,27819,0),
  ('Ligula Aenean Corporation','#c25ae8','876-7673 Vivamus Road','197,781.50',2357,41792,1),
  ('Morbi Vehicula LLP','#11d645','Ap #449-6742 Eget Rd.','853,282.54',4726,24010,0),
  ('Lobortis Risus LLC','#f7f0a3','Ap #634-230 Orci. Avenue','166,694.86',3631,40784,3),
  ('Ante Lectus LLP','#82f282','792-543 Lorem Avenue','577,813.44',9352,49473,1),
  ('Pellentesque PC','#563ba5','P.O. Box 815, 9270 Enim St.','728,303.25',2788,32034,2);
  INSERT INTO interprises (name,logo,address,costs,min_demand,clients,rate)
VALUES
  ('Risus Associates','#8bb5e0','711-8712 Metus Street','712,799.19',3645,19316,5),
  ('Felis Nulla Associates','#d161ed','P.O. Box 560, 5211 Purus. St.','457,309.85',5587,23287,2),
  ('Dictum Phasellus Industries','#511ebf','947-4621 Amet Avenue','765,117.69',4107,26206,4),
  ('Id Ante Corporation','#c7ed87','735-3843 Non, Rd.','191,020.45',4057,31141,1),
  ('Consectetuer Rhoncus Foundation','#f2ef35','8576 Ante, Street','511,172.09',2026,18437,3),
  ('Amet Risus Donec Ltd','#0b28ba','621-4020 Vitae, Rd.','967,381.93',2965,1741,1),
  ('Odio Associates','#3027ba','104-4346 Risus Ave','93,971.48',605,20188,4),
  ('Ipsum Phasellus Company','#35bc03','Ap #649-3925 Sed St.','255,964.57',8210,42750,3),
  ('Curabitur Ut Inc.','#44c9a1','Ap #401-3724 Urna. Avenue','119,183.82',4596,16097,2),
  ('Eros Nam Consequat Company','#1737d6','Ap #136-2762 Vel Street','636,946.46',9622,17080,1);
  INSERT INTO interprises (name,logo,address,costs,min_demand,clients,rate)
VALUES
  ('Vel Arcu Curabitur Ltd','#dee88b','Ap #303-6269 Suscipit Road','366,353.12',1986,46274,1),
  ('Donec Tincidunt Industries','#978af7','160-6911 Mollis. Street','68,463.82',9143,19569,0),
  ('Nisi Sem Institute','#7fef9d','959-2151 Eu Street','910,280.49',820,1466,3),
  ('Justo Nec Ante Corporation','#73f4ec','1076 Urna. Street','968,390.71',6986,40781,2),
  ('Pede Suspendisse Dui LLC','#d613b8','P.O. Box 945, 8157 Ultricies Avenue','794,586.27',2048,48557,3),
  ('Sed Eget Inc.','#a9f9e8','390-2330 Euismod Road','868,499.06',1252,7457,1),
  ('Eget Associates','#87bbff','Ap #499-531 Posuere Ave','791,425.65',806,18956,2),
  ('Nec Tellus Corporation','#026d6d','Ap #393-5446 Aliquam Av.','95,537.68',2315,24329,1),
  ('Sollicitudin Orci Sem Associates','#6fea56','Ap #615-184 Eu Road','13,151.84',4267,18328,3),
  ('Ut Nec Urna LLC','#56d88c','P.O. Box 481, 5987 Amet, Street','792,389.59',5242,22174,5);
  INSERT INTO interprises (name,logo,address,costs,min_demand,clients,rate)
VALUES
  ('Risus Donec Corporation','#7402ff','310-9258 Enim Av.','124,411.64',644,30732,1),
  ('Mauris Corporation','#001393','Ap #562-7460 Et, St.','942,441.39',7610,29738,4),
  ('Porttitor Scelerisque Ltd','#7460f7','348-9628 Et, Road','344,478.88',1114,4259,1),
  ('Non Ante Bibendum Incorporated','#105282','912-8455 Sociis Avenue','905,206.71',8713,14365,1),
  ('Neque Sed Ltd','#a463dd','244-378 Donec St.','839,218.56',147,18963,1),
  ('Interdum Nunc Sollicitudin Foundation','#ac0bdd','4489 Ut Avenue','353,659.96',1835,37751,5),
  ('Feugiat Placerat Velit Ltd','#d1a82e','Ap #844-3378 Integer Rd.','9,936.97',250,9612,1),
  ('Ligula LLC','#f7b4ce','Ap #430-9663 Euismod Avenue','851,142.83',6898,35548,2),
  ('Pellentesque Eget Dictum Incorporated','#1ff2f2','Ap #504-5233 Enim, St.','695,640.25',3893,8518,4),
  ('Duis Incorporated','#091b75','P.O. Box 335, 4344 Quis Rd.','159,087.16',5758,19838,5);
  INSERT INTO interprises (name,logo,address,costs,min_demand,clients,rate)
VALUES
  ('Nisl Limited','#e29816','Ap #549-3859 Massa. St.','597,668.47',3915,20050,4),
  ('Scelerisque Sed Sapien Associates','#aefcd9','Ap #925-7775 Ante Road','312,725.38',8068,18122,5),
  ('Orci Luctus Limited','#e88d9c','P.O. Box 346, 3389 Consectetuer Road','203,298.19',756,41013,3),
  ('Lacus Cras Interdum Industries','#e4f486','510-3387 Curae Avenue','16,111.23',9685,2782,4),
  ('Imperdiet Non Corporation','#bdea8c','797-8635 Felis Av.','277.58',5372,31986,2),
  ('Bibendum Sed Limited','#ed97af','634-6329 Nunc St.','212,075.11',1135,45842,5),
  ('Amet Consectetuer Corporation','#fcb57b','1418 Risus, Rd.','253,513.48',9001,30113,4),
  ('Tellus Suspendisse Incorporated','#e8a4d6','Ap #348-9492 Fermentum St.','72,470.90',5041,11932,5),
  ('Aliquam LLP','#fc79cc','P.O. Box 574, 8829 Ac Street','190,937.08',8647,39379,1),
  ('Lacus Quisque Purus LLC','#821cdb','P.O. Box 716, 5489 Neque St.','38,539.04',5649,4853,4);
  INSERT INTO interprises (name,logo,address,costs,min_demand,clients,rate)
VALUES
  ('Odio Sagittis PC','#80d3f7','402-9700 Sit Rd.','502,161.23',6522,44623,3),
  ('Aliquam Adipiscing Institute','#5ecbd1','Ap #761-2466 Aliquet Avenue','564,968.01',6691,28323,4),
  ('At Arcu LLC','#8bb501','Ap #458-7338 Vitae, Street','248,339.58',1169,21481,2),
  ('Aenean Gravida Nunc Associates','#f26aae','218-7557 Et Ave','551,438.10',9698,37295,5),
  ('Nulla LLP','#3b9aaf','105-8767 Justo. Road','646,933.89',2868,43420,4),
  ('Per Conubia Associates','#24ccb8','P.O. Box 419, 7974 Arcu. Av.','100,527.66',5604,18478,2),
  ('Dui Nec Tempus Consulting','#0adbd0','5403 Erat Av.','501,081.45',80,44758,4),
  ('Proin Sed Industries','#61d8b2','P.O. Box 737, 5015 Neque. Street','320,719.88',8323,18466,3),
  ('Malesuada Ut Inc.','#acfc62','616-9084 Sed, Av.','134,993.34',6016,16408,4),
  ('Metus Vivamus Euismod Limited','#48aab5','276-7526 Libero. Ave','185,975.71',1784,14769,2);
  INSERT INTO interprises (name,logo,address,costs,min_demand,clients,rate)
VALUES
  ('Mattis LLC','#21c6e0','5240 Adipiscing Street','331,078.48',557,13566,2),
  ('Ridiculus PC','#b50519','Ap #518-7703 Sollicitudin St.','242,592.38',5133,33685,4),
  ('Aenean Sed Corp.','#d056e2','184-7181 Fermentum Rd.','368,746.97',9657,43567,1),
  ('Tincidunt Dui LLC','#f7ad3d','714-5109 Magna Av.','41,008.31',7841,37401,2),
  ('Et Consulting','#502aea','P.O. Box 839, 7951 Neque Av.','728,536.68',8883,18605,4),
  ('Odio Sagittis Inc.','#61e8a9','404-8807 Nulla Avenue','53,776.85',9254,33081,3),
  ('Suspendisse Sagittis Corp.','#46ddf4','180-3739 Tempus Road','941,683.57',4666,27009,4),
  ('Neque Vitae Industries','#4bdb3b','Ap #477-4214 Arcu. Avenue','1,603.85',6416,17610,0),
  ('Commodo Auctor Ltd','#a0e7f7','1270 Placerat Street','690,585.14',395,34331,4),
  ('Elit Sed Consequat Corporation','#6abbc4','Ap #920-9336 Donec Rd.','768,443.85',3909,43513,2);
  INSERT INTO interprises (name,logo,address,costs,min_demand,clients,rate)
VALUES
  ('Aenean Gravida Nunc Foundation','#e8a4dd','Ap #469-9344 Nascetur Road','35,505.33',5356,4056,0),
  ('Odio Sagittis Semper Institute','#b75b2d','427 Cras Road','992,885.45',3326,2461,4),
  ('Neque In Ornare Ltd','#cf77f4','P.O. Box 230, 7788 Pretium St.','651,670.44',5941,31159,4),
  ('A Facilisis Limited','#e0b13a','2736 Risus. Street','500,244.88',8310,20426,2),
  ('Feugiat LLC','#78e288','Ap #984-7828 Consequat St.','983,641.33',62,33440,4),
  ('Quis Massa Ltd','#d639d6','947-2088 A St.','277,342.71',5918,432,0),
  ('Sed Nec Inc.','#24adab','774-7889 Enim Avenue','818,570.34',5254,44701,4),
  ('Diam Proin Inc.','#ba5b28','Ap #551-4297 Eros. Avenue','228,198.92',9111,37842,1),
  ('Dapibus Rutrum Justo Corp.','#9546fc','563-7431 Tortor Avenue','137,423.05',7695,23276,2),
  ('Nec Eleifend LLP','#d1b14b','270-4232 Nunc Rd.','322,724.17',1959,7240,1);
  INSERT INTO interprises (name,logo,address,costs,min_demand,clients,rate)
VALUES
  ('Mollis Nec Ltd','#a58bd6','587-6640 Vitae Road','544,739.15',3921,2751,3),
  ('Eget Laoreet PC','#41dba3','319-193 Arcu Ave','822,808.55',7240,24713,1),
  ('Amet Ante PC','#7fb2d8','Ap #615-4999 Laoreet, Rd.','558,395.37',2013,30061,4),
  ('Mauris Vestibulum Company','#30d333','Ap #450-2045 Magna. Rd.','341,032.57',6609,32564,4),
  ('Non Nisi Aenean LLC','#ea88ef','4410 Duis Avenue','664,051.38',9369,47033,0),
  ('Lobortis Consulting','#d97ee5','P.O. Box 671, 5193 Augue Street','164,181.89',1776,41404,2),
  ('Nam Nulla Associates','#edab95','Ap #793-8803 Porta Ave','281,924.06',3245,748,5),
  ('Lacus Ltd','#137384','188-7898 Vel, Ave','608,952.97',9787,19550,1),
  ('Morbi Vehicula Ltd','#a7c8e8','Ap #376-5904 Auctor Av.','971,332.29',9114,5024,2),
  ('Dis Parturient Montes LLC','#0a960c','Ap #119-8866 Tortor, Ave','106,112.43',8623,33387,5);
  INSERT INTO interprises (name,logo,address,costs,min_demand,clients,rate)
VALUES
  ('Ac LLP','#09844f','410-3028 Donec Ave','440,997.87',5278,33519,4),
  ('Nisi Dictum Foundation','#ef67e2','P.O. Box 524, 1511 A, Street','901,379.16',327,39244,4),
  ('Maecenas Ornare Associates','#a9b3f2','Ap #184-2675 Diam Avenue','245,847.92',2210,5635,1),
  ('Tempor Corporation','#9c1aed','6576 Aliquam Av.','443,436.03',4547,45611,4),
  ('Arcu Aliquam Ultrices Foundation','#f0adff','P.O. Box 404, 825 Dolor Street','520,432.52',22,10242,2),
  ('Consequat Ltd','#2a69dd','Ap #965-4384 Morbi St.','3,179.14',5894,2418,3),
  ('Mauris Magna Foundation','#0f0ccc','559-5205 Ornare, Avenue','107,061.99',4241,4010,4),
  ('Cras Dolor Ltd','#e81e10','440-9115 Commodo Ave','754,081.59',2591,3095,3),
  ('Tincidunt Nunc Ltd','#f29160','2085 Tincidunt Rd.','567,949.10',6797,38327,1),
  ('Dapibus Gravida Aliquam Industries','#f46518','661-5630 Ut Street','143,727.21',1292,25677,2);

