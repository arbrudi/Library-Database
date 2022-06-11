create database Project

use Project

Create Table Biblioteka(
Biblioteka_ID int Primary Key NOT NULL
);


Create Table Personi(
ID int Primary Key NOT NULL,
Emri varchar(30) NOT NULL,
Mbiemri varchar (30) NOT NULL,
Ditelindja date NOT NULL
);

Create Table Email(
Email_ID int Primary Key NOT NULL,
Email varchar(30) UNIQUE NOT NULL
);

Alter table Email
Add ID int Foreign Key References Personi(ID)

Create Table Klient (
Klient_ID int references Personi(ID) NOT NULL,
Leternjoftimi int UNIQUE NOT NULL,
Pagesa char(2),
Check (Pagesa in ('Po','Jo')),
Qyteti varchar(30),
Rruga varchar(30),
Zip_Kodi char(6),
Biblioteka int NOT NULL Foreign Key references Biblioteka(Biblioteka_ID),
Kalkulimi_i_kohes int,
Email int NOT NULL Foreign Key references Email(Email_ID),
PRIMARY KEY (Klient_ID)
);

Create Table Telefoni(
--change this
Telefoni_ID int IDENTITY(1500,1) Primary Key,
Nr_i_telefonit int UNIQUE NOT NULL,
Tipi nvarchar(20) NOT NULL,
);

Create Table Sektori(
Sektori_ID char(5) Primary Key NOT NULL,
Tema nvarchar (255)
);

Create Table Punonjes(
Punonjesi_ID int references Personi(ID),
Roli varchar(200) NOT NULL,
Rroga char(8),
Biblioteka int NOT NULL Foreign Key references Biblioteka(Biblioteka_ID),
PRIMARY KEY (Punonjesi_ID)
);

Alter Table Punonjes
ADD Menaxheri int Foreign Key references Punonjes(Punonjesi_ID);
Alter Table Punonjes
ADD Sektori char(5) Foreign Key References Sektori(Sektori_ID);

Create Table Telefoni_i_Punetorit(
Nr_i_telefonit int references Telefoni(Nr_i_telefonit),
Punonjesi_ID int references Punonjes(Punonjesi_ID),
CONSTRAINT PK_Person PRIMARY KEY (Punonjesi_ID,Nr_i_telefonit)
);

Create Table Kartela_identifikuese(
Klient_ID int references Klient(Klient_ID),
ID_Kartela int not null,
CONSTRAINT Kartela PRIMARY KEY (ID_Kartela,Klient_ID),
Emri varchar(30),
Mbiemri varchar(30)
);

Create Table Libri(
ISBN int Primary Key NOT NULL,
Titulli varchar(200) NOT NULL,
Autori varchar(100) NOT NULL,
Cmimi char(8),
Biblioteka int NOT NULL Foreign Key references Biblioteka(Biblioteka_ID),
);
Alter table Libri
Add Sektori char(5) NOT NULL Foreign Key references Sektori(Sektori_ID)

Create Table Klienti_merr_librin(
Klient_ID int references Klient(Klient_ID),
ISBN int references Libri(ISBN),
CONSTRAINT merr PRIMARY KEY (Klient_ID,ISBN),
);

alter table Klienti_merr_librin
add Data_se_kur_eshte_marre_libri date NOT NULL,
	Data_se_kur_duhet_te_kthehet_libri date NOT NULL;

Create Table Shtepia_botuese(
ID_Shtepia int Primary Key Not NULL,
Emri_Sh varchar(50) NOT NULL,
Shteti varchar(50) NOT NULL,
Lloji_i_materialeve varchar (250) NOT NULL,
Biblioteka int NOT NULL Foreign Key references Biblioteka(Biblioteka_ID) 
);


Create Table Donacionet (
ID_Donacioni int NOT NULL Primary Key,
Donatori varchar(60),
Shuma char(10),
Data_e_donimit date NOT NULL
);

Create Table Donacion_shteteror(
ID_Donacioni int references Donacionet(ID_Donacioni),
Projekti varchar(200),
PRIMARY KEY (ID_Donacioni)
);

Create Table Donacion_individual(
ID_Donacioni int references Donacionet(ID_Donacioni),
Leternjoftimi_D int UNIQUE NOT NULL,
Qyteti_D varchar(30),
PRIMARY KEY (ID_Donacioni)
);

Create Table Donacion_nga_OJQ(
ID_Donacioni int references Donacionet(ID_Donacioni),
Fondacioni varchar(200),
PRIMARY KEY (ID_Donacioni)
);

Create Table Ngjarje(
ID_Ngjarje int Primary Key NOT NULL,
Lloji varchar(200),
Biblioteka int NOT NULL Foreign Key references Biblioteka(Biblioteka_ID)
);

Create Table Realizohen(
ID_Ngjarje int foreign key references Ngjarje(ID_Ngjarje),
ID_Donacioni int foreign key references Donacionet(ID_Donacioni),
PRIMARY KEY (ID_Donacioni,ID_Ngjarje)
);

Create table Mbikqyret(
ID_Punonjesi int not null,
ID_Ngjarje int not null,
ID_Donacioni int not null,
Primary Key (ID_Punonjesi, ID_Ngjarje,ID_Donacioni),
Foreign Key (ID_Donacioni,ID_Ngjarje) references Realizohen(ID_Donacioni,ID_Ngjarje),
Foreign Key (ID_Punonjesi) references Punonjes(Punonjesi_ID),
);



