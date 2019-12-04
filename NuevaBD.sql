USE [master]
GO
/****** Object:  Database [PlataformaWeb]    Script Date: 03/12/2019 08:14:37 p. m. ******/
CREATE DATABASE [PlataformaWeb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PlataformaWeb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\PlataformaWeb.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PlataformaWeb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\PlataformaWeb_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PlataformaWeb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PlataformaWeb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PlataformaWeb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PlataformaWeb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PlataformaWeb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PlataformaWeb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PlataformaWeb] SET ARITHABORT OFF 
GO
ALTER DATABASE [PlataformaWeb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PlataformaWeb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [PlataformaWeb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PlataformaWeb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PlataformaWeb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PlataformaWeb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PlataformaWeb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PlataformaWeb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PlataformaWeb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PlataformaWeb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PlataformaWeb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PlataformaWeb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PlataformaWeb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PlataformaWeb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PlataformaWeb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PlataformaWeb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PlataformaWeb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PlataformaWeb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PlataformaWeb] SET RECOVERY FULL 
GO
ALTER DATABASE [PlataformaWeb] SET  MULTI_USER 
GO
ALTER DATABASE [PlataformaWeb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PlataformaWeb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PlataformaWeb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PlataformaWeb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PlataformaWeb', N'ON'
GO
USE [PlataformaWeb]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 03/12/2019 08:14:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumnos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NumeroControl] [int] NULL,
	[carrera] [varchar](50) NULL,
	[IDusuario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Asistencias]    Script Date: 03/12/2019 08:14:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asistencias](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[numasistencias] [int] NULL,
	[numasistenciatotales] [int] NULL,
	[idCargamaestro] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Calificaciones]    Script Date: 03/12/2019 08:14:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificaciones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdAlumno] [int] NULL,
	[IdHorario] [int] NULL,
	[Calificacion] [int] NULL,
	[CantidadRespuesta] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cargas]    Script Date: 03/12/2019 08:14:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Idmaestro] [int] NULL,
	[idmateria] [int] NULL,
	[idsalon] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Examenes]    Script Date: 03/12/2019 08:14:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Examenes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tiempoExamen] [varchar](50) NULL,
	[minutos] [int] NULL,
	[horario] [int] NULL,
	[preguntas] [int] NULL,
	[idCargaMaestro] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Maestros]    Script Date: 03/12/2019 08:14:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestros](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Clave] [int] NULL,
	[IdUsuario] [int] NULL,
	[NombreMaestro] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Materias]    Script Date: 03/12/2019 08:14:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Materias](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NombreMateria] [varchar](50) NULL,
	[ClaveMateria] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[migrations]    Script Date: 03/12/2019 08:14:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[migrations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[migration] [nvarchar](255) NOT NULL,
	[batch] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Parametros]    Script Date: 03/12/2019 08:14:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parametros](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdCargaMaestro] [int] NULL,
	[Examenes] [int] NULL,
	[tareas] [int] NULL,
	[asistencias] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[password_resets]    Script Date: 03/12/2019 08:14:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[password_resets](
	[email] [nvarchar](255) NOT NULL,
	[token] [nvarchar](255) NOT NULL,
	[created_at] [nvarchar](191) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 03/12/2019 08:14:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Preguntas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pregunta] [varchar](100) NULL,
	[valor] [int] NULL,
	[tipoPregunta] [varchar](100) NULL,
	[Respuestas] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Respuestas]    Script Date: 03/12/2019 08:14:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Respuestas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[respuesta] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 03/12/2019 08:14:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NombreRol] [varchar](20) NULL,
	[permisoRol] [varchar](300) NULL,
	[updated_at] [nvarchar](191) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Salones]    Script Date: 03/12/2019 08:14:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Salones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[salon] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TareaAlumnos]    Script Date: 03/12/2019 08:14:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TareaAlumnos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idalumno] [int] NULL,
	[idcargamaestro] [int] NULL,
	[tareasubida] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tareas]    Script Date: 03/12/2019 08:14:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tareas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombretarea] [varchar](30) NULL,
	[intcargarmaestro] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 03/12/2019 08:14:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[apellidoP] [nvarchar](255) NOT NULL,
	[apellidoM] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[remember_token] [nvarchar](100) NULL,
	[numeroCel] [nvarchar](255) NOT NULL,
	[Curp] [nvarchar](255) NOT NULL,
	[direccion] [nvarchar](255) NOT NULL,
	[Rol] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 03/12/2019 08:14:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](25) NULL,
	[apellidoP] [varchar](25) NULL,
	[apellidoM] [varchar](25) NULL,
	[correo] [varchar](50) NULL,
	[numeroCel] [char](10) NULL,
	[Curp] [varchar](18) NULL,
	[direccion] [varchar](200) NULL,
	[Rol] [int] NULL,
	[updated_at] [nvarchar](191) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [password_resets_email_index]    Script Date: 03/12/2019 08:14:37 p. m. ******/
CREATE NONCLUSTERED INDEX [password_resets_email_index] ON [dbo].[password_resets]
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [users_email_unique]    Script Date: 03/12/2019 08:14:37 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [users_email_unique] ON [dbo].[users]
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Alumnos]  WITH CHECK ADD FOREIGN KEY([IDusuario])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[Alumnos]  WITH CHECK ADD FOREIGN KEY([IDusuario])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[Asistencias]  WITH CHECK ADD FOREIGN KEY([idCargamaestro])
REFERENCES [dbo].[Cargas] ([id])
GO
ALTER TABLE [dbo].[Asistencias]  WITH CHECK ADD FOREIGN KEY([idCargamaestro])
REFERENCES [dbo].[Cargas] ([id])
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD FOREIGN KEY([IdAlumno])
REFERENCES [dbo].[Alumnos] ([id])
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD FOREIGN KEY([IdAlumno])
REFERENCES [dbo].[Alumnos] ([id])
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Cargas] ([id])
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Cargas] ([id])
GO
ALTER TABLE [dbo].[Cargas]  WITH CHECK ADD FOREIGN KEY([Idmaestro])
REFERENCES [dbo].[Maestros] ([id])
GO
ALTER TABLE [dbo].[Cargas]  WITH CHECK ADD FOREIGN KEY([Idmaestro])
REFERENCES [dbo].[Maestros] ([id])
GO
ALTER TABLE [dbo].[Cargas]  WITH CHECK ADD FOREIGN KEY([idmateria])
REFERENCES [dbo].[Materias] ([id])
GO
ALTER TABLE [dbo].[Cargas]  WITH CHECK ADD FOREIGN KEY([idmateria])
REFERENCES [dbo].[Materias] ([id])
GO
ALTER TABLE [dbo].[Cargas]  WITH CHECK ADD FOREIGN KEY([idsalon])
REFERENCES [dbo].[Salones] ([id])
GO
ALTER TABLE [dbo].[Cargas]  WITH CHECK ADD FOREIGN KEY([idsalon])
REFERENCES [dbo].[Salones] ([id])
GO
ALTER TABLE [dbo].[Examenes]  WITH CHECK ADD FOREIGN KEY([idCargaMaestro])
REFERENCES [dbo].[Cargas] ([id])
GO
ALTER TABLE [dbo].[Examenes]  WITH CHECK ADD FOREIGN KEY([idCargaMaestro])
REFERENCES [dbo].[Cargas] ([id])
GO
ALTER TABLE [dbo].[Examenes]  WITH CHECK ADD FOREIGN KEY([preguntas])
REFERENCES [dbo].[Preguntas] ([id])
GO
ALTER TABLE [dbo].[Examenes]  WITH CHECK ADD FOREIGN KEY([preguntas])
REFERENCES [dbo].[Preguntas] ([id])
GO
ALTER TABLE [dbo].[Maestros]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[Maestros]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[Parametros]  WITH CHECK ADD FOREIGN KEY([IdCargaMaestro])
REFERENCES [dbo].[Cargas] ([id])
GO
ALTER TABLE [dbo].[Parametros]  WITH CHECK ADD FOREIGN KEY([IdCargaMaestro])
REFERENCES [dbo].[Cargas] ([id])
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD FOREIGN KEY([Respuestas])
REFERENCES [dbo].[Respuestas] ([id])
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD FOREIGN KEY([Respuestas])
REFERENCES [dbo].[Respuestas] ([id])
GO
ALTER TABLE [dbo].[TareaAlumnos]  WITH CHECK ADD FOREIGN KEY([idcargamaestro])
REFERENCES [dbo].[Cargas] ([id])
GO
ALTER TABLE [dbo].[TareaAlumnos]  WITH CHECK ADD FOREIGN KEY([idcargamaestro])
REFERENCES [dbo].[Cargas] ([id])
GO
ALTER TABLE [dbo].[Tareas]  WITH CHECK ADD FOREIGN KEY([intcargarmaestro])
REFERENCES [dbo].[Cargas] ([id])
GO
ALTER TABLE [dbo].[Tareas]  WITH CHECK ADD FOREIGN KEY([intcargarmaestro])
REFERENCES [dbo].[Cargas] ([id])
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD FOREIGN KEY([Rol])
REFERENCES [dbo].[Roles] ([id])
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD FOREIGN KEY([Rol])
REFERENCES [dbo].[Roles] ([id])
GO
USE [master]
GO
ALTER DATABASE [PlataformaWeb] SET  READ_WRITE 
GO
