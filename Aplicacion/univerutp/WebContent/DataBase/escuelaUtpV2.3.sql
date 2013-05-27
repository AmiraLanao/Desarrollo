Create database escuelautp;

use escuelautp;

drop database escuelautp


CREATE TABLE Administrador (
       chrAdmCodigo         char(5) NOT NULL,
       chrAdmLogin          char(10) NULL,
       chrAdmPassword       char(10) NULL,
       vchAdmNombres        varchar(50) NULL,
       vchAdmApellidos      varchar(50) NULL
);

ALTER TABLE Administrador
       ADD PRIMARY KEY (chrAdmCodigo);

insert Administrador values('A0001','admin','admin','Michel','Aguilar');
insert Administrador values('A0002','user','user','Arnold','Paico');

select * from Administrador;


CREATE TABLE Alumno (
       chrAluCodigo         char(10) NOT NULL,
       vchAluNombres        varchar(50) NULL,
       vchAluApellidos      varchar(50) NULL,
       dtmAluFechaNac       datetime NULL,
       chrAluSexo           char(1) NULL
);


ALTER TABLE Alumno
       ADD PRIMARY KEY (chrAluCodigo);


insert Alumno values('CA0911340','Michel','Aguilar','15-03-1971','M');
insert Alumno values('CA0911324','Arnold','Paico','15-03-1971','M');
insert Alumno values('CA0910640','Gino','Guzman','15-03-1971','M');
insert Alumno values('CA0911325','Amira','Lanao','15-03-1971','F');

insert Alumno values('960018K','Edwin','Maraví','24-05-1978','M');
insert Alumno values('960019K','Rosa','Bueno','23-02-1982','M');
insert Alumno values('960020K','Zoila','Vaca','15-03-1971','F');


insert Alumno values('960021K','Juan','Vaca','18-05-1972','M');
insert Alumno values('960022K','Luis','Rojas','18-07-1973','M');
insert Alumno values('960023K','Ricardo','Galarza','18-03-1974','M');
insert Alumno values('960024K','Jesus','Peña','16-09-1975','M');
insert Alumno values('960025K','Ronald','Romero','13-07-1976','M');
insert Alumno values('960026K','Amir','Vigo','08-01-1977','M');
insert Alumno values('960027K','Josmel','Nuñez','01-02-1978','M');
insert Alumno values('960028K','Joel','Sanches','07-03-1979','M');
insert Alumno values('960029K','Marco','Vilches','29-06-1981','M');
insert Alumno values('960030K','Gino','Guzman','30-03-1981','M');
insert Alumno values('960031K','Ludwin','Marquina','28-02-1971','M');
insert Alumno values('960032K','Carlos','Trejo','30-01-1974','M');
insert Alumno values('960033K','Christian','Gomez','05-09-1979','M');
insert Alumno values('960034K','Jean Paul','Rios','03-10-1971','M');
insert Alumno values('960035K','Johnny','Garcia','01-12-1975','M');
insert Alumno values('960036K','Gladys','Ramoz','24-11-1971','F');
insert Alumno values('960037K','Alejandra','Martinez','17-03-1971','F');



drop table Curso
select * from Curso

CREATE TABLE Curso(
       chrCursCodigo         char(3) NOT NULL,
       vchCursNombre         varchar(50) NULL,
       vchCursVacante        int NULL,
       vchCursCredito	     int NULL,
       vchCursHorario        varchar(70) NULL
);


ALTER TABLE Curso
       ADD PRIMARY KEY (chrCursCodigo);

insert Curso values('c01','Java Developer',30,3,'Miercoles 08:00 - 11:00 Viernes 08:45 - 11:00');
insert Curso values('c02','.Net Developer',30,5,'Miercoles 08:00 - 11:00 Viernes 08:45 - 11:00');
insert Curso values('c03','PHP Developer',30,2,'Miercoles 08:00 - 11:00 Viernes 08:45 - 11:00');
-- Pruebas con el programa..--

insert Curso values('c04','Gestion Empresarial',35,2,'Miercoles 08:00 - 11:00 Viernes 08:45 - 11:00');
insert Curso values('c05','Marketing Empresarial',35,2,'Miercoles 08:00 - 11:00 Viernes 08:45 - 11:00');
insert Curso values('c06','Negocios Internacionales',35,1,'Miercoles 08:00 - 11:00 Viernes 08:45 - 11:00');
insert Curso values('c07','Inteligencia de Negocios',24,2,'Miercoles 08:00 - 11:00 Viernes 08:45 - 11:00');
insert Curso values('c08','Configuracion de Redes',24,3,'Miercoles 08:00 - 11:00 Viernes 08:45 - 11:00');
insert Curso values('c09','Configuracion de Servidores',24,2,'Miercoles 08:00 - 11:00 Viernes 08:45 - 11:00');


drop table matricula

select * from Matricula

CREATE TABLE Matricula(
	chrMatCodigo           char(10) NOT NULL,          
	chrAluCodigo           char(10) NOT NULL,
	chrCursCodigo          char(3) NOT NULL,
	chrNotaCodigo          char(6) NOT NULL,
	chrAsistCodigo         char(6) NOT NULL
);

ALTER TABLE Matricula
       ADD PRIMARY KEY (chrMatCodigo)
           
insert Matricula values('MT10001','960018K','c01','CN110','CA110');
insert Matricula values('MT10002','960019K','c03','CN120','CA120');
insert Matricula values('MT10003','960020K','c02','CN130','CA130');
insert Matricula values('MT10004','960021K','c01','CN140','CA140');
insert Matricula values('MT10005','960022K','c03','CN150','CA150');

-- Pruebas con el programa..--

insert Matricula values('M0006','960023K','c02','CN16','CA16');
insert Matricula values('M0007','960024K','c03','CN17','CA17');
insert Matricula values('M0008','960025K','c01','CN18','CA18');
insert Matricula values('M0009','960026K','c03','CN19','CA19');
insert Matricula values('M0010','960027K','c01','CN20','CA20');


select alu.chrAluCodigo, alu.vchAluNombres, alu.vchAluApellidos, alu.dtmAluFechaNac
from Alumno as alu
join Matricula as matri
on alu.chrAluCodigo=matri.chrAluCodigo
where matri.chrCursCodigo = 'c09'




--=================================== Nuevos Datos =========================================================


----------------- Tabla Nota -----------------
CREATE TABLE Nota(
chrNotaCodigo        char(5) NOT NULL,
intNotaPract1        int NOT NULL,
intNotaPract2        int NOT NULL,
intNotaPract3        int NOT NULL,
intNotaPract4        int NOT NULL,
intNotaPract5        int NOT NULL,
intNotaExaPa         int NOT NULL,
intNotaExaFi         int NOT NULL
);

----------------- Datos de Notas ----------------
insert Nota values('CN10',13,15,10,11,18,15,16);
insert Nota values('CN11',11,16,16,17,12,14,16);
insert Nota values('CN12',16,12,12,16,18,16,16);




----------------- Tabla Asistencia -----------------
CREATE TABLE Asistencia(
chrAsisCodigo         char(5) NOT NULL,

intAsiSem1            int NOT NULL,
intAsiSem2            int NOT NULL,
intAsiSem3            int NOT NULL,
intAsiSem4            int NOT NULL,
intAsiSem5            int NOT NULL,
intAsiSem6            int NOT NULL,
intAsiSem7            int NOT NULL,
intAsiSem8            int NOT NULL,
intAsiSem9            int NOT NULL,
intAsiSem10           int NOT NULL
);
----------------- Datos de Asistencia ----------------
insert Asistencia values('CA10',1,1,1,1,1,1,1,1,1,1);
insert Asistencia values('CA11',1,1,0,1,1,1,0,1,1,1);
insert Asistencia values('CA12',1,1,0,1,1,1,1,1,0,1);



----------------- Tabla Pension (No depende de Curso)-----------------

CREATE TABLE Pension(
chrPensCodigo          char(4) NOT NULL,

intPensMonto           int NOT NULL
);

----------------- Datos de Pensiones ----------------
insert Pension values('CP10',3750);






select * from Alumno


SELECT * FROM Alumno WHERE chrAluCodigo='960019K' AND vchAluApellidos='Bueno';


insert Alumno values('960018K','Edwin','Maraví','24-05-1978','M');
insert Alumno values('960019K','Rosa','Bueno','23-02-1982','M');
insert Alumno values('960020K','Zoila','Vaca','15-03-1971','F');










----------------- Tabla Horario -----------------
CREATE TABLE Horario(
chrHoraCodigo         char(6) NOT NULL,

chrHoraDiaUno         char(10) NOT NULL,
vchHoraDiaUnoH        varchar(20) NOT NULL,
chrHoraDiaDos         char(10) NOT NULL,
vchHoraDiaDosH        varchar(20) NOT NULL
);

----------------- Datos de Horarios ----------------
insert Horario values('CH100','Miercoles 08:00 - 11:00 Viernes 08:45 - 11:00');
insert Horario values('CH101','Lunes','08:00 - 10:00',' ',' ');
insert Horario values('CH102','Martes','06:00 - 08:45','Jueves','06:00 - 08:45');




--===================================================================================================================
drop table pago

CREATE TABLE Pago( 
	chrPagCodigo           char(10) NOT NULL,
	chrMatCodigo           char(10) NOT NULL,
	chrAluCodigo           char(10) NOT NULL,
	chrProCodigo           char(3) NOT NULL,
	intPagCuotas           int NOT NULL,
	intPagFecha            datetime NOT NULL,
	intPagImporte          int NOT NULL

);

ALTER TABLE Pago
       ADD PRIMARY KEY (chrPagCodigo)
           FOREIGN KEY (chrMatCodigo)
           FOREIGN KEY (chrAluCodigo)
           FOREIGN KEY (chrProCodigo);



insert Pago values('P01','M0001','960018K','c01',1,'12-03-2013',3500);
insert Pago values('P02','M0002','960019K','c03',1,'11-03-2013',1200);
insert Pago values('P03','M0003','960020K','c02',1,'12-03-2013',5400);
insert Pago values('P04','M0004','960021K','c01',1,'12-03-2013',3500);
insert Pago values('P05','M0005','960022K','c03',2,'12-03-2013',700);
insert Pago values('P06','M0006','960023K','c02',1,'12-03-2013',6000);
insert Pago values('P07','M0007','960024K','c03',1,'10-03-2013',1200);
insert Pago values('P08','M0008','960025K','c01',1,'12-03-2013',3400);

-- Pruebas con el programa..--
insert Pago values('P09','M0009','960026K','c03',1,'13-03-2013',800);
insert Pago values('P010','M00010','960027K','c01',2,'12-03-2013',1800);
insert Pago values('P011','M00011','960028K','c03',1,'12-03-2013',1200);
insert Pago values('P012','M00012','960029K','c02',1,'11-03-2013',5800);
insert Pago values('P013','M00013','960030K','c03',1,'12-03-2013',1100);
insert Pago values('P014','M00014','960031K','c01',1,'10-03-2013',3400);
