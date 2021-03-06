CREATE DATABASE [RUIZ_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RUIZ_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\RUIZ_DB.mdf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RUIZ_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\RUIZ_DB_log.ldf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [RUIZ_DB] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [RUIZ_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RUIZ_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RUIZ_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RUIZ_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RUIZ_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [RUIZ_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RUIZ_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RUIZ_DB] SET AUTO_CREATE_STATISTICS ON(INCREMENTAL = OFF)
GO
ALTER DATABASE [RUIZ_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RUIZ_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RUIZ_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RUIZ_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RUIZ_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RUIZ_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RUIZ_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RUIZ_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RUIZ_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RUIZ_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RUIZ_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RUIZ_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RUIZ_DB] SET  READ_WRITE 
GO
ALTER DATABASE [RUIZ_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RUIZ_DB] SET  MULTI_USER 
GO
ALTER DATABASE [RUIZ_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RUIZ_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RUIZ_DB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [RUIZ_DB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = Off;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = Primary;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = On;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = Primary;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = Off;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = Primary;
GO
USE [RUIZ_DB]
GO
IF NOT EXISTS (SELECT name FROM sys.filegroups WHERE is_default=1 AND name = N'PRIMARY') ALTER DATABASE [RUIZ_DB] MODIFY FILEGROUP [PRIMARY] DEFAULT
GO

create table perfiles(
	Id int primary key identity(1,1),
	Tipo varchar(50) unique not null
);

insert into Perfiles values ('Administrador');
insert into Perfiles values ('Recepcionista');
insert into Perfiles values ('Medico');

select Id, Tipo from perfiles;

create table usuarios(
	Id int primary key identity(1,1),
	Nombre varchar(50) not null,
	Apellido varchar(50) not null,
	Correo varchar(120) not null,
	IdPerfil int foreign key references perfiles(Id),
	Usr varchar(50) unique not null,
	Pwd varchar(50) not null,
	Estado bit not null 
);

insert into usuarios values('Norman','Ruiz','norman.ruiz@icloud.com', 1, 'nruiz','Usuario@1234#',1)
insert into usuarios values('Cecilia','Lupani','lalala@icloud.com', 2, 'clupani','Usuario@1234#',1)
insert into usuarios values('Natalia','Spini','maslalala@icloud.com', 3, 'nspini','Usuario@1234#',1)

select u.Id, u.Nombre, u.Apellido, u.Correo, u.IdPerfil, p.Tipo, u.Usr, u.Pwd, u.Estado from usuarios as u inner join perfiles as p on u.IdPerfil = p.Id

create table medicos(
	Id int primary key identity(1,1),
	Nombre varchar(50) not null,
	Apellido varchar(50) not null,
	Correo varchar(120) not null,
);

insert into medicos values ('Natalia Gabriela', 'Spini', 'maslalala@icloud.com')
insert into medicos values ('Kristen', 'Stewart', 'lalala1@icloud.com')
insert into medicos values ('Emily', 'Blunt', 'lalala2@icloud.com')
insert into medicos values ('Alicia', 'Vikander', 'maslalala3@icloud.com')
insert into medicos values ('Teresa', 'Palmer', 'maslalala4@icloud.com')
insert into medicos values ('Kaya', 'Scodelario', 'maslalala5@icloud.com')
insert into medicos values ('Marion', 'Cotillard', 'maslalala6@icloud.com')
insert into medicos values ('Amy', 'Adams', 'maslalala7@icloud.com')

select m.Id, m.Nombre, m.Apellido, m.Correo from medicos as m


create table (
	Id int primary key identity(1,1),

);