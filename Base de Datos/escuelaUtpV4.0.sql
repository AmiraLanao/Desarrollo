Create database escuelautp;

use escuelautp;

drop database escuelautp

----------------- Tabla Administrador -----------------
CREATE TABLE Administrador (
       chrAdmCodigo         char(5) NOT NULL,
       chrAdmLogin          char(10) NULL,
       chrAdmPassword       char(10) NULL,
       vchAdmNombres        varchar(50) NULL,
       vchAdmApellidos      varchar(50) NULL
);

ALTER TABLE Administrador
       ADD PRIMARY KEY (chrAdmCodigo);
       
----------------- Datos de Administrador ----------------
insert Administrador values('A0001','admin','admin','Michel','Aguilar');
insert Administrador values('A0002','user','user','Arnold','Paico');

select * from Administrador;





----------------- Tabla Alumno -----------------
CREATE TABLE Alumno (
       chrAluCodigo         char(10) NOT NULL,
       vchAluNombres        varchar(50) NULL,
       vchAluApellidos      varchar(50) NULL,
       dtmAluFechaNac       datetime NULL,
       chrAluSexo           char(1) NULL
);

ALTER TABLE Alumno
       ADD PRIMARY KEY (chrAluCodigo);
----------------- Datos de Curso ----------------
insert Alumno values('CA0911340','Michel','Aguilar','15-03-1971','M');
insert Alumno values('CA0911324','Arnold','Paico','15-03-1971','M');
insert Alumno values('CA0910640','Gino','Guzman','15-03-1971','M');
insert Alumno values('CA0911325','Amira','Lanao','15-03-1971','F');

select * from Alumno;




----------------- Tabla Curso -----------------
CREATE TABLE Curso(
       chrCursCodigo         char(3) NOT NULL,
       vchCursNombre         varchar(50) NULL,
       vchCursVacante        int NULL,
       vchCursCredito	     int NULL,
       vchCursHorario        varchar(70) NULL
);

ALTER TABLE Curso
       ADD PRIMARY KEY (chrCursCodigo);
----------------- Datos de Curso ----------------
insert Curso values('c01','Java Developer',30,3,'Miercoles 08:00 - 11:00 Viernes 08:45 - 11:00');
insert Curso values('c02','.Net Developer',30,5,'Miercoles 08:00 - 11:00 Viernes 08:45 - 11:00');
insert Curso values('c03','PHP Developer',30,2,'Miercoles 08:00 - 11:00 Viernes 08:45 - 11:00');

select * from Curso;





----------------- Tabla Matricula -----------------
CREATE TABLE Matricula(
	chrMatCodigo           char(10) NOT NULL,          
	chrAluCodigo           char(10) NOT NULL,
	chrCursCodigo          char(3) NOT NULL,
	chrNotaCodigo          char(6) NOT NULL,
	chrAsistCodigo         char(6) NOT NULL
);

ALTER TABLE Matricula
       ADD PRIMARY KEY (chrMatCodigo)
----------------- Datos de Matricula ----------------
insert Matricula values('MT10001','CA0911340','C03','CN101','CA101');
insert Matricula values('MT10002','CA0911324','C03','CN102','CA102');
insert Matricula values('MT10003','CA0910640','C03','CN103','CA103');
insert Matricula values('MT10005','CA0911325','C03','CN104','CA104');

select * from Matricula;




----------------- Tabla Nota -----------------
CREATE TABLE Nota(
chrNotaCodigo        char(6) NOT NULL,
intNotaPract1        int NOT NULL,
intNotaPract2        int NOT NULL,
intNotaPract3        int NOT NULL,
intNotaPract4        int NOT NULL,
intNotaPract5        int NOT NULL,
intNotaExaPa         int NOT NULL,
intNotaExaFi         int NOT NULL
);

ALTER TABLE Nota
       ADD PRIMARY KEY (chrNotaCodigo)

----------------- Datos de Notas ----------------
insert Nota values('CN101',13,15,10,11,18,15,16);
insert Nota values('CN102',11,16,16,17,12,14,16);
insert Nota values('CN103',16,12,12,16,18,16,16);
insert Nota values('CN104',12,15,17,16,18,16,12);

select * from Nota;



----------------- Tabla Asistencia -----------------
CREATE TABLE Asistencia(
chrAsisCodigo         char(6) NOT NULL,

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

ALTER TABLE Asistencia
       ADD PRIMARY KEY (chrAsisCodigo)

----------------- Datos de Asistencia ----------------

insert Asistencia values('CA101',1,1,0,1,1,1,0,1,1,1);
insert Asistencia values('CA102',1,1,0,1,1,1,1,1,0,1);
insert Asistencia values('CA103',1,1,1,1,1,1,1,1,1,1);
insert Asistencia values('CA104',1,1,1,0,1,1,1,1,1,1);

select * from Asistencia





----------------- Tabla Pension (No depende de Curso)-----------------

CREATE TABLE Pension(
	   chrPensCodigo        char(6) NOT NULL,

       chrAluCodigo         char(10) NOT NULL,
	   intPensMonto         int NOT NULL
);

----------------- Datos de Pensiones ----------------
insert Pension values('CP101','CA0911340',3750);
insert Pension values('CP102','CA0911324',3750);
insert Pension values('CP103','CA0910640',3750);
insert Pension values('CP104','CA0911325',3750);

select * from Pension





select * from Administrador
select * from Alumno
select * from Curso
select * from Matricula
select * from Nota
select * from Asistencia
select * from Pension


 
--===================================   Listar Asistencia      ==================================================
select  asi.chrAsisCodigo, asi.intAsiSem1, asi.intAsiSem2,
asi.intAsiSem3, asi.intAsiSem4, asi.intAsiSem5, asi.intAsiSem6, asi.intAsiSem7,
asi.intAsiSem8, asi.intAsiSem9, asi.intAsiSem10
from Matricula as matri
inner join Asistencia as asi
on asi.chrAsisCodigo = matri.chrAsistCodigo		  
where matri.chrAluCodigo='CA0911340';
		  

--===================================   Listar Notas      ==================================================

select   nt.chrNotaCodigo,nt.intNotaPract1, nt.intNotaPract2, nt.intNotaPract3,
nt.intNotaPract4, nt.intNotaPract5, nt.intNotaExaPa, nt.intNotaExaFi 
from Matricula as matri
inner join Nota as nt
on nt.chrNotaCodigo = matri.chrNotaCodigo		  
where matri.chrAluCodigo='CA0911340';


--===================================   Listar Cursos      ==================================================

select curs.chrCursCodigo, curs.vchCursNombre ,curs.vchCursVacante ,curs.vchCursCredito ,curs.vchCursHorario
from Curso as curs
inner join Matricula as matri
on curs.chrCursCodigo=matri.chrCursCodigo
join Alumno as alu
on alu.chrAluCodigo=matri.chrAluCodigo
where alu.chrAluCodigo='CA0911340'



--===================================   Mostrar Pension de Alumno    ==================================================
		
		select *
		from Pension
	    where  chrAluCodigo='CA0911340';