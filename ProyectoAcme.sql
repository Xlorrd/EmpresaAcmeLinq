USE [ProyectoAcme]
GO
/****** Object:  User [NT AUTHORITY\SYSTEM]    Script Date: 11/5/2019 6:06:01 PM ******/
CREATE USER [NT AUTHORITY\SYSTEM] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER ROLE [db_datareader] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[paci_id] [int] NOT NULL,
	[paci_peso] [varchar](10) NOT NULL,
	[paci_tiposangre] [varchar](10) NULL,
	[paci_estatura] [varchar](10) NOT NULL,
	[paci_sintoma] [nchar](10) NULL,
	[per_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[per_id] [int] NOT NULL,
	[per_nombres] [varchar](50) NOT NULL,
	[per_apellidos] [varchar](50) NOT NULL,
	[per_cedula] [int] NULL,
	[per_email] [varchar](50) NOT NULL,
	[per_telefono] [nchar](10) NULL,
	[per_fechanacimiento] [date] NOT NULL,
	[per_genero] [varchar](50) NOT NULL,
	[per_direccion] [varchar](100) NULL,
	[per_estado] [varchar](20) NOT NULL,
	[per_fechaCreacion] [date] NOT NULL,
	[per_usuario] [varchar](50) NOT NULL,
	[per_contrasenia] [varchar](50) NOT NULL,
	[id_tipousu] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Persona]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Persona](
	[per_id] [int] IDENTITY(1,1) NOT NULL,
	[per_nombre] [varchar](50) NULL,
	[per_apellido] [varchar](50) NULL,
	[per_cedula] [int] NULL,
	[per_correo] [varchar](50) NULL,
	[per_fch_nacimiento] [date] NULL,
	[per_direccion] [varchar](50) NULL,
	[per_fch_creacion] [date] NULL,
	[per_estado] [char](2) NULL,
 CONSTRAINT [PK_Tbl_Persona] PRIMARY KEY CLUSTERED 
(
	[per_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Usuario]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Usuario](
	[usu_id] [int] IDENTITY(1,1) NOT NULL,
	[per_id] [int] NULL,
	[usu_nombre] [varchar](50) NULL,
	[usu_contra] [varchar](50) NULL,
	[usu_estado] [varchar](10) NULL,
	[roll_id] [int] NULL,
 CONSTRAINT [PK_Tbl_Usuario] PRIMARY KEY CLUSTERED 
(
	[usu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCapacitacion]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCapacitacion](
	[idCapacitacion] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](100) NULL,
	[fechaIni] [nvarchar](100) NULL,
	[fechaFin] [nvarchar](100) NULL,
	[idEmpleado] [int] NULL,
 CONSTRAINT [PK__tblCapac__2109E60809844225] PRIMARY KEY CLUSTERED 
(
	[idCapacitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCargo]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCargo](
	[idCargo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDepartamento]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDepartamento](
	[idDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDtosFamilia]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDtosFamilia](
	[idDtosFamilia] [int] IDENTITY(1,1) NOT NULL,
	[nombrePaterno] [nvarchar](100) NULL,
	[nombreMaterno] [nvarchar](100) NULL,
	[direccion] [nvarchar](100) NULL,
	[telefono] [int] NULL,
	[idEmpleado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDtosFamilia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEmpleado]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmpleado](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [nvarchar](100) NULL,
	[direccion] [nvarchar](100) NULL,
	[correo] [nvarchar](100) NULL,
	[cedula] [int] NULL,
	[telefono] [int] NULL,
	[contra] [nvarchar](100) NULL,
	[idDepartamento] [int] NULL,
	[idCargo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEmpresa]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmpresa](
	[idEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[direccion] [nvarchar](50) NULL,
	[idDepartamento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReferencia]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReferencia](
	[idReferencia] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [nvarchar](100) NULL,
	[telefono] [int] NULL,
	[tipoReferencia] [nvarchar](100) NULL,
	[idEmpleado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idReferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblCapacitacion]  WITH CHECK ADD  CONSTRAINT [FK_tblCapacitacion_tblEmpleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[tblEmpleado] ([idEmpleado])
GO
ALTER TABLE [dbo].[tblCapacitacion] CHECK CONSTRAINT [FK_tblCapacitacion_tblEmpleado]
GO
ALTER TABLE [dbo].[tblDtosFamilia]  WITH CHECK ADD  CONSTRAINT [FK_tblDtosFamilia_tblEmpleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[tblEmpleado] ([idEmpleado])
GO
ALTER TABLE [dbo].[tblDtosFamilia] CHECK CONSTRAINT [FK_tblDtosFamilia_tblEmpleado]
GO
ALTER TABLE [dbo].[tblEmpleado]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpleado_tblCargo] FOREIGN KEY([idCargo])
REFERENCES [dbo].[tblCargo] ([idCargo])
GO
ALTER TABLE [dbo].[tblEmpleado] CHECK CONSTRAINT [FK_tblEmpleado_tblCargo]
GO
ALTER TABLE [dbo].[tblEmpleado]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpleado_tblDepartamento] FOREIGN KEY([idDepartamento])
REFERENCES [dbo].[tblDepartamento] ([idDepartamento])
GO
ALTER TABLE [dbo].[tblEmpleado] CHECK CONSTRAINT [FK_tblEmpleado_tblDepartamento]
GO
ALTER TABLE [dbo].[tblEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpresa_tblDepartamento] FOREIGN KEY([idDepartamento])
REFERENCES [dbo].[tblDepartamento] ([idDepartamento])
GO
ALTER TABLE [dbo].[tblEmpresa] CHECK CONSTRAINT [FK_tblEmpresa_tblDepartamento]
GO
ALTER TABLE [dbo].[tblReferencia]  WITH CHECK ADD  CONSTRAINT [FK_tblReferencia_tblEmpleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[tblEmpleado] ([idEmpleado])
GO
ALTER TABLE [dbo].[tblReferencia] CHECK CONSTRAINT [FK_tblReferencia_tblEmpleado]
GO
/****** Object:  StoredProcedure [dbo].[editarCapacitacion]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[editarCapacitacion]
(
@descripcion nvarchar(100),
@fechaIni date,
@fechaFin date,
@idEmpleado int,
@idCapacitacion int

)
as
update tblCapacitacion  set descripcion=@descripcion,fechaIni=@fechaIni,fechaFin=@fechaFin,idEmpleado=@idEmpleado
where idCapacitacion=@idCapacitacion
GO
/****** Object:  StoredProcedure [dbo].[editarCargo]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editarCargo]

@descripcion nvarchar (100), 

@idCargo int
as
update tblCargo set descripcion=@descripcion
where idCargo=@idCargo
GO
/****** Object:  StoredProcedure [dbo].[editarDepartamento]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editarDepartamento]

@descripcion nvarchar (100), 

@idDepartamento int
as
update tblDepartamento set descripcion=@descripcion
where idDepartamento=@idDepartamento
GO
/****** Object:  StoredProcedure [dbo].[editarDtosFamilia]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editarDtosFamilia]
(
@nombrePaterno nvarchar (100),
@nombreMaterno nvarchar (100),
@direccion nvarchar (100),
@telefono int,
@idEmpleado int,
@idDtosFamilia int
)
as
update tblDtosFamilia set nombrePaterno=@nombrePaterno,nombreMaterno=@nombreMaterno,direccion=@direccion,telefono=@telefono,idEmpleado=@idEmpleado
where idDtosFamilia=@idDtosFamilia
GO
/****** Object:  StoredProcedure [dbo].[editarEmpleado]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[editarEmpleado]
(
@idEmpleado int,
@nombres nvarchar (100),
@direccion nvarchar (100),
@correo nvarchar (100),
@cedula  int,
@telefono int,
@contra nvarchar(100),
@idDepartamento int,
@idCargo int

)
as
update tblEmpleado set nombres=@nombres,direccion=@direccion,correo=@correo,cedula=@cedula,
telefono=@telefono,contra=@contra,idDepartamento=@idDepartamento,idCargo=@idCargo
where idEmpleado=@idEmpleado
GO
/****** Object:  StoredProcedure [dbo].[editarEmpresa]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[editarEmpresa]

@nombre nvarchar (100), 
@direccion nvarchar(100),
@idDepartamento int,
@idEmpresa int
as
update tblEmpresa set nombre=@nombre,direccion=@direccion,idDepartamento=@idDepartamento
where idEmpresa=@idEmpresa
GO
/****** Object:  StoredProcedure [dbo].[EditarProductos]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--editar
create proc [dbo].[EditarProductos]
@nombre nvarchar (100),
@desc nvarchar (100), 
@precio float,
@stock int,
@id int
as
update productos set nombre=@nombre,descripcion=@desc,precio=@precio,stock=@stock
where id=@id
GO
/****** Object:  StoredProcedure [dbo].[editarReferencia]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[editarReferencia]
(
@idReferencia int,
@nombres nvarchar (100),
@telefono int ,
@tipoReferencia nvarchar(100),
@idEmpleado int
)
as
update tblReferencia set nombres=@nombres,telefono=@telefono,tipoReferencia=@tipoReferencia,idEmpleado=@idEmpleado
where idReferencia=@idReferencia
GO
/****** Object:  StoredProcedure [dbo].[eliminarCapacitacion]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[eliminarCapacitacion]
(
@idCapacitacion int
)
as
delete from tblCapacitacion
where idCapacitacion=@idCapacitacion
GO
/****** Object:  StoredProcedure [dbo].[eliminarCargo]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminarCargo]
@idCargo int 
as
delete from tblCargo
where idCargo=@idCargo
GO
/****** Object:  StoredProcedure [dbo].[eliminarDepartamento]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminarDepartamento] 
@idDepartamento int 
as
delete from tblDepartamento
where idDepartamento=@idDepartamento
GO
/****** Object:  StoredProcedure [dbo].[eliminarDtosFamilia]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[eliminarDtosFamilia]
(
@idDtosFamilia int
)
as
delete from tblDtosFamilia
where idDtosFamilia=@idDtosFamilia
GO
/****** Object:  StoredProcedure [dbo].[eliminarEmpleado]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[eliminarEmpleado]
(
@idEmpleado int
)
as
delete from tblEmpleado where idEmpleado=@idEmpleado
GO
/****** Object:  StoredProcedure [dbo].[eliminarEmpresa]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminarEmpresa]
@idEmpresa int 
as
delete from tblEmpresa
where idEmpresa=@idEmpresa
GO
/****** Object:  StoredProcedure [dbo].[EliminarProductos]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--eliminar
create proc [dbo].[EliminarProductos]
@id int 
as
delete from productos
where id=@id
GO
/****** Object:  StoredProcedure [dbo].[eliminarReferencia]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[eliminarReferencia]
(
@idReferencia int
)
as
delete from tblReferencia
where idReferencia=@idReferencia
GO
/****** Object:  StoredProcedure [dbo].[insertarCapacitacion]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[insertarCapacitacion]
(
@descripcion nvarchar(100),
@fechaIni date,
@fechaFin date,
@idEmpleado int
)
as
insert into tblCapacitacion values (@descripcion,@fechaIni,@fechaFin,@idEmpleado)
GO
/****** Object:  StoredProcedure [dbo].[insertarCargo]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertarCargo]
(
@descripcion nvarchar(50)
)
as
insert into tblCargo values(@descripcion)
GO
/****** Object:  StoredProcedure [dbo].[insertarDepartamento]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[insertarDepartamento]
(
@descripcion nvarchar (50)

)
as
insert into tblDepartamento values (@descripcion)
GO
/****** Object:  StoredProcedure [dbo].[insertarDtosFamilia]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertarDtosFamilia]
(

@nombrePaterno nvarchar (100),
@nombreMaterno nvarchar (100),
@direccion nvarchar (100),
@telefono int,
@idEmpleado int
)
as
insert into tblDtosFamilia values (@nombrePaterno,@nombreMaterno,@direccion,@telefono,@idEmpleado)
GO
/****** Object:  StoredProcedure [dbo].[insertarEmpleado]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertarEmpleado]
(

@nombres nvarchar (100),
@direccion nvarchar (100),
@correo nvarchar (100),
@cedula  int,
@telefono int,
@contra nvarchar(100),
@idDepartamento int,
@idCargo int

)
as
insert into tblEmpleado values(@nombres,@direccion,@correo,@cedula,@telefono,@contra,@idDepartamento,@idCargo)
GO
/****** Object:  StoredProcedure [dbo].[insertarEmpresa]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertarEmpresa]
(
@nombre nvarchar (50),
@direccion nvarchar (50),
@idDepartamento int
)
as
insert into tblEmpresa values (@nombre,@direccion,@idDepartamento)
GO
/****** Object:  StoredProcedure [dbo].[InsertarProductos]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--insertar
create proc [dbo].[InsertarProductos]
@nombre nvarchar (100),
@desc nvarchar (100), 
@precio float,
@stock int
as
insert into productos values (@nombre,@desc,@precio,@stock)
GO
/****** Object:  StoredProcedure [dbo].[insertarReferencia]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insertarReferencia]
(

@nombres nvarchar (100),
@telefono int ,
@tipoReferencia nvarchar(100),
@idEmpleado int
)
as
insert into tblReferencia values(@nombres,@telefono,@tipoReferencia,@idEmpleado)
GO
/****** Object:  StoredProcedure [dbo].[mostrarCapacitacion]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[mostrarCapacitacion]
as
(
select tc.idCapacitacion ID, tc.descripcion,tc.fechaIni,tc.fechaFin ,te.nombres Nombres
from tblCapacitacion tc,tblEmpleado te
where tc.idEmpleado=te.idEmpleado
)
GO
/****** Object:  StoredProcedure [dbo].[mostrarCargo]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[mostrarCargo]
as(
select * from tblCargo
)
GO
/****** Object:  StoredProcedure [dbo].[mostrarCartgo]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[mostrarCartgo]
as
select * from tblCargo
GO
/****** Object:  StoredProcedure [dbo].[mostrarDepartamento]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[mostrarDepartamento]
as
select * from tblDepartamento
GO
/****** Object:  StoredProcedure [dbo].[mostrarDtosFamilia]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[mostrarDtosFamilia]
as
select * from tblDtosFamilia
GO
/****** Object:  StoredProcedure [dbo].[mostrarEmpleado]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[mostrarEmpleado]
as(
select idEmpleado ID, nombres ,direccion,correo,cedula,telefono,contra,td.descripcion Departamento,tc.descripcion Cargo from tblEmpleado te ,tblDepartamento td ,tblCargo tc where te.idCargo =tc.idCargo and te.idDepartamento=td.idDepartamento

)
GO
/****** Object:  StoredProcedure [dbo].[mostrarEmpresa]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[mostrarEmpresa]
as(

select idEmpresa ID ,nombre,direccion, descripcion Departamento from tblEmpresa te , tblDepartamento td where te.idDepartamento=td.idDepartamento)
GO
/****** Object:  StoredProcedure [dbo].[mostrarReferencia]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[mostrarReferencia]
as(
select idReferencia ID ,tr.nombres,tipoReferencia ,te.nombres from  tblReferencia tr, tblEmpleado te where tr.idEmpleado=te.idEmpleado
)
GO
/****** Object:  StoredProcedure [dbo].[sp_actualizar_persona]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_actualizar_persona]
@per_id int,
@per_nombre varchar(50),
@per_apellido varchar(50),
@per_cedula int,
@per_correo varchar(50),
@per_fch_nacimiento date,
@per_direccion varchar(50),
@per_fch_creacion date,
@per_estado char(2)
as
update  Tbl_Persona	
set  per_nombre= @per_nombre,per_apellido= @per_apellido,per_cedula= @per_cedula,per_correo=@per_correo,per_fch_creacion=@per_fch_creacion,per_direccion=@per_direccion,@per_fch_creacion=@per_fch_creacion,per_estado=@per_estado

where @per_id=per_id
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_persona_id]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_buscar_persona_id]
@usu_id int
as(
select tp.per_nombre Nombre,tp.per_apellido Apellido,tp.per_cedula Cédula,tp.per_correo Mail,CONVERT(varchar(10),FORMAT(per_fch_nacimiento,'dd/MM/yyyy')) Fch_Nacimiento,tp.per_direccion Dirección, CONVERT(varchar(10),FORMAT(per_fch_creacion,'dd/MM/yyyy')) Fch_Creación
from Tbl_Persona tp , Tbl_Usuario tu
where tp.per_id=tu.per_id and @usu_id=usu_id
);
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_usuario_nombre]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create  procedure [dbo].[sp_buscar_usuario_nombre]
@usu_nombre varchar(50)
as
(
select tu.usu_id ID, tu.usu_nombre Alias
from Tbl_Usuario tu
where @usu_nombre=usu_nombre
);
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_usuario_persona]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_buscar_usuario_persona]
@usu_id int
as(
select tp.per_id ,tu.usu_id, tp.per_nombre Nombre,tp.per_apellido Apellido,tp.per_cedula Cédula,tp.per_correo Mail,CONVERT(varchar(10),FORMAT(per_fch_nacimiento,'dd/MM/yyyy')) Fch_Nacimiento,tp.per_direccion Dirección, CONVERT(varchar(10),FORMAT(per_fch_creacion,'dd/MM/yyyy')) Fch_Creación, tu.usu_nombre Alias
from Tbl_Persona tp , Tbl_Usuario tu
where tp.per_id=tu.per_id and @usu_id=usu_id
);
GO
/****** Object:  StoredProcedure [dbo].[sp_insertar_persona]    Script Date: 11/5/2019 6:06:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [dbo].[sp_insertar_persona]
@per_nombre varchar(50),
@per_apellido varchar(50),
@per_cedula int,
@per_correo varchar(50),
@per_fch_nacimiento date,
@per_direccion varchar(50),
@per_fch_creacion date,
@per_estado char(2)
as
INSERT into Tbl_Persona values(@per_nombre,@per_apellido,@per_cedula,@per_correo,@per_fch_nacimiento,@per_direccion,@per_fch_creacion,@per_estado)
GO
