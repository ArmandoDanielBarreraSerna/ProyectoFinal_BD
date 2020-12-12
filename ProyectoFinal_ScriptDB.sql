USE [master]
GO
/****** Object:  Database [Mascotas]    Script Date: 11/12/2020 18:03:27 ******/
CREATE DATABASE [Mascotas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Mascotas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Mascotas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Mascotas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Mascotas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Mascotas] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mascotas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mascotas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mascotas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mascotas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mascotas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mascotas] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mascotas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Mascotas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mascotas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mascotas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mascotas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mascotas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mascotas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mascotas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mascotas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mascotas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Mascotas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mascotas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mascotas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mascotas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mascotas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mascotas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Mascotas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mascotas] SET RECOVERY FULL 
GO
ALTER DATABASE [Mascotas] SET  MULTI_USER 
GO
ALTER DATABASE [Mascotas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mascotas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Mascotas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Mascotas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Mascotas] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Mascotas', N'ON'
GO
ALTER DATABASE [Mascotas] SET QUERY_STORE = OFF
GO
USE [Mascotas]
GO
/****** Object:  Table [dbo].[EstilistaBasico]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstilistaBasico](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Duenio] [nvarchar](50) NULL,
	[Nombre] [nvarchar](50) NULL,
	[FechaEntrada] [datetime] NULL,
	[FechaSalida] [datetime] NULL,
	[PrecioBasico] [money] NULL,
	[TiempoServicio] [time](7) NULL,
 CONSTRAINT [PK_EstilistaBasico] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstilistaCompleto]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstilistaCompleto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Duenio] [nvarchar](50) NULL,
	[Nombre] [nvarchar](50) NULL,
	[FechaEntrada] [datetime] NULL,
	[FechaSalida] [datetime] NULL,
	[PrecioCompleto] [money] NULL,
	[Tiempo] [time](7) NULL,
 CONSTRAINT [PK_EstilistaCompleto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstilistaMedio]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstilistaMedio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Duenio] [nvarchar](50) NULL,
	[Nombre] [nvarchar](50) NULL,
	[FechaEntrada] [datetime] NULL,
	[FechaSalida] [datetime] NULL,
	[PrecioMedio] [money] NULL,
	[Tiempo] [time](7) NULL,
 CONSTRAINT [PK_EstilistaMedio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospedaje]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospedaje](
	[id] [int] NULL,
	[Mascota] [nvarchar](50) NULL,
	[Duenio] [nvarchar](50) NULL,
	[FechaEntrada] [datetime] NULL,
	[FechaSalida] [datetime] NULL,
	[Habitacion] [int] NULL,
	[Dias] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mascotas]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mascotas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Edad] [int] NOT NULL,
	[Tamanio] [nvarchar](50) NULL,
	[Raza] [nvarchar](50) NULL,
	[Sexo] [nvarchar](50) NULL,
	[Duenio] [nvarchar](50) NULL,
 CONSTRAINT [PK_Mascotas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Precios]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Precios](
	[PrecioEBasico] [money] NULL,
	[PrecioEMedio] [money] NULL,
	[PrecioECompleto] [money] NULL,
	[PrecioVeterinaria] [money] NULL,
	[PrecioHospedaje] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[Servicio] [nvarchar](50) NULL,
	[Duenio] [nvarchar](50) NULL,
	[Mascota] [nvarchar](50) NULL,
	[Precio] [money] NULL,
	[FechaEntrada] [datetime] NULL,
	[FechaSalida] [datetime] NULL,
	[NumeroServicio] [int] IDENTITY(1,1) NOT NULL,
	[Empleado] [nvarchar](50) NULL,
	[Estado] [nvarchar](50) NULL,
 CONSTRAINT [PK_Servicios] PRIMARY KEY CLUSTERED 
(
	[NumeroServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellidos] [nvarchar](50) NULL,
	[Telefono] [nvarchar](50) NULL,
	[Usuario] [nvarchar](50) NULL,
	[Contrasenia] [nvarchar](50) NULL,
	[Rol] [nvarchar](50) NULL,
	[Saldo] [money] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Veterinaria]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Veterinaria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Duenio] [nvarchar](50) NULL,
	[Nombre] [nvarchar](50) NULL,
	[DescripcionUrgencia] [nvarchar](max) NULL,
	[FechaEntrada] [datetime] NULL,
	[FechaSalida] [datetime] NULL,
 CONSTRAINT [PK_Veterinaria] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[st_cancelarCita]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[st_cancelarCita]
(
	@Id int,
	@Duenio nvarchar(50),
	@Mascota nvarchar(50),
	@FechaEntrada datetime,
	@hora nvarchar(50),
	@Servicio nvarchar(50),
	@IdOut int out,
	@SinError bit out,
	@Mensaje nvarchar(500) out
)
as
set @IdOut = 0
set @SinError = 1
set @Mensaje = 'Cita cancelada correctamente'

begin try 
	
	if (isnull(@Id,0) = 0)
	begin
		declare @precio money
		declare @aux int = 0
		set @FechaEntrada = @FechaEntrada+@hora
		if not exists(select top 1 @Id from Servicios where Duenio=@Duenio and Mascota=@Mascota and FechaEntrada=@FechaEntrada and Servicio=@Servicio)
		begin
			set @SinError = 0
			set @Mensaje = 'No existe la cita en esa fecha'
			return
		end

		if exists(select top 1 @Id from Servicios where Duenio=@Duenio and Mascota=@Mascota and FechaEntrada=@FechaEntrada and Servicio=@Servicio and Estado='Completo')
		begin
			set @SinError = 0
			set @Mensaje = 'La cita ya fue completada'
			return
		end

		if exists(select top 1 @Id from Servicios where Duenio=@Duenio and Mascota=@Mascota and FechaEntrada=@FechaEntrada and Servicio=@Servicio and Estado='Cancelado')
		begin
			set @SinError = 0
			set @Mensaje = 'La cita ya fue cancelada'
			return
		end

		begin tran

			if (@Servicio = 'Estilista Basico')
			begin

				select @precio=PrecioEBasico from Precios

				delete from EstilistaBasico where Duenio=@Duenio and Nombre=@Mascota and FechaEntrada=@FechaEntrada

				update Servicios set Estado = 'Cancelado' where Duenio=@Duenio and Mascota=@Mascota and FechaEntrada=@FechaEntrada and Servicio=@Servicio

				update Usuarios set Saldo = Saldo-@precio where Usuario=@Duenio
				return
			end

			if (@Servicio = 'Estilista Medio')
			begin 
				select @precio=PrecioEMedio from Precios

				delete from EstilistaMedio where Duenio=@Duenio and Nombre=@Mascota and FechaEntrada=@FechaEntrada

				update Servicios set Estado = 'Cancelado' where Duenio=@Duenio and Mascota=@Mascota and FechaEntrada=@FechaEntrada and Servicio=@Servicio

				update Usuarios set Saldo = Saldo-@precio where Usuario=@Duenio
				return
			end

			if (@Servicio = 'Estilista Completo')
			begin 
				select @precio=PrecioECompleto from Precios

				delete from EstilistaCompleto where Duenio=@Duenio and Nombre=@Mascota and FechaEntrada=@FechaEntrada

				update Servicios set Estado = 'Cancelado' where Duenio=@Duenio and Mascota=@Mascota and FechaEntrada=@FechaEntrada and Servicio=@Servicio

				update Usuarios set Saldo = Saldo-@precio where Usuario=@Duenio
			end

			
	end

	commit

end try

begin catch

	rollback
	
	set @SinError = 0
	set @Mensaje = 'Error de base de datos, contactar al administrados'

end catch

return @SinError
GO
/****** Object:  StoredProcedure [dbo].[st_completarrCita]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[st_completarrCita]
(
	@Duenio nvarchar(50),
	@Mascota nvarchar(50),
	@FechaEntrada datetime,
	@Servicio nvarchar(50),
	@SinError bit out
)
as
set @SinError = 1

declare @precio money

if (@Servicio = 'Estilista Basico')
begin

	select @precio=PrecioEBasico from Precios
	update Servicios set Estado = 'Completo' where Duenio=@Duenio and Mascota=@Mascota and FechaEntrada=@FechaEntrada and Servicio=@Servicio

	update Usuarios set Saldo = Saldo-@precio where Usuario=@Duenio
	return
end

if (@Servicio = 'Estilista Medio')
begin 
	select @precio=PrecioEMedio from Precios
	update Servicios set Estado = 'Completo' where Duenio=@Duenio and Mascota=@Mascota and FechaEntrada=@FechaEntrada and Servicio=@Servicio

	update Usuarios set Saldo = Saldo-@precio where Usuario=@Duenio
	return
end

if (@Servicio = 'Estilista Completo')
begin 
	select @precio=PrecioECompleto from Precios
	update Servicios set Estado = 'Completo' where Duenio=@Duenio and Mascota=@Mascota and FechaEntrada=@FechaEntrada and Servicio=@Servicio

	update Usuarios set Saldo = Saldo-@precio where Usuario=@Duenio
end

if (@Servicio = 'Veterinaria')
begin 
	select @precio=PrecioVeterinaria from Precios
	update Servicios set Estado = 'Completo' where Duenio=@Duenio and Mascota=@Mascota and FechaEntrada=@FechaEntrada and Servicio=@Servicio

	update Usuarios set Saldo = Saldo-@precio where Usuario=@Duenio
end

if (@Servicio = 'Hospedaje')
begin 
	update Servicios set Estado = 'Completo' where Duenio=@Duenio and Mascota=@Mascota and FechaEntrada=@FechaEntrada and Servicio=@Servicio
	select @precio=Precio from Servicios where Duenio=@Duenio and Mascota=@Mascota and FechaEntrada=@FechaEntrada and Servicio=@Servicio
	update Usuarios set Saldo = Saldo-@precio where Usuario=@Duenio
end
GO
/****** Object:  StoredProcedure [dbo].[st_getHistorialServicios]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[st_getHistorialServicios]
(
	@Duenio nvarchar(50)
)
as
SELECT * FROM Servicios where Duenio = @Duenio and Estado = 'Completo'
GO
/****** Object:  StoredProcedure [dbo].[st_getPrecios]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[st_getPrecios]
as
SELECT * FROM Precios
GO
/****** Object:  StoredProcedure [dbo].[st_getReporteporDia]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[st_getReporteporDia]
as
SELECT * FROM Servicios order by FechaEntrada
GO
/****** Object:  StoredProcedure [dbo].[st_getReporteporEmpleado]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[st_getReporteporEmpleado]
as
SELECT * FROM Servicios order by Empleado
GO
/****** Object:  StoredProcedure [dbo].[st_getReporteporServicio]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[st_getReporteporServicio]
as
SELECT * FROM Servicios order by Servicio
GO
/****** Object:  StoredProcedure [dbo].[st_getReporteUsuarios]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[st_getReporteUsuarios]
as
SELECT * FROM Usuarios where Rol='Veterinario' or Rol='Estilista' or Rol='Cliente'
GO
/****** Object:  StoredProcedure [dbo].[st_getServiciosEstetica]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[st_getServiciosEstetica]
as
SELECT * FROM Servicios where Servicio = 'Estilista Basico' or Servicio = 'Estilista Medio' or Servicio = 'Estilista Completo'
GO
/****** Object:  StoredProcedure [dbo].[st_getServiciosHospedaje]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[st_getServiciosHospedaje]
as
SELECT * FROM Servicios where Servicio = 'Hospedaje'
GO
/****** Object:  StoredProcedure [dbo].[st_getServiciosVeterinaria]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[st_getServiciosVeterinaria]
as
SELECT * FROM Servicios where Servicio = 'Veterinaria'
GO
/****** Object:  StoredProcedure [dbo].[st_guardarEBasico]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[st_guardarEBasico]
(
	@Id int,
	@Duenio nvarchar(50),
	@Nombre nvarchar(50),
	@FechaEntrada datetime,
	@hora nvarchar(50),
	@IdOut int out,
	@SinError bit out,
	@Mensaje nvarchar(500) out
)
as
set @IdOut = 0
set @SinError = 1
set @Mensaje = 'Estilista Basico registrado correctamente'

begin try 
	
	if (isnull(@Id,0) = 0)
	begin
		set @FechaEntrada = @FechaEntrada+@hora
		if (@FechaEntrada <= GETDATE())
		begin
			set @SinError = 0
			set @Mensaje = 'No puede hacer citas en fechas pasadas'
			return
		end
		if exists(select top 1 @Id from EstilistaBasico where FechaEntrada=@FechaEntrada)
		begin
			set @SinError = 0
			set @Mensaje = 'Ya existe una cita en esa fecha'
			return
		end
		if exists(select top 1 @Id from EstilistaMedio where FechaEntrada=@FechaEntrada)
		begin
			set @SinError = 0
			set @Mensaje = 'Ya existe una cita en esa fecha'
			return
		end
		if exists(select top 1 @Id from EstilistaCompleto where FechaEntrada=@FechaEntrada)
		begin
			set @SinError = 0
			set @Mensaje = 'Ya existe una cita en esa fecha'
			return
		end

		declare @empleado nvarchar(50)
		select @empleado=Nombre from Usuarios where Rol = 'Estilista'
		begin tran
			declare @precio money
			select @precio=PrecioEBasico from Precios

			insert into EstilistaBasico
			(Duenio, Nombre, FechaEntrada, FechaSalida, PrecioBasico, TiempoServicio)
			values
			(@Duenio,@Nombre,@FechaEntrada,@FechaEntrada+'01:00:00',@precio,'01:00:00')

			set @Id = SCOPE_IDENTITY()

			insert into Servicios
			(Servicio, Duenio, Mascota, Precio, FechaEntrada, FechaSalida, Empleado, Estado)
			values
			('Estilista Basico',@Duenio,@Nombre,@precio,@FechaEntrada,@FechaEntrada+'01:00:00',@empleado,'Incompleto')

			update Usuarios set Saldo = Saldo+@precio where Usuario=@Duenio
	end

	commit

end try

begin catch

	rollback
	
	set @SinError = 0
	set @Mensaje = 'Error de base de datos, contactar al administrados'

end catch

return @SinError
GO
/****** Object:  StoredProcedure [dbo].[st_guardarECompleto]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[st_guardarECompleto]
(
	@Id int,
	@Duenio nvarchar(50),
	@Nombre nvarchar(50),
	@FechaEntrada datetime,
	@hora nvarchar(50),
	@IdOut int out,
	@SinError bit out,
	@Mensaje nvarchar(500) out
)
as
set @IdOut = 0
set @SinError = 1
set @Mensaje = 'Estilista Completo registrado correctamente'

begin try 
	
	if (isnull(@Id,0) = 0)
	begin
		set @FechaEntrada = @FechaEntrada+@hora
		if (@FechaEntrada <= GETDATE())
		begin
			set @SinError = 0
			set @Mensaje = 'No puede hacer citas en fechas pasadas'
			return
		end

		if exists(select top 1 @Id from EstilistaBasico where FechaEntrada=@FechaEntrada)
		begin
			set @SinError = 0
			set @Mensaje = 'Ya existe una cita en esa fecha'
			return
		end
		if exists(select top 1 @Id from EstilistaMedio where FechaEntrada=@FechaEntrada)
		begin
			set @SinError = 0
			set @Mensaje = 'Ya existe una cita en esa fecha'
			return
		end
		if exists(select top 1 @Id from EstilistaCompleto where FechaEntrada=@FechaEntrada)
		begin
			set @SinError = 0
			set @Mensaje = 'Ya existe una cita en esa fecha'
			return
		end

		declare @empleado nvarchar(50)
		select @empleado=Nombre from Usuarios where Rol = 'Estilista'

		begin tran
			declare @precio money
			select @precio=PrecioECompleto from Precios

			insert into EstilistaCompleto
			(Duenio, Nombre, FechaEntrada, FechaSalida, PrecioCompleto, Tiempo)
			values
			(@Duenio,@Nombre,@FechaEntrada,@FechaEntrada+'02:00:00',@precio,'02:00:00')

			set @Id = SCOPE_IDENTITY()

			insert into Servicios
			(Servicio, Duenio, Mascota, Precio, FechaEntrada, FechaSalida, Empleado, Estado)
			values
			('Estilista Completo',@Duenio,@Nombre,@precio,@FechaEntrada,@FechaEntrada+'02:00:00',@empleado,'Incompleto')

			update Usuarios set Saldo = Saldo+@precio where Usuario=@Duenio
	end

	commit

end try

begin catch

	rollback
	
	set @SinError = 0
	set @Mensaje = 'Error de base de datos, contactar al administrados'

end catch

return @SinError
GO
/****** Object:  StoredProcedure [dbo].[st_guardarEMedio]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[st_guardarEMedio]
(
	@Id int,
	@Duenio nvarchar(50),
	@Nombre nvarchar(50),
	@FechaEntrada datetime,
	@hora nvarchar(50),
	@IdOut int out,
	@SinError bit out,
	@Mensaje nvarchar(500) out
)
as
set @IdOut = 0
set @SinError = 1
set @Mensaje = 'Estilista Medio registrado correctamente'

begin try 
	
	if (isnull(@Id,0) = 0)
	begin
		set @FechaEntrada = @FechaEntrada+@hora
		if (@FechaEntrada <= GETDATE())
		begin
			set @SinError = 0
			set @Mensaje = 'No puede hacer citas en fechas pasadas'
			return
		end

		if exists(select top 1 @Id from EstilistaBasico where FechaEntrada=@FechaEntrada)
		begin
			set @SinError = 0
			set @Mensaje = 'Ya existe una cita en esa fecha'
			return
		end
		if exists(select top 1 @Id from EstilistaMedio where FechaEntrada=@FechaEntrada)
		begin
			set @SinError = 0
			set @Mensaje = 'Ya existe una cita en esa fecha'
			return
		end
		if exists(select top 1 @Id from EstilistaCompleto where FechaEntrada=@FechaEntrada)
		begin
			set @SinError = 0
			set @Mensaje = 'Ya existe una cita en esa fecha'
			return
		end

		declare @empleado nvarchar(50)
		select @empleado=Nombre from Usuarios where Rol = 'Estilista'

		begin tran
			declare @precio money
			select @precio=PrecioEMedio from Precios

			insert into EstilistaMedio
			(Duenio, Nombre, FechaEntrada, FechaSalida, PrecioMedio, Tiempo)
			values
			(@Duenio,@Nombre,@FechaEntrada,@FechaEntrada+'01:30:00',@precio,'01:30:00')

			set @Id = SCOPE_IDENTITY()

			insert into Servicios
			(Servicio, Duenio, Mascota, Precio, FechaEntrada, FechaSalida, Empleado, Estado)
			values
			('Estilista Medio',@Duenio,@Nombre,@precio,@FechaEntrada,@FechaEntrada+'01:30:00',@empleado,'Incompleto')

			update Usuarios set Saldo = Saldo+@precio where Usuario=@Duenio
	end

	commit

end try

begin catch

	rollback
	
	set @SinError = 0
	set @Mensaje = 'Error de base de datos, contactar al administrados'

end catch

return @SinError
GO
/****** Object:  StoredProcedure [dbo].[st_guardarHospedaje]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[st_guardarHospedaje]
(
	@Id int,
	@Mascota nvarchar(50),
	@Duenio nvarchar(50),
	@FechaEntrada datetime,
	@habitacion int,
	@dias int,
	@IdOut int out,
	@SinError bit out,
	@Mensaje nvarchar(500) out
)
as
set @IdOut = 0
set @SinError = 1
set @Mensaje = 'Hospedaje registrado correctamente'

begin try 
	
	if (isnull(@Id,0) = 0)
	begin
		
		if (@FechaEntrada < GETDATE())
		begin
			set @SinError = 0
			set @Mensaje = 'No puede hacer citas en fechas pasadas'
			return
		end

		declare @auxFecha datetime = @FechaEntrada
		declare @auxdias int = @dias
		declare @cont int = 0

		print(@auxFecha)

		WHILE @auxdias > 0 
		BEGIN
			SELECT @cont = COUNT(@auxFecha) FROM Hospedaje
			if (@cont >= 15)
			begin
				set @SinError = 0
				set @Mensaje = 'Cupo de mascotas excedido'
				return
			end
			set @auxdias = @auxdias-1
			set @auxFecha = DATEADD(DAY,1,@auxFecha);
	
		END  
		
		declare @empleado nvarchar(50)
		select @empleado=Nombre from Usuarios where Rol = 'Administrador'

		begin tran
			insert into Hospedaje
			(Mascota, Duenio, FechaEntrada, FechaSalida, Habitacion, Dias)
			values
			(@Mascota, @Duenio, @FechaEntrada, @auxFecha, @habitacion, @dias)

			set @Id = SCOPE_IDENTITY()

			declare @precio money
			select @precio=PrecioHospedaje from Precios

			insert into Servicios
			(Servicio, Duenio, Mascota, Precio, FechaEntrada, FechaSalida, Empleado, Estado)
			values
			('Hospedaje',@Duenio,@Mascota,@precio*@dias,@FechaEntrada,@auxFecha,@empleado,'Incompleto')

			update Usuarios set Saldo = Saldo+@precio*@dias where Usuario=@Duenio

	end

	commit

end try

begin catch

	rollback
	
	set @SinError = 0
	set @Mensaje = 'Error de base de datos, contactar al administrados'

end catch

return @SinError
GO
/****** Object:  StoredProcedure [dbo].[st_guardarusuario]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[st_guardarusuario]
(
	@Id int,
	@Nombre nvarchar(50),
	@Apellidos nvarchar(50),
	@telefono nvarchar(50),
	@usuario nvarchar(50),
	@Contrasenia nvarchar(50),
	@IdOut int out,
	@SinError bit out,
	@Mensaje nvarchar(500) out
)
as
set @IdOut = 0
set @SinError = 1
set @Mensaje = 'Usuario registrado correctamente'

begin try 
	
	if (isnull(@Id,0) = 0)
	begin
		--insert
		if exists(select top 1 @Id from Usuarios where Usuario=@usuario)
		begin
			set @SinError = 0
			set @Mensaje = 'Nombre usuario ya existe'
			return
		end
		begin tran
			insert into Usuarios
			(Nombre, Apellidos, Telefono, Usuario, Contrasenia, rol, Saldo)
			values
			(@Nombre,@Apellidos,@telefono,@usuario,@Contrasenia,'Cliente',0)

			set @Id = SCOPE_IDENTITY()
	end

	commit

end try

begin catch

	rollback
	
	set @SinError = 0
	set @Mensaje = 'Error de base de datos, contactar al administrados'

end catch

return @SinError
GO
/****** Object:  StoredProcedure [dbo].[st_guardarVeterinaria]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[st_guardarVeterinaria]
(
	@Id int,
	@Duenio nvarchar(50),
	@Nombre nvarchar(50),
	@DescripcionUrgencia nvarchar(max),
	@FechaEntrada datetime,
	@hora nvarchar(50),
	@IdOut int out,
	@SinError bit out,
	@Mensaje nvarchar(500) out
)
as
set @IdOut = 0
set @SinError = 1
set @Mensaje = 'Cita veterinaria registrada correctamente'

begin try 
	
	if (isnull(@Id,0) = 0)
	begin
		
		set @FechaEntrada = @FechaEntrada+@hora

		if (@FechaEntrada < GETDATE())
		begin
			set @SinError = 0
			set @Mensaje = 'No puede hacer citas en fechas pasadas'
			return
		end

		if exists(select top 1 @Id from Veterinaria where FechaEntrada=@FechaEntrada)
		begin
			set @SinError = 0
			set @Mensaje = 'Ya existe una cita en esa fecha'
			return
		end
		
		declare @empleado nvarchar(50)
		select @empleado=Nombre from Usuarios where Rol = 'Veterinario'

		begin tran
			
			declare @precio money
			select @precio=PrecioVeterinaria from Precios

			insert into Veterinaria
			(Duenio, Nombre, DescripcionUrgencia, FechaEntrada, FechaSalida)
			values
			(@Duenio,@Nombre,@DescripcionUrgencia,@FechaEntrada,@FechaEntrada+'01:00:00')

			set @Id = SCOPE_IDENTITY()

			insert into Servicios
			(Servicio, Duenio, Mascota, Precio, FechaEntrada, FechaSalida, Empleado, Estado)
			values
			('Veterinaria',@Duenio,@Nombre,@precio,@FechaEntrada,@FechaEntrada+'01:00:00',@empleado,'Incompleto')

			update Usuarios set Saldo = Saldo+@precio where Usuario=@Duenio
	end

	commit

end try

begin catch

	rollback
	
	set @SinError = 0
	set @Mensaje = 'Error de base de datos, contactar al administrados'

end catch

return @SinError
GO
/****** Object:  StoredProcedure [dbo].[st_modificarPrecios]    Script Date: 11/12/2020 18:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[st_modificarPrecios]
(
	@NombrePrecio nvarchar(50),
	@NuevoPrecio money
)
as

if (@NombrePrecio = 'PrecioEBasico')
begin
	update Precios set PrecioEBasico = @NuevoPrecio
	return
end

if (@NombrePrecio = 'PrecioEMedio')
begin 
	update Precios set PrecioEMedio = @NuevoPrecio
	return
end

if (@NombrePrecio = 'PrecioECompleto')
begin 
	update Precios set PrecioECompleto = @NuevoPrecio
end

if (@NombrePrecio = 'PrecioVeterinaria')
begin 
	update Precios set PrecioVeterinaria = @NuevoPrecio
end

if (@NombrePrecio = 'PrecioHospedaje')
begin 
	update Precios set PrecioHospedaje = @NuevoPrecio
end
GO
USE [master]
GO
ALTER DATABASE [Mascotas] SET  READ_WRITE 
GO
