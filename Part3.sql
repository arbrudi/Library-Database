use Project

/* 1) Të krijoni min. 8 query të thjeshta (4 për student), të realizohen vetëm me një relacion (tabelë)  */

--1. Te shfaqet Emri, Mbiemri, Ditelindja dhe Mosha nga tabela Personi (Arb Rudi)
select emri,mbiemri, Ditelindja, DATEDIFF(Year, Ditelindja,GetDate()) as Mosha
from Personi

--2. Te shfaqet Shuma e donimit i te gjithe Donatoreve qe fillojne me shkronjen O, U dhe nga Komunat qe fillojne me shkronjen P. (Arb Rudi)
Select Donatori, Shuma
from Donacionet
where Donatori LIKE 'O%' or Donatori LIKE 'Komuna _ P%' or Donatori LIKE 'U_%';

/*3. Te shfaqen TOP 15 e donatoreve nga tabela Donacionet ku data e donimit fillon prej '05.09.2021' dhe mbaron me '03.16.2022', 
po ashtu Shuma duhet te jete me e madhe ose e barabarte me 1000€ (Arb Rudi)*/
Select TOP 15 *
From Donacionet
Where Data_e_donimit Between '05.09.2021' and '03.16.2022' and Shuma >= 1000
Order by Shuma ASC

--4. Te shfaqen te gjitha te dhenat nga tabela Libri pervec atyre qe jane ne Sektorin 3001 dhe mos te paraqitet libri qe ISBN e tij eshte '393317552' (Arb Rudi)
Select *
From Libri
Where NOT ISBN= '393317552' and NOT Sektori='3001'

--5 Te shfaqen te gjitha te dhenat nga tabela Personi qe te shfaqen vetem personat te cilet ju fillon emrin me A dhe B. (Buna Hashimi)
Select *
From Personi
Where Emri LIKE 'A%' or EMRI LIKE 'B%'
order by ID DESC

--6 Te shfaqen qyteti, Ruga, Zip_Kodi, Leternjoftimi dhe te dhenat nga tabela Klient per vetem ata qe jetojne ne Prishtine. (Buna Hashimi)
Select  qyteti, Rruga, Zip_Kodi, Leternjoftimi
From Klient
where zip_kodi = '10000'

--7 Te shfaqen email adresat e te gjithe klienteve perpos atyre me ID 2007 deri 2009. (Buna Hashimi)
Select Email_ID, Email
From Email 
Where NOT ID  between 2007 and 2009

--8 Te zgjedhen TOP 5 Autoret nga tabela Libri dhe te shfaqen ISBN, Autori dhe Titulli. (Buna Hashimi)
Select TOP 5 ISBN, Autori, Titulli
From Libri
Where Sektori <>3005 AND Sektori <> 3009

/* 2) Të krijoni min. 8 query të thjeshta (4 për student), të realizohen në minimum dy relacione
(tabela) e më tepër*/
--1. Te shfaqen Emri, Mbiemri, Roli, Rroga dhe Numri i Telefonit i te gjithe punonjesve qe nuk e kane rrogen 250. (Arb Rudi)
Select c.Emri, c.Mbiemri, p.Roli,p.Rroga, t.Nr_i_telefonit
From Personi c,Punonjes p, Telefoni_i_Punetorit t
where p.Punonjesi_ID=t.Punonjesi_ID and p.Punonjesi_ID=c.ID and p.Rroga <>250
Order by p.Rroga ASC

/*2. Te shfaqen Lloji, Donatori, Data e donimit dhe Roli i punonjesit i cili Mbikqyre Ngjarjen, duke e pasur parasysh qe 
Punetoret e thjeshte nuk kane mundesi te Mbikqyrin Ngjarje te ndryshme qe organizohen nga Biblioteka (Arb Rudi) */
Select n.Lloji,d.Donatori,d.Data_e_donimit,p.Roli
From Mbikqyret m, Ngjarje n, Donacionet d,Punonjes p
where m.ID_Donacioni=d.ID_Donacioni and m.ID_Ngjarje=n.ID_Ngjarje and p.Punonjesi_ID=m.ID_Punonjesi and not p.Roli='Punonjes i thjeshte'

--3. Te shfaqen Emri, Mbiemri, Ditelindja, Mosha, Roli, Rroga dhe Numri i Sektoreve qe punon secili punonjes. (Arb Rudi)
Select c.Emri, c.Mbiemri,c.Ditelindja, DATEDIFF(Year, c.Ditelindja,GetDate()) as Mosha,p.Roli,p.Rroga, Count(p.Sektori) [Numri i Sektoreve qe punon]
From Personi c, Punonjes p
Where c.ID=p.Punonjesi_ID
group by c.Emri, c.Mbiemri,c.Ditelindja,p.Roli,p.Rroga
order by [Numri i Sektoreve qe punon] DESC

/*4. Te shfaqen Emri, Mbiemri,Leternjoftimi, Qyteti, Zip Kodi,Pagesa dhe Email i secilit Klient 
i cili eshte i regjistruar dhe ka perfunduar pagesen ne databazen e Bibliotekes (Arb Rudi)*/
Select p.Emri,p.Mbiemri,k.Leternjoftimi,k.Qyteti, k.Zip_Kodi, k.Pagesa,e.Email
From Klient k, Email e, Personi p
where k.Klient_ID=p.ID and e.Email_ID=k.Email and not k.Pagesa='Jo'
order by p.Emri, p.Mbiemri ASC

--5 Te shfaqen punonjesit te cilet jane menaxher. (Buna Hashimi)
Select s.Punonjesi_ID,k.Emri,k.Mbiemri,k.Ditelindja,s.Roli,s.Sektori 
From Personi k, Punonjes s
Where k.ID=s.Punonjesi_ID AND s.Roli='Menaxher'

--6 Te shfaqen shtepite botuese qe kane botuar liber dhe jane nga KS. (Buna Hashimi)
Select h.Emri_Sh, h.Shteti, h.Lloji_i_materialeve
From Shtepia_botuese h, Biblioteka v
Where h.Biblioteka=v.Biblioteka_ID AND h.Lloji_i_materialeve='Liber' AND h.Shteti='KS'
Order by  h.Emri_Sh ASC

--7. Te shfaqen donatoret nga OJQ te cilet kane donuar brenda '12.05.2021' dhe '03.03.2022'. (Buna Hashimi)
Select x.Donatori, x.Data_e_donimit, q.Fondacioni 
From Donacionet x, Donacion_nga_OJQ q
Where x.ID_Donacioni=q.ID_Donacioni AND NOT x.Data_e_donimit BETWEEN '12.05.2021' AND '03.03.2022'

--8. Te shfaqen ngjarjet te cilat jane realizuar nga donatoret qe fillojne me shkronjen 'U'. (Buna Hashimi)
Select TOP 3  f.Lloji, w.Donatori, w.Shuma, w.ID_Donacioni
From Ngjarje f, Realizohen d, Donacionet w
Where f.ID_Ngjarje=d.ID_Ngjarje AND d.ID_Donacioni=w.ID_Donacioni  AND w.Donatori LIKE 'U%' 
order by f.Lloji desc



/* 3) Të krijoni min. 8 query të avancuara (4 për student), të realizuara në minimum dy relacione
(tabela) e më tepër (Arb Rudi) */
-- 1. Te shfaqen te gjithe librat qe jane marre gjate 05.11.2021 deri 09.22.2021.
Select k.Klient_ID,l.ISBN, l.Titulli, l.Sektori, kl.Data_se_kur_eshte_marre_libri
From Klient k
INNER JOIN Klienti_merr_librin kl on k.Klient_ID=kl.Klient_ID
INNER JOIN Libri l on l.ISBN=kl.ISBN
where kl.Data_se_kur_eshte_marre_libri between '05.11.2021' and '09.22.2021'

-- 2. Te shfaqet numri i donacioneve qe nuk jane 1800 euro dhe jane ne nje periudhe njevjecare prej dates 03.03.2021 (Arb Rudi)
Select d.Donatori, Count (d.ID_Donacioni) [Nr i donacioneve]
From Realizohen r LEFT JOIN ngjarje n on r.ID_Ngjarje=n.ID_Ngjarje
RIGHT JOIN Donacionet d on r.ID_Donacioni=d.ID_Donacioni
where d.Shuma <>'1800_' and d.Data_e_donimit between '03.03.2021' and '03.03.2022'
group by d.Donatori
having COUNT (d.ID_Donacioni)>=2
order by [Nr i donacioneve] DESC


-- 3. Te shfaqen se cilet sektore kane punonjes, duke mos e perfshire sektorin 3002. (Arb Rudi)
Select s.Sektori_ID,s.Tema, COUNT(*)[Sa punonjes jane?]
From Punonjes p INNER JOIN Sektori s on p.Sektori=s.Sektori_ID
where not Sektori_ID=3002
group by s.Sektori_ID, s.Tema
having Count(*)<3

-- 4. Te kalkulohet koha ne total e te gjithe klienteve pervec atyre qe nuk e kane bere pagesen ne Biblioteke. (Arb Rudi)
select k.Biblioteka, SUM(Kalkulimi_i_kohes) [Kalkulimi i kohes ne total]
from Klient k INNER JOIN Klienti_merr_librin kl on k.Klient_ID=kl.Klient_ID
where k.Pagesa <>'Jo'
group by k.Biblioteka

--5 . Te shfaqet rroga maksimale e punonjesve. (Buna Hashimi) 
Select p.Emri, p.Mbiemri,pu.Rroga,MAX(pu.Rroga) OVER () AS max_rroga
From Personi p INNER JOIN Punonjes pu on p.ID=pu.Punonjesi_ID

--6. Te shfaqet vlera me e vogel qe eshte donuar ne biblioteke. (Buna Hashimi)
Select j.ID_Donacioni,j.Shuma, k.Projekti, MIN(isnull(cast(j.Shuma as int),0)) over () AS min_shuma
From Donacionet j RIGHT JOIN Donacion_shteteror k on j.ID_Donacioni=k.ID_Donacioni
group by j.ID_Donacioni, j.Shuma, k.Projekti

--7 Te shfaqet se sa libra kane marre secili klient brenda periudhes kohore: '06.20.2021' dhe '01.02.2022'. (Buna Hashimi)
Select g.Klient_ID, g.Leternjoftimi, h.ISBN, j.Titulli, j.Autori, k.Emri, k.Mbiemri, COUNT (h.ISBN) as [Sa libra i kane marre?]
From Klient g
INNER JOIN Klienti_merr_librin h ON h.Klient_ID=g.Klient_ID
INNER JOIN Libri j ON j.ISBN=h.ISBN
INNER JOIN Personi k ON k.ID=g.Klient_ID
where h.Data_se_kur_duhet_te_kthehet_libri between '06.20.2021' and '01.02.2022'
group by g.Klient_ID, g.Leternjoftimi, h.ISBN, h.Data_se_kur_duhet_te_kthehet_libri, j.Sektori, j.Titulli, j.Autori, k.Emri, k.Mbiemri

--8. Te shfaqen te gjithe librat dhe ne cilet sektore bejne pjese. (Buna Hashimi)
Select s.ISBN, s.Autori, s.Titulli, d.Sektori_ID, d.Tema
From Libri s Right JOIN Sektori d ON s.Sektori=d.Sektori_ID
group by s.ISBN, s.Autori, s.Titulli, d.Sektori_ID, d.Tema


/* 4) Të krijoni min. 8 subquery të thjeshta (4 për student) */
-- 1. Te shfaqen te gjithe punonjesit qe kane rrogen me te madhe se 250 euro. (Arb Rudi)

Select p.Punonjesi_ID,c.Emri,c.Mbiemri, p.Roli, p.Rroga 
from punonjes p, personi c
where p.Punonjesi_ID=c.ID and p.Rroga>(Select MIN(Rroga) from Punonjes)
order by p.Rroga Desc

-- 2. Te shfaqen te gjithe Donatoret me shumen me te madhe te donimit. (Arb Rudi)
Select n.ID_Ngjarje,d.ID_Donacioni, n.Lloji, d.Donatori, d.Shuma
From Realizohen r, ngjarje n, Donacionet d
where r.ID_Donacioni=d.ID_Donacioni and r.ID_Ngjarje=n.ID_Ngjarje and d.Shuma>=(Select MAX(isnull(cast(Shuma as int),0)) from Donacionet)

--3. Te shfaqen te gjithe Donatoret nga OJQ te cilet kane donuar shuma me te medha se mesatarja e Donacioneve te tjera. (Arb Rudi)
Select d.ID_Donacioni, d.Donatori,d.Shuma,d.Data_e_donimit
from Donacion_nga_OJQ do, Donacionet d
where do.ID_Donacioni=d.ID_Donacioni and d.Shuma>(Select AVG(isnull(cast(Shuma as int),0)) from Donacionet)
order by d.Shuma asc

--4. Te shfaqen te gjithe klientet qe kane marre libra gjate 05.12.2021 deri me 02.21.2022. (Arb Rudi)
Select k.Klient_ID,p.Emri,p.Mbiemri, kl.ISBN,kl.Data_se_kur_eshte_marre_libri,kl.Data_se_kur_duhet_te_kthehet_libri
from Klienti_merr_librin kl, Klient k, Personi p
where kl.Klient_ID=k.Klient_ID and k.Klient_ID=p.ID and kl.Data_se_kur_eshte_marre_libri in (Select kl.Data_se_kur_eshte_marre_libri from klient k 
where kl.Data_se_kur_eshte_marre_libri between '05.12.2021' and '02.21.2022')
order by k.Klient_ID asc


--5. Te shfaqen sa here jane marre librat nga klientet. (Buna Hashimi)
Select *
From (Select l.Titulli,l.Autori, Count(j.ISBN) [Sa here jane marre?]
From Klienti_merr_librin j, libri l, Klient i
Where j.Klient_ID=i.Klient_ID and l.ISBN=j.ISBN 
Group by l.Titulli,l.Autori) a
Where a.[Sa here jane marre?]>=2

--6. Te shfaqen te gjithe klientet qe kane marre libra pervec ISBN-se me te vogel. (Buna Hashimi)
Select t.Klient_ID, y.Emri, y.Mbiemri, u.ISBN, u.Data_se_kur_eshte_marre_libri, i.Titulli
From Klient t, Personi y, Klienti_merr_librin u, Libri i 
Where t.Klient_ID=y.ID and u.ISBN=i.ISBN and u.Klient_ID=t.Klient_ID and u.ISBN>(Select MIN(u.ISBN) from Klienti_merr_librin u)
Order by y.ID ASC

--7. Te shfaqen te gjithe klientet qe kane marr libra pervec klientiti me id me vlere me te madhe. (Buna Hashimi)
Select t.Klient_ID, t.Leternjoftimi, y.ID, y.Emri, y.Mbiemri
From Klient t, Personi y, Klienti_merr_librin u, Libri i
Where t.Klient_ID=y.ID and u.ISBN=i.ISBN and u.ISBN=i.ISBN and u.Klient_ID=t.Klient_ID
and u.Klient_ID<(Select MAX(u.Klient_ID) From Klienti_merr_librin u)
Order by t.Klient_ID asc

--8 Te shfaqen te gjitha shtepite botuese qe kane dorezuar material akademik. (Buna Hashimi)
Select sh.ID_Shtepia, sh.Emri_Sh,sh.Lloji_i_materialeve, sh.Biblioteka
From Shtepia_botuese sh, Biblioteka b
Where sh.Lloji_i_materialeve=(Select sh.Lloji_i_materialeve from Shtepia_botuese sh where sh.Lloji_i_materialeve='Material Akademik')


/* 5) Të krijoni min. 8 subquery të avancuara (4 për student). (min. 1 subquery në klauzolën
SELECT, dhe min. 1 subquery ne klauzolën FROM)
 */
 /* 1. Te shfaqen te gjithe klientet me kartela identifikuese te cilet kalkulimin e kohes e kane me te vogel 
dhe te barabarte me shumen e pergjithshme te te gjitha kalkulimeve kohore te tjera qe jane mbi vleren 5. (Arb Rudi) */
Select ki.ID_Kartela,p.Emri,p.Mbiemri,p.Ditelindja, DATEDIFF(year,p.Ditelindja,GETDATE()) as [Mosha e klientit],k.Kalkulimi_i_kohes
from Kartela_identifikuese ki INNER JOIN klient k on k.Klient_ID =ki.Klient_ID
INNER JOIN personi p on p.ID=k.Klient_ID
where ki.Klient_ID=k.Klient_ID and k.Klient_ID=p.ID and k.Kalkulimi_i_kohes<=(SELECT SUM(isnull(cast(kalkulimi_i_kohes as int ),0)) from Klient where Kalkulimi_i_kohes>5)

-- 2. Selekto te gjithe Klientet qe kane marre libra prej dates '09.22.2021' deri me '03.16.2022' pervec klientit me ID=2000. (Arb Rudi)
Select l.ISBN, l.Titulli, l.Autori,k.Klient_ID,kl.Data_se_kur_eshte_marre_libri
From Libri l
INNER JOIN Klienti_merr_librin kl on kl.ISBN=l.ISBN
INNER JOIN klient k on kl.Klient_ID=k.Klient_ID 
where kl.Klient_ID in (Select kl.Klient_ID from Klienti_merr_librin kl, Libri l where kl.ISBN=l.ISBN  
and kl.Data_se_kur_eshte_marre_libri between '09.22.2021' and '03.16.2022' and NOT kl.Klient_ID=2000) 
Group by l.ISBN, l.Titulli, l.Autori, k.Klient_ID,kl.Data_se_kur_eshte_marre_libri

/* 3. Te shfaqet Mesatarja e Shumave prej Donacioneve e cila eshte me e madhe se Vlera Minimale e 
Shumave te donuara qe jane Donacione Individuale dhe qe fillojne me shkronjen U. (Arb Rudi) */
Select d.ID_Donacioni,d.Donatori,d.shuma, (Select AVG(isnull(cast(Shuma as int),0)) from Donacionet  where Shuma >(Select MIN(isnull(cast(Shuma as int),0))from Donacionet)) as [AVG]
From Donacion_individual di INNER JOIN Donacionet d on d.ID_Donacioni=di.ID_Donacioni
where d.Donatori LIKE 'U_%'
Group by d.ID_Donacioni,d.Donatori,d.shuma
order by d.ID_Donacioni ASC

-- 4. Te shfaqen te gjithe Donatoret Shteteror qe kane donuar brenda datave '09.21.2021' dhe '03.30.2022' pervec atyre qe kane donuar per Projektin 
--'Rritje e stokut'. (Arb Rudi)
Select ds.ID_Donacioni,a.Donatori, ds.Projekti, a.Shuma
From Donacion_shteteror ds INNER JOIN (Select * from Donacionet d Where d.Data_e_donimit between '09.21.2021' and '03.30.2022') a
on  ds.ID_Donacioni=a.ID_Donacioni
where NOT ds.Projekti='Rritje e stokut'
order by a.Shuma Desc

/*5. Te tregohet rroga maksimale e te gjithe punonjesve po ashtu te paraqiten te gjithe punonjesit qe e kane rrogen 
me te madhe se mesatarja e te gjitha rrogave  (Buna Hashimi)*/
Select p.Punonjesi_ID,p.Roli, p.Sektori,p.Rroga, (Select MAX(Rroga) From Punonjes ) as [Rroga Max]
From Punonjes p 
LEFT JOIN Sektori s on s.Sektori_ID=p.Sektori
group by p.Punonjesi_ID,p.Roli, p.Sektori,p.Rroga
having p.Rroga>(Select AVG(isnull(cast(Rroga as int),0)) from punonjes)
 
--6 Te shfaqen te gjithe numrat e telefonit dhe tipet e tyre per te gjithe punonjesit qe iu fillon numri me '49' dhe tipi i telefonit nuk eshte Iphone 13
--(Buna Hashimi)
Select *
From (Select p.ID,p.Emri,p.Mbiemri,pu.Roli,pu.Sektori,t.Nr_i_telefonit,t.Tipi
From Personi p
Inner Join Punonjes pu on p.ID=pu.Punonjesi_ID
Inner JOIN Telefoni_i_Punetorit tp on tp.Punonjesi_ID=pu.Punonjesi_ID
Inner join Telefoni t on t.Nr_i_telefonit=tp.Nr_i_telefonit
where t.Nr_i_telefonit like'49%') b
where b.Tipi<> 'Iphone 13'

--7. Te shfaqen te gjithe donatoret nga OJQ ku shuma eshte me e vogel e barabarte se vlera maksimale e donacioneve. (Buna Hashimi)
Select d.ID_Donacioni,d.Donatori,d.Shuma,do.Fondacioni
From donacionet d
INNER JOIN Donacion_nga_OJQ do on do.ID_Donacioni=d.ID_Donacioni
Where d.Shuma<=(Select MAX(isnull(cast(Shuma as int),0)) from Donacionet)

--8. Te shfqet Mosha me e madhe e klienteve. (Buna Hashimi)
Select MAX(isnull(cast(a.Mosha as int),0)) as [Mosha MAX]
From (Select d.ID,d.Emri, DATEDIFF(year,d.Ditelindja,getdate()) as [Mosha] from Personi d ) a
INNER JOIN Klient k on a.ID=k.Klient_ID
 /* 6) Të krijoni min. 8 query/subquery (4 për student). Duke përdorur operacionet e algjebrës
relacionale (Union, Prerja, diferenca, etj.)*/

-- 1. Te shfaqen te gjithe Klientet dhe Punonjesit. (Arb Rudi)
Select k.Klient_ID, p.Emri, p.Mbiemri, p.Ditelindja
From Klient k INNER JOIN Personi p on k.Klient_ID=p.ID
UNION
Select pu.Punonjesi_ID,p.Emri, p.Mbiemri, p.Ditelindja 
From Punonjes pu INNER JOIN Personi p on pu.Punonjesi_ID=p.ID

--2. Te selektohen te gjithe Donatoret qe prej Komunave qe fillojne me P, G dhe M. (Arb Rudi)
Select * 
From Donacionet 
where Donatori LIKE 'Komuna _ P%'
UNION ALL
Select * 
From Donacionet 
where Donatori LIKE 'Komuna _ G%'
UNION ALL
Select * 
From Donacionet 
where Donatori LIKE 'Komuna _ M%'

-- 3. Te shfaqen te gjithe donatoret qe kane kontribuar ne fondacionet Rritje e stokut, Perkrahje e ngjarjeve, Permiresim i kushteve. (Arb Rudi)
Select d.ID_Donacioni,d.Donatori,do.Fondacioni
From Donacion_nga_OJQ do
Left JOIN Donacionet d on d.ID_Donacioni=do.ID_Donacioni
except
Select d.ID_Donacioni,d.Donatori,do.Fondacioni
From Donacion_nga_OJQ do
Left JOIN Donacionet d on d.ID_Donacioni=do.ID_Donacioni
where do.Fondacioni='Promovim'


-- 4. Te shfaqen te gjithe klientet dhe librat qe kane marre. (Arb Rudi)
Select n.Klient_ID,n.Emri,n.Mbiemri,n.Titulli,n.Autori
From (Select k.Klient_ID, p.Emri, p.Mbiemri,l.Titulli,l.Autori
From Klient k
Left JOIN Klienti_merr_librin kl on kl.Klient_ID= k.Klient_ID
Left JOIN Libri l on l.ISBN=kl.ISBN
Left JOIN Personi p on p.ID=k.Klient_ID) n

Intersect

Select n.Klient_ID,n.Emri,n.Mbiemri,n.Titulli,n.Autori
From (Select k.Klient_ID, p.Emri, p.Mbiemri,l.Titulli,l.Autori
From Klient k
RIGHT JOIN Klienti_merr_librin kl on kl.Klient_ID= k.Klient_ID
RIGHT JOIN Libri l on l.ISBN=kl.ISBN
RIGHT JOIN Personi p on p.ID=k.Klient_ID) n

--5 Te shfaqen te gjithe sektoret qe kane shkronjen S, A dhe M. (Buna Hashimi)
Select *
From Sektori
Where Tema Like 'M%'
Union ALL
Select * 
From Sektori
Where Tema Like 'S%'
Union ALL
Select * 
From Sektori
Where Tema LIKE 'A%'

--6. Te shfaqen te Punonjesit ku emri iu fillon me 'A' deri ne 'L', po ashtu emri iu fillon me 'A' deri ne 'M'. (Buna Hashimi)
Select f.Punonjesi_ID, f.Roli, g.Emri, g.Mbiemri
From Punonjes f INNER JOIN Personi g on f.Punonjesi_ID=g.ID
where g.Emri BETWEEN 'A' and 'L'
UNION 
Select f.Punonjesi_ID, f.Roli, g.Emri, g.Mbiemri
From Punonjes f INNER JOIN Personi g on f.Punonjesi_ID=g.ID
Where g.Emri BETWEEN 'A' and 'M'

--7. Te shfaqen te doantoret qe kane donuar gjate periudhes kohore '2021-07-08'-'2022-03-06' dhe '2021-12-05'-'2022-05-02'. (Buna Hashimi)
Select g.ID_Ngjarje, g.Lloji, f.Donatori,f.Data_e_donimit
From Ngjarje g, Realizohen h, Donacionet f
Where g.ID_Ngjarje=h.ID_Ngjarje and f.ID_Donacioni=h.ID_Donacioni and f.Data_e_donimit between '2021-07-08' and '2022-03-06'
INTERSECT
Select g.ID_Ngjarje, g.Lloji, f.Donatori,f.Data_e_donimit
From Ngjarje g, Realizohen h, Donacionet f
Where g.ID_Ngjarje=h.ID_Ngjarje and f.ID_Donacioni=h.ID_Donacioni and f.Data_e_donimit between '2021-12-05' and '2022-05-02'

--8. Te shfaqen Punonjesit pervec punonjesve me kete numer te telefonit '49438424'. (Buna Hashimi)
Select k.Punonjesi_ID,k.Roli,k.Rroga,k.Biblioteka,k.Menaxheri,k.Sektori,h.Nr_i_telefonit
From Punonjes k
INNER JOIN Telefoni_i_Punetorit h on h.Punonjesi_ID=k.Punonjesi_ID

except

Select k.Punonjesi_ID,k.Roli,k.Rroga,k.Biblioteka,k.Menaxheri,k.Sektori,h.Nr_i_telefonit
From Punonjes k
INNER JOIN Telefoni_i_Punetorit h on h.Punonjesi_ID=k.Punonjesi_ID
where h.Nr_i_telefonit<>'49438424'


 /* 7)Të krijoni min. 8 Proceduara të ruajtura (Stored Procedure) (4 për student) */

 -- 1. Te krijohet Stored Procedure e cila shfaq Qytetin dhe Zip Kodin e Klienteve. (Arb Rudi)

 Create Procedure Procedure_1
 @Qyteti nvarchar(30),
 @ZipKodi int
 AS

 Select p.ID,p.Emri,p.Mbiemri,p.Ditelindja,k.Qyteti,k.Rruga,k.Zip_Kodi 
 From Personi p
 INNER JOIN Klient k on k.Klient_ID=p.ID 
 where Qyteti=@Qyteti and Zip_Kodi=@ZipKodi

 EXEC Procedure_1 @Qyteti='Prishtine', @ZipKodi=10000

-- 2. Te krijohet nje Stored Procedure qe shfaq Personat qe kane ditelindjen me nje date te cilen e caktojme ne. (Arb Rudi)

Create Procedure Procedure_2
@Ditelindja date
AS
Select p.Emri, p.Mbiemri, p.Ditelindja, DATEDIFF(year,p.Ditelindja,GETDATE()) as [Mosha e klientit]
From Personi p
Where Ditelindja=@Ditelindja

Exec Procedure_2 @Ditelindja='09.21.2002'
Exec Procedure_2 @Ditelindja='07.06.2000'

/* 3. Te krijohet nje Stored Procedure e cila tregon statusin/ pershkrimin e rrogave te punonjesve. Nese rroga eshte me e vogel dhe e barabarte me 250,
atehere statusi i saj eshte 'Rroga eshte e ulet'. Nese rroga eshte me e madhe se 700, atehere statusi i saj eshte 'Rroga eshte e larte'
Per rrogat e tjera statusi le te mbetet 'Rroga eshte mesatare'. (Arb Rudi)*/
Create Procedure Procedure_3
@rroga int
AS

Select n.Punonjesi_ID, n.Emri,n.Mbiemri,n.Rroga,

CASE WHEN n.Rroga>700 then 'Rroga eshte e larte'
When n.Rroga<=250 then 'Rroga eshte e ulet '
ELSE 'Rroga eshte mesatare'
END AS Pershkrimi
From (Select * From Personi p
INNER JOIN Punonjes pu on p.ID=pu.Punonjesi_ID) n
Where n.Rroga=@rroga


exec Procedure_3 @rroga=800

-- 4. Te krijohet nje Stored Procedure qe shfaq te gjitha shtepite botuese qe kane dorezuar liber ne biblioteke. (Arb Rudi)
Create Procedure Procedure_4
@Materiali varchar(30)
AS
BEGIN
If(@Materiali='Liber')
BEGIN 
Select Emri_Sh, Shteti,Lloji_i_materialeve
From Shtepia_botuese
Where Lloji_i_materialeve=@Materiali
print 'Keto shtepi botuese kane dorezu Libra'
END

else if (@Materiali='Reviste')
BEGIN 
Select Emri_Sh, Shteti,Lloji_i_materialeve
From Shtepia_botuese
Where Lloji_i_materialeve=@Materiali
print 'Keto shtepi botuese kane dorezu Revista'
END

else
BEGIN 
Select Emri_Sh, Shteti,Lloji_i_materialeve
From Shtepia_botuese
Where Lloji_i_materialeve=@Materiali
print 'Keto shtepi botuese kane dorezu Materiale te ndryshme akademike'
END
END


EXEC Procedure_4 @Materiali= Liber

--5 Te krijohet nje Stored Procedure qe shfaq ngjarjet dhe donatoret e ketyre ngjarjeve qe iu fillon me shkronjen 'U'. (Buna Hashimi)
Create Procedure Procedure_5
AS
Select TOP 3  f.Lloji, w.Donatori, w.Shuma, w.ID_Donacioni
From Ngjarje f, Realizohen d, Donacionet w
Where f.ID_Ngjarje=d.ID_Ngjarje AND d.ID_Donacioni=w.ID_Donacioni  AND w.Donatori LIKE 'U%' 
order by f.Lloji desc
EXEC Procedure_5

--6. Te krijohet nje Stored Procedure e cila shfaq personin qe e ka ditelindjet me ate date qe caktohet. (Buna Hashimi)
Create Proc Procedure_6
@ditelindja date
AS 

Select a.Emri,a.Mbiemri,a.Mosha 
From(Select p.Emri,p.Mbiemri,p.Ditelindja, DATEDIFF(year, p.Ditelindja, GETDATE()) as[Mosha]
    From Personi p inner join Klient k on p.ID=k.Klient_ID
    where @ditelindja=p.Ditelindja)a
where a.mosha between 20 and 23 
Group by a.Emri,a.Mbiemri,a.Mosha 
order by a.Mosha desc

Exec Procedure_6 @ditelindja= '07.06.2000'

--7. Te krijohet nje Stored Procedure ne te cilen tregon se nese tema qe shtypet eshte sektori Anatomi apo jo. (Buna Hashimi)
Create Procedure Procedure_7
@Tema varchar(50)
AS
BEGIN
IF (@Tema='Anatomi')
BEGIN
Select Sektori_ID, Tema
From Sektori
Where Tema=@Tema
print 'Sektori Anatomi'
END

else 
BEGIN 
Select Sektori_ID, Tema
From Sektori
Where Tema=@Tema
print 'Nuk eshte sektori anatomi'
END
END

EXEC Procedure_7 @Tema=Anatomi

/*8. Te krijohet nje stored procedure ne te cilen kur te shtypet vlera e tregon pershkrimin e donimit.
Nese Shuma eshte me e madhe se 800, atehere kemi donim me te larte se shuma e caktuar; nese eshte me i ulet ose i barabarte se 500,atehere
donimi eshte me i ulet se shuma e caktuar, perndryshe shumat e tjera donimi eshte ne vlere te sakte. (Buna Hashimi)
*/
Create Procedure Procedure_8
@Shuma int
AS
Select d.Donatori, d.Shuma,

CASE WHEN d.Shuma>800 then 'Donimi eshte me i larte  se shuma e caktuar'
When d.Shuma<=500 then 'Donimi eshte me i ulte se shuma e caktuar '
ELSE 'Donimi eshte ne vlere te sakte'
END AS Pershkrimi
From (Select d.ID_Donacioni,d.Donatori,d.Shuma,f.Fondacioni From Donacionet d
INNER JOIN Donacion_nga_OJQ f on d.ID_Donacioni=f.ID_Donacioni
Group by d.ID_Donacioni,d.Donatori,d.Shuma,f.Fondacioni ) d
Where d.Shuma=@Shuma


exec Procedure_8 @shuma=800

 --with 
 -- 1. Te krijohet nje with qe shfaqe te gjithe donatoret shteteror qe kane donuar per Projektin e Zgjerimit te bibliotekave. (Arb Rudi)
 With With1 AS (
 Select d.ID_Donacioni,d.Donatori,d.Shuma,d.Data_e_donimit
 From Donacion_shteteror ds
 INNER JOIN Donacionet d on ds.ID_Donacioni=d.ID_Donacioni
 where Projekti='Zgjerimi i bibliotekave'
 )

 Select * 
 From With1

 --2. Te krijohet nje with qe tregon te dhenat e klienteve qe kane Zip_Kodi=10000. (Buna Hashimi)
 With With2 AS (
 Select k.Klient_ID, k.Leternjoftimi, k.Email, k.Qyteti, k.Rruga
 From Klient k
 INNER JOIN Personi p on k.Klient_ID=p.ID 
 Where Zip_Kodi=10000)

 Select *
 From With2

 --view

 -- 1. Te krijohet nje view qe paraqet te gjithe Donatoret nga OJQ te cilet kane donuar shuma me te medha se mesatarja e Donacioneve te tjera. (Arb Rudi)
 Create View View1 
 AS
 Select d.ID_Donacioni, d.Donatori,d.Shuma,d.Data_e_donimit
from Donacion_nga_OJQ do, Donacionet d
where do.ID_Donacioni=d.ID_Donacioni and d.Shuma>(Select AVG(isnull(cast(Shuma as int),0)) from Donacionet)

-- 2 Te krijohet nje view qe paraqet te gjithe punonjesit perpos atyre me titullin menaxher. (Buna Hashimi)
Create View View2 AS
Select d.Punonjesi_ID, d.Roli, s.Emri, s.Mbiemri 
From Punonjes d, Personi s
Where d.Punonjesi_ID=s.ID and d.Roli <> 'Menaxher'




