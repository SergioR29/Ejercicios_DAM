create table  tcentr (
	numce	integer not null,
	nomce	varchar(25) not null,
	dir	varchar(25) not null,
	primary key (numce),
	unique (nomce)
	);

create table  tdepto (
	numde	integer not null ,
	numce	integer,
	direc	integer,
	tidir	char(1) not null,
	presu	decimal (3, 0) not null,
	depde	integer,
	nomde	varchar (20) not null unique ,
  primary key (numde)
  );

create table  temple (
	numem	integer not null,
	numde	integer not null,
	extel	smallint not null,
	fecna	date not null,
	fecin	date not null,
	salar	decimal (4, 0) not null,
	comis	decimal (4, 0),
	numhi	smallint not null,
	nomem	varchar (20) not null,
  primary key (numem)
  );

insert into  tcentr values (10,'SEDE CENTRAL','C. ALCALA, 820, MADRID');
insert into  tcentr values  (20,'RELACION CON CLIENTES','C. ATOCHA, 405, MADRID');
insert into  tcentr values  (50,'ALMACEN','C. LAVAPIES, 520, MADRID');
	
insert into  tdepto values (100, 10, 260, 'P', 120, NULL, 'DIRECCION GENERAL');
insert into  tdepto values (110, 20, 180, 'P', 150, 100    , 'DIRECCION COMERCIAL');
insert into  tdepto values (111, 20, 180, 'F', 110, 110     , 'SECTOR INDUSTRIAL');
insert into  tdepto values (112, 20, 270, 'P',   90, 110     , 'SECTOR SERVICIOS');
insert into  tdepto values (120, 10, 150, 'F',   30, 100     , 'ORGANIZACION');
insert into  tdepto values (121, 10, 150, 'P',    20, 120     , 'PERSONAL');
insert into  tdepto values (122, 10, 350, 'P',   60, 120     , 'PROCESO DE DATOS');
insert into  tdepto values (130, 10, 310, 'P',   20, 100     , 'FINANZAS');
insert into  tdepto values (123, NULL, 150, 'F', 100, 121, 'PERSONAL CONTRATADO');
	

insert into  temple values (110, 121, 350, '1929-11-10', '1950-02-15', 3100, NULL, 3, 'PONS, CESAR');
insert into  temple values (120, 112, 840, '1935-06-09', '1968-10-01', 3500, 1100, 1, 'LASA, MARIO');
insert into  temple values (130, 112, 810, '1945-09-09', '1969-02-01', 2900, 1100, 2, 'TEROL, LUCIANO');
insert into  temple values (150, 121, 340, '1930-08-10', '1948-01-15', 4400, NULL, 0, 'PEREZ, JULIO');
insert into  temple values (160, 111, 740, '1939-07-09', '1968-11-11', 3100, 1100, 2, 'AGUIRRE, AUREO');
insert into  temple values (180, 110, 508, '1934-10-18', '1956-03-18', 4800, 500, 2, 'PEREZ, MARCOS');
insert into  temple values (190, 121, 350, '1932-05-12', '1962-02-11', 3000, NULL, 4, 'VEIGA, JULIANA');
insert into  temple values (210, 100, 200, '1940-09-28', '1959-01-22', 3800, NULL, 2, 'GALVEZ, PILAR');
insert into  temple values (240, 111, 760, '1942-02-28', '1966-02-24', 2800, 1000, 3, 'SANZ, LAVINIA');
insert into  temple values (250, 100, 250, '1946-10-27', '1967-03-01', 4500, NULL, 0, 'ALBA, ADRIANA');
insert into  temple values (260, 100, 220, '1943-12-03', '1968-07-12', 7200, NULL, 6, 'LOPEZ, ANTONIO');
insert into  temple values (270, 112, 800, '1945-05-21', '1966-09-10', 3800, 800, 3, 'GARCIA, OCTAVIO');
insert into  temple values (280, 130, 410, '1948-01-11', '1971-10-08', 2900, NULL, 5, 'FLOR, DOROTEA');
insert into  temple values (285, 122, 620, '1949-10-25', '1968-02-15', 3800, NULL, 0, 'POLO, OTILIA');
insert into  temple values (290, 120, 910, '1947-11-30', '1968-02-14', 2700, NULL, 3, 'GIL, GLORIA');
insert into  temple values (310, 130, 480, '1946-11-21', '1971-01-15', 4200, NULL, 0, 'GARCIA, AUGUSTO');
insert into  temple values (320, 122, 620, '1957-12-25', '1978-02-05', 4050, NULL, 2, 'SANZ, CORNELIO');
insert into  temple values (330, 112, 850, '1948-08-19', '1972-03-01', 2800, 900, 0, 'DIEZ, AMELIA');
insert into  temple values (350, 122, 610, '1949-04-13', '1984-09-10', 4500, NULL, 1, 'CAMPS, AURELIO');
insert into  temple values (360, 111, 750, '1958-10-28', '1968-10-10', 2500, 1000, 2, 'LARA, DORINDA');
insert into  temple values (370, 121, 360, '1967-06-22', '1987-01-20', 1900, NULL, 1, 'RUIZ, FABIOLA');
insert into  temple values (380, 112, 880, '1968-03-30', '1988-01-01', 1800, NULL, 0, 'MARTIN, MICAELA');
insert into  temple values (390, 110, 500, '1966-02-19', '1986-10-08', 2150, NULL, 1, 'MORAN, CARMEN');
insert into  temple values (400, 111, 780, '1969-08-18', '1987-11-01', 1850, NULL, 0, 'LARA, LUCRECIA');
insert into  temple values (410, 122, 660, '1968-07-14', '1988-10-13', 1750, NULL, 0, 'MUOZ, AZUCENA');
insert into  temple values (420, 130, 450, '1966-10-22', '1988-11-19', 4000, NULL, 0, 'FIERRO, CLAUDIA');
insert into  temple values (430, 122, 650, '1967-10-26', '1988-11-19', 2100, NULL, 1, 'MORA, VALERIANA');
insert into  temple values (440, 111, 760, '1966-09-26', '1986-02-28', 2100, 1000, 0, 'DURAN, LIVIA');
insert into  temple values (450, 112, 880, '1966-10-21', '1986-02-28', 2100, 1000, 0, 'PEREZ, SABINA');
insert into  temple values (480, 111, 760, '1965-04-04', '1986-02-28', 2100, 1000, 1, 'PINO, DIANA');
insert into  temple values (490, 112, 880, '1964-06-06', '1988-01-01', 1800, 1000, 0, 'TORRES, HORACIO');
insert into  temple values (500, 111, 750, '1965-10-08', '1987-01-01', 2000, 1000, 0, 'VAZQUEZ, HONORIA');
insert into  temple values (510, 110, 550, '1966-05-04', '1986-11-01', 2000, NULL, 1, 'CAMPOS, ROMULO');
insert into  temple values (550, 111, 780, '1970-01-10', '1988-01-21', 1000, 1200, 0, 'SANTOS, SANCHO');



create index indep4 on tdepto (direc);
create index inemp2 on temple (numde);