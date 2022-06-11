use Project

--INSERT

INSERT INTO Biblioteka
VALUES (1111)

--Parent Table
Insert into Personi
Values (2000,'Arb','Rudi','05.06.1999')
Insert into Personi
Values (2001,'Buna','Hashimi','07.06.2000')
Insert into Personi
Values (2002,'Fjolla', 'Citaku','09.12.2000')
Insert into Personi
Values (2003,'Dona','Rugova','05.06.1999')
Insert into Personi
Values (2004,'Dion','Konjufca','06.12.2000')
Insert into Personi
Values (2005,'Alea','Kurti','01.12.1999')
Insert into Personi
Values (2006,'Sara','Shala','10.11.1999')
Insert into Personi
Values (2007,'Ari','Gashi','07.01.2000')
Insert into Personi
Values (2008,'Drita','Dobruna','10.02.2000')
Insert into Personi
Values (2009,'Denis','Vokshi','09.03.2003')

--Staff
INSERT INTO Personi
VALUES (120,'Edi','Bokshi','08.05.2002') 
INSERT INTO Personi
VALUES (121,'Nol','Musa','12.11.2002')
INSERT INTO Personi
VALUES (122,'Eris','Beselica','06.12.2000')
Insert into Personi
Values (123,'Leke','Zeqiri','01.05.1998')

--Parent Table
Insert into Email
Values(2100,'ar51896@ubt-uni.net',2000) 
Insert into Email
Values(2101,'bh51896@ubt-uni.net',2001)
Insert into Email
Values(2102,'fc51896@ubt-uni.net',2002)
Insert into Email
Values(2103,'dr51896@ubt-uni.net',2003)
Insert into Email
Values(2104,'dk51896@ubt-uni.net',2004)
Insert into Email
Values(2105,'ak51896@ubt-uni.net',2005)
Insert into Email
Values(2106,'ssh51896@ubt-uni.net',2006)
Insert into Email
Values(2107,'ag51896@ubt-uni.net',2007)
Insert into Email
Values(2108,'dd51896@ubt-uni.net',2008)
Insert into Email
Values(2109,'dv51896@ubt-uni.net',2009)

--Parent Table
Insert Into Klient
Values(2000,'1564895725','Po','Prishtine','Tring Smajli','10000',1111,'1',2100)
Insert Into Klient
Values(2001,'1564844525','Po','Peje','Haxhi Zeka','30000',1111,'5',2101)
Insert Into Klient
Values(2002,'1588795725','Jo','Prishtine','Rruga A','10000',1111,'14',2102)
Insert Into Klient
Values(2003,'312595725','Po','Peje','Oso Kuka','30000',1111,'8',2103)
Insert Into Klient
Values(2004,'1997895725','Jo','Gjakove','Carshia e Vjeter','40000',1111,'90',2104)
Insert Into Klient
Values(2005,'1564895145','Po','Peje','Haxhi Zeka','30000',1111,'23',2105)
Insert Into Klient
Values(2006,'18648975','Jo','Prishtine','Rruga C','10000',1111,'44',2106)
Insert Into Klient
Values(2007,'756485725','Po','Prishtine','Rruga B','10000',1111,'18',2107)
Insert Into Klient
Values(2008,'956489575','Po','Peje','Oso Kuka','30000',1111,'14',2108)
Insert Into Klient
Values(2009,'887489525','Po','Prizren','Ibrahim Rugova','50000',1111,'11',2109)

--Parent Table
Insert into Telefoni
Values ('049438424','Iphone X')
Insert into Telefoni
Values ('045112233','Iphone 12')
Insert into Telefoni
Values ('049455424','Iphone 13')
Insert into Telefoni
Values ('049431224','A7')
Insert into Telefoni
Values ('043127634','A6') --drop this and the rest or keep them for the future!
Insert into Telefoni
Values ('049381254','Iphone X')
Insert into Telefoni
Values ('049997224','Iphone 8 plus')
Insert into Telefoni
Values ('0454384414','Iphone 12 pro max')
Insert into Telefoni
Values ('049438424','LG')
Insert into Telefoni
Values ('048438424','Huawei')

--Parent Table
Insert into Sektori
Values(3001,'Poezi')
Insert into Sektori
Values(3002,'Anatomi')
Insert into Sektori
Values(3003,'Shkencave Politike')
Insert into Sektori
Values(3004,'Shkencave Ushqimore')
Insert into Sektori
Values(3005,'Gjuhe Angleze')
Insert into Sektori
Values(3006,'Gjuhe Shqipe')
Insert into Sektori
Values(3007,'Histori')
Insert into Sektori
Values(3008,'Antropologji')
Insert into Sektori
Values(3009,'Arkeologji')
Insert into Sektori
Values(3010,'Muzike')

Insert Into Punonjes
Values(120,'Punonjes i thjeshte','250€',1111,121,3005)
Insert Into Punonjes
Values(121,'Menaxher','500€',1111,121,3003) 
Insert Into Punonjes
Values(122,'Kontrollues i stockut','330€',1111,121, null)
Insert Into Punonjes
Values(123,'Organizator i eventeve','600€',1111,121, null)

Insert into Telefoni_i_Punetorit
Values('049438424',120) 
Insert into Telefoni_i_Punetorit
Values('045112233',121)
Insert into Telefoni_i_Punetorit
Values('049438424',122)
Insert into Telefoni_i_Punetorit
Values('049455424',123)

Insert into Kartela_identifikuese
Values(2000,'11215189','Arb','Rudi')
Insert into Kartela_identifikuese
Values(2001,'18515189','Buna','Hashimi')
Insert into Kartela_identifikuese
Values(2002,'11215179','Fjolla','Citaku')
Insert into Kartela_identifikuese
Values(2003,'11314189','Dona','Rugova')
Insert into Kartela_identifikuese
Values(2004,'11274189','Dion','Konjufca')
Insert into Kartela_identifikuese
Values(2005,'112144789','Alea','Kurti')
Insert into Kartela_identifikuese
Values(2006,'11215189','Sara','Shala')
Insert into Kartela_identifikuese
Values(2007,'14215189','Ari','Gashi')
Insert into Kartela_identifikuese
Values(2008,'132215189','Drita','Dobruna')
Insert into Kartela_identifikuese
Values(2009,'11765189','Denis','Vokshi')

Insert into Libri
Values('0199535566','Pride and Prejudice','Jane Austen','44.70€',1111,3005)
Insert into Libri
Values('000355130','The Complete Poems of Emily Dickinson','Emily Dickinson',null,1111,3005)
Insert into Libri
Values('0963113534','The Raven','Edgar Allan Poe',null,1111,3001)
Insert into Libri
Values('1846149541','The Poetry Pharmacy','William Sieghart',null,1111,3001)
Insert into Libri
Values('0393317552','Guns, Germs, and Steel',' Jared M. Diamond',null,1111,3007)
Insert into Libri
Values('97800623','Sapiens: A Brief History of Humankind',' Yuval Harari ',null,1111,3007)
Insert into Libri
Values('0393314677','Republic','Plato',null,1111,3007)
Insert into Libri
Values('97801404','The Social Contract','Jean-Jacques Rousseau',null,1111,3003)
Insert into Libri
Values('1984801198','A Little Devil in America','Hanif Abdurraqib',null,1111,3009)
Insert into Libri
Values('60791738','Music Stories From the Cosmic Barrio','Betto Arcos',null,1111,3009)
Insert into Libri
Values('0143035002','Anna Karenina ','Leo Tolstoy',null,1111,3005)
Insert into Libri
Values('0060935464','To Kill a Mockingbird ','Harper Lee',null,1111,3005)

--Intertwined table 
Insert into Klienti_merr_librin
Values(2000,'1984801198', '03.21.2021', '05.20.2021')
Insert into Klienti_merr_librin
Values(2000,'60791738', '05.21.2021', '06.20.2021')
Insert into Klienti_merr_librin
Values(2001,'0393314677', '11.19.2021', '01.20.2022')
Insert into Klienti_merr_librin
Values(2000,'1846149541', '12.16.2021', '03.20.2022')
Insert into Klienti_merr_librin
Values(2001,'1846149541', '06.15.2021', '07.20.2021')
Insert into Klienti_merr_librin
Values(2000,'000355130', '05.12.2021', '09.15.2021')
Insert into Klienti_merr_librin
Values(2001,'1984801198', '03.01.2021', '06.01.2021')
Insert into Klienti_merr_librin
Values(2000,'0393314677', '05.11.2021', '06.11.2021')
Insert into Klienti_merr_librin
Values(2004,'0963113534', '06.11.2021', '06.20.2021')
Insert into Klienti_merr_librin
Values(2000,'0963113534', '09.22.2021', '12.17.2021')

Insert into Klienti_merr_librin
Values(2005,'0199535566', '09.23.2021', '10.28.2021')
Insert into Klienti_merr_librin
Values(2000,'0199535566', '09.28.2021', '12.21.2021')
Insert into Klienti_merr_librin
Values(2005,'0393317552', '03.24.2021', '04.26.2021')
Insert into Klienti_merr_librin
Values(2000,'97800623', '01.12.2021', '02.23.2021')
Insert into Klienti_merr_librin
Values(2006,'1846149541', '01.21.2021', '05.21.2021')
Insert into Klienti_merr_librin
Values(2007,'0963113534', '01.21.2021', '02.23.2021')
Insert into Klienti_merr_librin
Values(2008,'0393317552', '01.21.2021', '09.26.2021')
Insert into Klienti_merr_librin
Values(2009,'0963113534', '02.17.2021', '03.25.2021')
Insert into Klienti_merr_librin
Values(2009,'1846149541', '02.18.2021', '03.25.2021')
Insert into Klienti_merr_librin
Values(2003,'60791738', '06.26.2021', '07.24.2021')

Insert into Klienti_merr_librin
Values(2009,'0143035002', '06.16.2021', '07.24.2021')
Insert into Klienti_merr_librin
Values(2003,'0060935464', '06.06.2021', '07.24.2021')
Insert into Klienti_merr_librin
Values(2004,'0143035002', '07.15.2021', '07.24.2021')
Insert into Klienti_merr_librin
Values(2005,'0060935464', '03.12.2021', '04.24.2021')
Insert into Klienti_merr_librin
Values(2006,'0143035002', '03.19.2021', '05.24.2021')


--Parent Table
Insert Into Shtepia_botuese
Values(6000,'Tin House Books','US','Liber',1111)
Insert Into Shtepia_botuese
Values(6001,'Europa Editions','US','Reviste',1111)
Insert Into Shtepia_botuese
Values(6002,'Farshore Books','US','Liber',1111)
Insert Into Shtepia_botuese
Values(6003,'Turner Publishing','US','Liber',1111)
Insert Into Shtepia_botuese
Values(6004,'Dukagjini Publishing','KS','Liber',1111)
Insert Into Shtepia_botuese
Values(6005,'Copper Canyon Press','US','Liber',1111)
Insert Into Shtepia_botuese
Values(6006,'Crown Publishing','US','Reviste',1111)
Insert Into Shtepia_botuese
Values(6007,'Universiteti i Prishtines','KS','Material Akademik',1111)
Insert Into Shtepia_botuese
Values(6008,'Chicago Review Press','US','Liber',1111)
Insert Into Shtepia_botuese
Values(6009,'Future Tense Books','US','Liber',1111)


--Parent Table
Insert Into Donacionet
Values(5000,'ICK',500,'12.05.2021')
Insert Into Donacionet
Values(5001,'USAID',1000,'08.12.2021')
Insert Into Donacionet
Values(5002,'Dukagjini',6000,'02.11.2021')
Insert Into Donacionet
Values(5003,'ProCredit Bank',6000,'07.08.2021')
Insert Into Donacionet
Values(5004,'PBA',1500,'12.03.2022')
Insert Into Donacionet
Values(5005,'AAB',3000,'05.02.2022')
Insert Into Donacionet
Values(5006,'UP',2000,'05.09.2021')
Insert Into Donacionet
Values(5007,'UBT',1000,'03.16.2022')
Insert Into Donacionet
Values(5008,'Komuna e Prishtine',3000,'03.06.2022')
Insert Into Donacionet
Values(5009,'Komuna e Pejes',2500,'03.03.2022')

Insert Into Donacionet
Values(5010,'Komuna e Prizrenit',1500,'08.03.2022')
Insert Into Donacionet
Values(5011,'Komuna e Gilanit',2500,'07.03.2022')
Insert Into Donacionet
Values(5012,'Komuna e Gjakoves',2800,'06.03.2022')
Insert Into Donacionet
Values(5013,'Komuna e Lipjanit',2100,'05.03.2022')
Insert Into Donacionet
Values(5014,'Komuna e Malisheves',2000,'04.03.2022')
Insert Into Donacionet
Values(5015,'Komuna e Kamenices',2550,'03.03.2022')
Insert Into Donacionet
Values(5016,'Komuna e Decanit',3000,'02.03.2022')
Insert Into Donacionet
Values(5017,'Komuna e Istogut',1200,'01.03.2022')
Insert Into Donacionet
Values(5018,'Leke Botime',1500,'03.23.2022')
Insert Into Donacionet
Values(5019,'Shtepia Botuese',500,'03.13.2022')

Insert Into Donacionet
Values(5020,'Teb Bank',300,'01.07.2022')
Insert Into Donacionet
Values(5021,'BKT',700,'08.12.2022')
Insert Into Donacionet
Values(5022,'Universum',800,'01.06.2022')
Insert Into Donacionet
Values(5023,'Blackbird',500,'04.01.2022')
Insert Into Donacionet
Values(5024,'Toka',1000,'06.23.2021')
Insert Into Donacionet
Values(5025,'INPO',1500,'02.08.2022')
Insert Into Donacionet
Values(5026,'ORCA',600,'03.03.2022')
Insert Into Donacionet
Values(5027,'OJQ ZANA',600,'03.21.2022')
Insert Into Donacionet
Values(5028,'Horizonti 21',200,'04.02.2022')
Insert Into Donacionet
Values(5029,'EdGuard',300,'03.28.2022')
Insert Into Donacionet
Values(5030,'NVO AKTIV',500,'03.16.2022')


--Parent Table
Insert Into Donacion_shteteror
Values(5008,'Zgjerimi i bibliotekave')
Insert Into Donacion_shteteror
Values(5009,'Permiresim i kushteve')
Insert Into Donacion_shteteror
Values(5010,'Zgjerimi i bibliotekave')
Insert Into Donacion_shteteror
Values(5011,'Permiresim i kushteve')
Insert Into Donacion_shteteror
Values(5012,'Zgjerimi i bibliotekave')
Insert Into Donacion_shteteror
Values(5013,'Rritje e stokut')
Insert Into Donacion_shteteror
Values(5014,'Permiresim i kushteve')
Insert Into Donacion_shteteror
Values(5015,'Rritje e stokut')
Insert Into Donacion_shteteror
Values(5016,'Perkrahje e ngjarjeve festive')
Insert Into Donacion_shteteror
Values(5017,'Perkrahje e ngjarjeve festive')

--Parent Table
Insert Into Donacion_individual
Values(5005,'32005','Prishtine')
Insert Into Donacion_individual
Values(5006,'31705','Prishtine')
Insert Into Donacion_individual
Values(5007,'15335','Prishtine')
Insert Into Donacion_individual
Values(5001,'82005','US')
Insert Into Donacion_individual
Values(5002,'32035','Prishtine')
Insert Into Donacion_individual
Values(5018,'63095','Prishtine')
Insert Into Donacion_individual
Values(5019,'74095','Prishtine')
Insert Into Donacion_individual
Values(5020,'13295','Prishtine')
Insert Into Donacion_individual
Values(5021,'74295','Prishtine')
Insert Into Donacion_individual
Values(5022,'45295','Prishtine')


--Parent Table
Insert Into Donacion_nga_OJQ
Values(5000,'Rritje e stokut')
Insert Into Donacion_nga_OJQ
Values(5004,'Promovim')
Insert Into Donacion_nga_OJQ
Values(5023,'Perkrahje e ngjarjeve')
Insert Into Donacion_nga_OJQ
Values(5024,'Rritje e stokut')
Insert Into Donacion_nga_OJQ
Values(5025,'Permiresim i kushteve')
Insert Into Donacion_nga_OJQ
Values(5026,'Promovim')
Insert Into Donacion_nga_OJQ
Values(5027,'Permiresim i kushteve')
Insert Into Donacion_nga_OJQ
Values(5028,'Promovim')
Insert Into Donacion_nga_OJQ
Values(5029,'Permiresim i kushteve')
Insert Into Donacion_nga_OJQ
Values(5030,'Promovim')

--Parent Table
Insert Into Ngjarje
Values(7500,'Promovim i librit',1111)
Insert Into Ngjarje
Values(7501,'Movie night',1111)
Insert Into Ngjarje
Values(7502,'Game night',1111)
Insert Into Ngjarje
Values(7503,'Reading night',1111)
Insert Into Ngjarje
Values(7504,'Story time',1111)
Insert Into Ngjarje
Values(7505,'Music night',1111)
Insert Into Ngjarje
Values(7506,'Writing club',1111)
Insert Into Ngjarje
Values(7507,'Research club',1111)
Insert Into Ngjarje
Values(7508,'First Aid club',1111)
Insert Into Ngjarje
Values(7509,'News club',1111)
Insert Into Ngjarje
Values(7510,'Dancing club',1111)

--Intertwined Table
Insert Into Realizohen
Values(7500,5000)
Insert Into Realizohen
Values(7501,5001)
Insert Into Realizohen
Values(7501,5002)
Insert Into Realizohen
Values(7502,5000)
Insert Into Realizohen
Values(7502,5001)
Insert Into Realizohen
Values(7502,5002)
Insert Into Realizohen
Values(7503,5002)
Insert Into Realizohen
Values(7503,5003)
Insert Into Realizohen
Values(7504,5003)
Insert Into Realizohen
Values(7504,5004)

Insert Into Realizohen
Values(7504,5005)
Insert Into Realizohen
Values(7505,5005)
Insert Into Realizohen
Values(7505,5006)
Insert Into Realizohen
Values(7506,5007)
Insert Into Realizohen
Values(7507,5003)
Insert Into Realizohen
Values(7508,5008)
Insert Into Realizohen
Values(7509,5009)
Insert Into Realizohen
Values(7509,5001)
Insert Into Realizohen
Values(7508,5009)
Insert Into Realizohen
Values(7509,5003)

Insert Into Realizohen
Values(7510,5001)
Insert Into Realizohen
Values(7510,5002)
Insert Into Realizohen
Values(7510,5003)
Insert Into Realizohen
Values(7510,5004)
Insert Into Realizohen
Values(7510,5005)

--Intertwined Table
Insert Into Mbikqyret
Values(120,7500,5000)
Insert Into Mbikqyret
Values(120,7502,5000)
Insert Into Mbikqyret
Values(121,7501,5001)
Insert Into Mbikqyret
Values(120,7502,5001)
Insert Into Mbikqyret
Values(123,7509,5001)
Insert Into Mbikqyret
Values(120,7501,5002)
Insert Into Mbikqyret
Values(120,7502,5002)
Insert Into Mbikqyret
Values(123,7503,5002)
Insert Into Mbikqyret
Values(120,7503,5003)
Insert Into Mbikqyret
Values(122,7504,5003)

Insert Into Mbikqyret
Values(122,7509,5009)
Insert Into Mbikqyret
Values(121,7507,5003)
Insert Into Mbikqyret
Values(120,7509,5003)
Insert Into Mbikqyret
Values(121,7504,5004)
Insert Into Mbikqyret
Values(121,7504,5005)
Insert Into Mbikqyret
Values(121,7505,5005)
Insert Into Mbikqyret
Values(121,7505,5006)
Insert Into Mbikqyret
Values(121,7506,5007)
Insert Into Mbikqyret
Values(121,7508,5008)
Insert Into Mbikqyret
Values(121,7508,5009)

Insert Into Mbikqyret
Values(121,7510,5001)
Insert Into Mbikqyret
Values(121,7510,5002)
Insert Into Mbikqyret
Values(121,7510,5003)
Insert Into Mbikqyret
Values(121,7510,5004)
Insert Into Mbikqyret
Values(121,7510,5005)

--DELETE
delete from Klienti_merr_librin where ISBN=0143035002
delete from Mbikqyret where ID_Donacioni=5005
delete from Telefoni where Nr_i_telefonit ='043127634'
delete from Telefoni where Nr_i_telefonit ='049381254'
delete from Telefoni where Nr_i_telefonit ='049997224'
delete from Telefoni where Nr_i_telefonit ='0454384414'
delete from Telefoni where Nr_i_telefonit ='049438424'
delete from Telefoni where Nr_i_telefonit ='048438424'
delete from Donacion_nga_OJQ where Fondacioni='Promovim'
delete from Sektori where Tema='Muzike'

--UPDATE
Update Personi set Ditelindja ='09.21.2002' where Emri='Arb' 
Update Personi set Ditelindja='12.05.2001' where Emri='Dona'
Update Personi set Mbiemri='Bokshi' where ID=2009
Update Personi set Ditelindja='03.16.2002' where ID=123
Update Email set Email='db51896@ubt-uni.net' where Email_ID=2109
Update Punonjes set Menaxheri=null where Punonjesi_ID=121
Update Punonjes set Roli='Kontrollues i stokut' where Punonjesi_ID=122
Update Punonjes set Rroga='350€' where Punonjesi_ID=122
Update Kartela_identifikuese set Mbiemri='Bokshi' where Klient_ID=2009
Update Kartela_identifikuese set ID_Kartela='18815189' where Klient_ID=2008

Update Libri set Sektori= 3001 where ISBN='000355130'
Update Libri set Cmimi= null where ISBN='199535566'
Update Donacionet set Shuma=1000 where ID_Donacioni=5000  
Update Donacionet set Shuma=1200 where ID_Donacioni=5001 
Update Donacionet set Shuma=5000 where ID_Donacioni=5002 
Update Donacionet set Shuma=1200 where ID_Donacioni=5003 
Update Donacionet set Shuma=800 where ID_Donacioni=5004 
Update Donacionet set Shuma=1000 where ID_Donacioni=5005
Update Libri set Sektori=3003 where ISBN='0393314677'
Update Donacion_shteteror set Projekti='Rritje e stokut' where ID_Donacioni=5017

Update Punonjes set Rroga=250 where Punonjesi_ID=120
Update Punonjes set Rroga=800 where Punonjesi_ID=121
Update Punonjes set Rroga=400 where Punonjesi_ID=122
Update Punonjes set Rroga=600 where Punonjesi_ID=123
