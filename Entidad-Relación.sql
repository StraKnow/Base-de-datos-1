create database Programacion

use Programacion

--Tabla Proyecto
create table Proyecto(
CodigoProyecto int not null,
NombreProyecto varchar(50) not null,
Descripcion nchar(100),
Observaciones nchar(100),
constraint pk_cp primary key (CodigoProyecto)
)


--Tabla Lenguajes
create table Lenguajes(
CodigoLenguaje int not null,
NombreLenguaje varchar(50) not null,
TipoTecnologia nchar(100),
constraint pk_cl primary key (CodigoLenguaje)
)

--Table Framework
create table Framework(
CodigoFramework int not null,
NombreFramework varchar(100) not null,
Funciones nchar(100),
constraint pk_cf primary key (CodigoFramework)
)

--Tabla Usuario
create table Usuario(
CodigoUsuario int not null,
NombreUsuario varchar (50) not null,
Direccion nchar(100),
CodigoProyecto1 int not null,
constraint pk_cu primary key (CodigoUsuario),
constraint fk_fcp1 foreign key (CodigoProyecto1) references Proyecto (CodigoProyecto)
)

--Usuario-Framework
create table UsuFramework(
CodigoUsuario1 int not null,
UsuFramework1 int not null,
constraint fk_fcu1 foreign key(CodigoUsuario1) references Usuario(CodigoUsuario),
constraint fk_fuf1 foreign key(UsuFramework1) references Framework(CodigoFramework)
)

--Lenguajes-Usuario
create table LengUsuario(
CodigoLenguaje1 int not null,
LengUsuario1 int not null,
constraint fk_fcl2 foreign key (CodigoLenguaje1) references Lenguajes (CodigoLenguaje),
constraint fk_flu1 foreign key (LengUsuario1) references Usuario (CodigoUsuario)
)

--Lenguajes-Framework
create table LengFramework(
CodigoFramework1 int not null,
LengFramework1 int not null,
constraint fk_fcf1 foreign key (CodigoFramework1) references FrameWork (CodigoFramework),
constraint fk_flf1 foreign key (LengFramework1) references Lenguajes (CodigoLenguaje)
)

select * from Lenguajes
