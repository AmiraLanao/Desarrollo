Create database univerUTP;

use univerUTP;



-------------------- Estableciendo las Llaves Primarias --------------------------

ALTER TABLE Alumno
       ADD PRIMARY KEY (chrAlumCodigo);
       
ALTER TABLE Curso
       ADD PRIMARY KEY (chrCurCodigo);

ALTER TABLE Nota
       ADD PRIMARY KEY (chrNotaCodigo);
       
ALTER TABLE Horario
       ADD PRIMARY KEY (chrHoraCodigo);

ALTER TABLE Asistencia
       ADD PRIMARY KEY (chrAsisCodigo);
       
ALTER TABLE Pension
       ADD PRIMARY KEY (chrPensCodigo);


----------------- Tabla Alumnos -----------------
CREATE TABLE Alumno (
chrAlumCodigo         char(10) NOT NULL,

chrAlumContras        char(10) NOT NULL,
vchAlumNombres        varchar(50) NULL,
vchAlumApellidos      varchar(50) NULL,
vchAlumFaculta        varchar(10) NULL,

chrPensCodigo          char(4) NOT NULL
);

----------------- Datos de Alumno ----------------
insert Alumno values('CA0911340','MIAG46','MICHEL ANDERSON','AGUILAR PINEDA','FIMAS','CP10');
insert Alumno values('CA0911324','ARPA24','ARNOLD PAICO','PAICO RIQUELME','FIMAS','CP11');
insert Alumno values('CA0910640','GIGU40','GINO IVAN','GUZMAN CANDELA','FIMAS','CP12');





----------------- Tabla Curso -----------------
CREATE TABLE Curso(
chrCurCodigo           char(10) NOT NULL,
              
chrAlumCodigo          char(10) NOT NULL,
chrNotaCodigo          char(5) NOT NULL,
chrHoraCodigo          char(6) NOT NULL,
chrAsisCodigo          char(5) NOT NULL,
    
vchCurNombre           varchar(35) NULL,
intCurCreditos         int NOT NULL
);

----------------- Datos de Cursos ----------------
insert Curso values('CC0001000','CA0911340','CN10','CH100','CA10','Tecnologia Multimedia',4);
insert Curso values('CC0001001','CA0911340','CN11','CH101','CA11','Teoria de Desiciones',3);
insert Curso values('CC0001002','CA0911340','CN12','CH102','CA12','Proyec de Desarrollo Soft I',4);





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




----------------- Tabla Horario -----------------
CREATE TABLE Horario(
chrHoraCodigo         char(6) NOT NULL,

chrHoraDiaUno         char(10) NOT NULL,
vchHoraDiaUnoH        varchar(20) NOT NULL,
chrHoraDiaDos         char(10) NOT NULL,
vchHoraDiaDosH        varchar(20) NOT NULL
);

----------------- Datos de Horarios ----------------
insert Horario values('CH100','Miercoles','08:00 - 11:00','Viernes','08:45 - 11:00');
insert Horario values('CH101','Lunes','08:00 - 10:00',' ',' ');
insert Horario values('CH102','Martes','06:00 - 08:45','Jueves','06:00 - 08:45');






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



select * from alumno;
select * from Curso;
select * from Nota;
select * from Horario;
select * from Asistencia;
select * from Pension;


----------------------------------------------------------------------


--------------- Listar Curso x Alumno --------------------------------
select curs.chrCurCodigo,curs.chrAlumCodigo,curs.chrNotaCodigo,
curs.chrHoraCodigo,curs.chrAsisCodigo,curs.vchCurNombre,curs.intCurCreditos
from Curso as curs
inner join Alumno as alu
on curs.chrAlumCodigo = alu.chrAlumCodigo
where alu.chrAlumCodigo='CA0911340';



--------------- Listar Notas x Alumno --------------------------------
--select  alu.vchAlumNombres, curs.vchCurNombre,nt.intNotaPract1, nt.intNotaPract2, nt.intNotaPract3,

select  nt.chrNotaCodigo,nt.intNotaPract1, nt.intNotaPract2, nt.intNotaPract3,
 nt.intNotaPract4, nt.intNotaPract5, nt.intNotaExaPa, nt.intNotaExaFi
from Curso as curs
inner join Alumno as alu
on curs.chrAlumCodigo = alu.chrAlumCodigo
join Nota as nt
on nt.chrNotaCodigo = curs.chrNotaCodigo
where alu.chrAlumCodigo='CA0911340';


--------------- Listar Horarios por Curso--------------------------------
--select  alu.vchAlumNombres, curs.vchCurNombre,hr.chrHoraDiaUno,hr.vchHoraDiaUnoH,chrHoraDiaDos,vchHoraDiaDosH
select  hr.chrHoraCodigo, hr.chrHoraDiaUno, hr.vchHoraDiaUnoH, chrHoraDiaDos, vchHoraDiaDosH
from Curso as curs
inner join Alumno as alu
on curs.chrAlumCodigo = alu.chrAlumCodigo
join Horario as hr
on hr.chrHoraCodigo = curs.chrHoraCodigo
where alu.chrAlumCodigo='CA0911340';


--------------- Listar x Asistencia por Curso --------------------------------
--select  alu.vchAlumNombres, curs.vchCurNombre, asi.intAsiSem1, asi.intAsiSem2, 
select  asi.chrAsisCodigo, asi.intAsiSem1, asi.intAsiSem2, 
asi.intAsiSem3, asi.intAsiSem4, asi.intAsiSem5, asi.intAsiSem6, asi.intAsiSem7, 
asi.intAsiSem8, asi.intAsiSem9, asi.intAsiSem10
from Curso as curs
inner join Alumno as alu
on curs.chrAlumCodigo = alu.chrAlumCodigo
join Asistencia as asi
on asi.chrAsisCodigo = curs.chrAsisCodigo
where alu.chrAlumCodigo='CA0911340';




SELECT * FROM Alumno WHERE chrAlumCodigo='CA0911340' AND chrAlumContras='MIAG46'


--------------- Listar Pension del Alumno --------------------------------
select ps.chrPensCodigo, ps.intPensMonto
from Pension as ps
inner join Alumno as alu
on ps.chrPensCodigo=alu.chrPensCodigo
where alu.chrAlumCodigo='CA0911340';


