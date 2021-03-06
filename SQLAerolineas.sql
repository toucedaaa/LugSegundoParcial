USE [Aerolineas]
GO
/****** Object:  Table [dbo].[Destinos]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destinos](
	[Id] [nchar](10) NOT NULL,
	[Destino] [varchar](50) NOT NULL,
	[Ubicacion] [varchar](100) NULL,
 CONSTRAINT [PK_Destinos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pasajero]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pasajero](
	[Dni] [nchar](10) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Pasajero] PRIMARY KEY CLUSTERED 
(
	[Dni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VueloComun]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VueloComun](
	[NroVuelo] [nchar](10) NOT NULL,
	[Destino] [varchar](50) NOT NULL,
	[Partida] [varchar](50) NOT NULL,
	[Llegada] [varchar](50) NOT NULL,
	[AsientosDisponibles] [nchar](10) NOT NULL,
	[PorcentajeOcupacion] [nchar](10) NOT NULL,
 CONSTRAINT [PK_VueloComun] PRIMARY KEY CLUSTERED 
(
	[NroVuelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VueloComunPasajeros]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VueloComunPasajeros](
	[NroVuelo] [nchar](10) NOT NULL,
	[Dni] [nchar](10) NOT NULL,
 CONSTRAINT [PK_VueloComunPasajeros] PRIMARY KEY CLUSTERED 
(
	[NroVuelo] ASC,
	[Dni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VueloFinalizado]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VueloFinalizado](
	[Id] [nchar](10) NOT NULL,
	[Destino] [varchar](50) NOT NULL,
	[Pais] [varchar](50) NOT NULL,
	[Ciudad] [varchar](50) NOT NULL,
	[Partida] [varchar](50) NOT NULL,
	[Llegada] [varchar](50) NOT NULL,
	[AsientosDisponibles] [nchar](10) NOT NULL,
	[PorcentajeOcupacion] [nchar](10) NOT NULL,
 CONSTRAINT [PK_VuelosFinalizados] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VueloInternacional]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VueloInternacional](
	[NroVuelo] [nchar](10) NOT NULL,
	[Destino] [varchar](50) NOT NULL,
	[Pais] [varchar](50) NOT NULL,
	[Ciudad] [varchar](50) NOT NULL,
	[Partida] [varchar](50) NOT NULL,
	[Llegada] [varchar](50) NOT NULL,
	[AsientosDisponibles] [nchar](10) NOT NULL,
	[PorcentajeOcupacion] [nchar](10) NOT NULL,
 CONSTRAINT [PK_VueloInternacional] PRIMARY KEY CLUSTERED 
(
	[NroVuelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VueloInternacionalPasajeros]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VueloInternacionalPasajeros](
	[NroVuelo] [nchar](10) NOT NULL,
	[Dni] [nchar](10) NOT NULL,
 CONSTRAINT [PK_VueloInternacionalPasajeros] PRIMARY KEY CLUSTERED 
(
	[NroVuelo] ASC,
	[Dni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Destinos] ([Id], [Destino], [Ubicacion]) VALUES (N'1         ', N'Mendoza', N'https://www.google.com.ar/maps/place/Mendoza,+Capital,+Mendoza/@-35.5890092,-69.1640919,6.46z/data=!')
INSERT [dbo].[Destinos] ([Id], [Destino], [Ubicacion]) VALUES (N'10        ', N'Nuevo Mexico', N'https://www.google.com.ar/maps/place/Nuevo+M%C3%A9xico,+EE.+UU./@34.0935696,-110.5169235,6z/data=!3m')
INSERT [dbo].[Destinos] ([Id], [Destino], [Ubicacion]) VALUES (N'2         ', N'Santa Cruz', N'https://www.google.com.ar/maps/place/Santa+Cruz/@-48.4696646,-73.3391944,6.25z/data=!4m5!3m4!1s0xbdb')
INSERT [dbo].[Destinos] ([Id], [Destino], [Ubicacion]) VALUES (N'3         ', N'Buenos Aires', N'https://www.google.com.ar/maps/place/Buenos+Aires,+CABA/@-34.5992025,-58.5477372,11.25z/data=!4m5!3m')
INSERT [dbo].[Destinos] ([Id], [Destino], [Ubicacion]) VALUES (N'4         ', N'Cordoba', N'https://www.google.com.ar/maps/place/C%C3%B3rdoba/@-31.399084,-64.334427,11z/data=!3m1!4b1!4m5!3m4!1')
INSERT [dbo].[Destinos] ([Id], [Destino], [Ubicacion]) VALUES (N'5         ', N'Misiones', N'https://www.google.com.ar/maps/place/Misiones/@-26.8225548,-55.9714885,8z/data=!3m1!4b1!4m5!3m4!1s0x')
INSERT [dbo].[Destinos] ([Id], [Destino], [Ubicacion]) VALUES (N'6         ', N'Denver', N'https://www.google.com.ar/maps/place/Aurora,+Colorado,+EE.+UU./@39.6890268,-104.9670147,10z/data=!3m')
INSERT [dbo].[Destinos] ([Id], [Destino], [Ubicacion]) VALUES (N'7         ', N'Trinidad', N'https://www.google.com.ar/maps/place/85000+Trinidad,+Departamento+de+Flores,+Uruguay/@-33.5369529,-5')
INSERT [dbo].[Destinos] ([Id], [Destino], [Ubicacion]) VALUES (N'8         ', N'Amazonas', N'https://www.google.com.ar/maps/place/Amazonas,+Brasil/@-3.7238376,-73.9867366,5z/data=!3m1!4b1!4m5!3')
INSERT [dbo].[Destinos] ([Id], [Destino], [Ubicacion]) VALUES (N'9         ', N'Durango', N'https://www.google.com.ar/maps/place/Durango,+M%C3%A9xico/@24.5833546,-107.0851002,7z/data=!3m1!4b1!')
GO
INSERT [dbo].[Pasajero] ([Dni], [Nombre], [Apellido]) VALUES (N'12078526  ', N'Carlos', N'Lopez')
INSERT [dbo].[Pasajero] ([Dni], [Nombre], [Apellido]) VALUES (N'12345678  ', N'Camila', N'Garcia')
INSERT [dbo].[Pasajero] ([Dni], [Nombre], [Apellido]) VALUES (N'1235684   ', N'Lucas', N'Rodrigez')
INSERT [dbo].[Pasajero] ([Dni], [Nombre], [Apellido]) VALUES (N'13265482  ', N'Candela', N'Rodrigez')
INSERT [dbo].[Pasajero] ([Dni], [Nombre], [Apellido]) VALUES (N'15320795  ', N'Juliana', N'Rodrigez')
INSERT [dbo].[Pasajero] ([Dni], [Nombre], [Apellido]) VALUES (N'20648525  ', N'Mabel', N'Nuñez')
INSERT [dbo].[Pasajero] ([Dni], [Nombre], [Apellido]) VALUES (N'35648950  ', N'Patricia', N'Mohamed')
INSERT [dbo].[Pasajero] ([Dni], [Nombre], [Apellido]) VALUES (N'40825639  ', N'Pepe', N'Argento')
INSERT [dbo].[Pasajero] ([Dni], [Nombre], [Apellido]) VALUES (N'40855634  ', N'Pedro', N'Gonzales')
INSERT [dbo].[Pasajero] ([Dni], [Nombre], [Apellido]) VALUES (N'40855678  ', N'Nicolas', N'Touceda')
INSERT [dbo].[Pasajero] ([Dni], [Nombre], [Apellido]) VALUES (N'45023658  ', N'Juliana', N'Rodrigez')
INSERT [dbo].[Pasajero] ([Dni], [Nombre], [Apellido]) VALUES (N'54564665  ', N'Juan', N'Perez')
INSERT [dbo].[Pasajero] ([Dni], [Nombre], [Apellido]) VALUES (N'56387123  ', N'Lucas', N'Rodrigez')
INSERT [dbo].[Pasajero] ([Dni], [Nombre], [Apellido]) VALUES (N'65379250  ', N'Emilia', N'Perez')
INSERT [dbo].[Pasajero] ([Dni], [Nombre], [Apellido]) VALUES (N'78625410  ', N'Camila', N'Martinez')
INSERT [dbo].[Pasajero] ([Dni], [Nombre], [Apellido]) VALUES (N'89365014  ', N'Diego', N'Lopez')
INSERT [dbo].[Pasajero] ([Dni], [Nombre], [Apellido]) VALUES (N'89634150  ', N'Federico', N'Sanchez')
GO
INSERT [dbo].[VueloComun] ([NroVuelo], [Destino], [Partida], [Llegada], [AsientosDisponibles], [PorcentajeOcupacion]) VALUES (N'1         ', N'Mendoza', N'25/11/2020 05:00', N'25/11/2020 15:00', N'6         ', N'100       ')
INSERT [dbo].[VueloComun] ([NroVuelo], [Destino], [Partida], [Llegada], [AsientosDisponibles], [PorcentajeOcupacion]) VALUES (N'2         ', N'Misiones', N'25/11/2020 05:00', N'25/11/2020 19:00', N'6         ', N'33        ')
INSERT [dbo].[VueloComun] ([NroVuelo], [Destino], [Partida], [Llegada], [AsientosDisponibles], [PorcentajeOcupacion]) VALUES (N'3         ', N'Cordoba', N'25/11/2020 07:00', N'26/11/2020 17:00', N'6         ', N'16        ')
INSERT [dbo].[VueloComun] ([NroVuelo], [Destino], [Partida], [Llegada], [AsientosDisponibles], [PorcentajeOcupacion]) VALUES (N'4         ', N'Buenos Aires', N'28/11/2020 02:30', N'29/1/2021 13:30', N'6         ', N'0         ')
INSERT [dbo].[VueloComun] ([NroVuelo], [Destino], [Partida], [Llegada], [AsientosDisponibles], [PorcentajeOcupacion]) VALUES (N'5         ', N'Santa Cruz', N'28/11/2020 06:00', N'29/1/2021 18:30', N'10        ', N'20        ')
GO
INSERT [dbo].[VueloComunPasajeros] ([NroVuelo], [Dni]) VALUES (N'1         ', N'12078526  ')
INSERT [dbo].[VueloComunPasajeros] ([NroVuelo], [Dni]) VALUES (N'1         ', N'12345678  ')
INSERT [dbo].[VueloComunPasajeros] ([NroVuelo], [Dni]) VALUES (N'1         ', N'1235684   ')
INSERT [dbo].[VueloComunPasajeros] ([NroVuelo], [Dni]) VALUES (N'1         ', N'13265482  ')
INSERT [dbo].[VueloComunPasajeros] ([NroVuelo], [Dni]) VALUES (N'1         ', N'15320795  ')
INSERT [dbo].[VueloComunPasajeros] ([NroVuelo], [Dni]) VALUES (N'1         ', N'20648525  ')
INSERT [dbo].[VueloComunPasajeros] ([NroVuelo], [Dni]) VALUES (N'2         ', N'78625410  ')
INSERT [dbo].[VueloComunPasajeros] ([NroVuelo], [Dni]) VALUES (N'2         ', N'89365014  ')
INSERT [dbo].[VueloComunPasajeros] ([NroVuelo], [Dni]) VALUES (N'3         ', N'65379250  ')
INSERT [dbo].[VueloComunPasajeros] ([NroVuelo], [Dni]) VALUES (N'5         ', N'40855634  ')
INSERT [dbo].[VueloComunPasajeros] ([NroVuelo], [Dni]) VALUES (N'5         ', N'56387123  ')
GO
INSERT [dbo].[VueloFinalizado] ([Id], [Destino], [Pais], [Ciudad], [Partida], [Llegada], [AsientosDisponibles], [PorcentajeOcupacion]) VALUES (N'1         ', N'Santa Cruz', N'----', N'----', N'20/1/2021 02:00', N'21/1/2021 14:30', N'30        ', N'3         ')
INSERT [dbo].[VueloFinalizado] ([Id], [Destino], [Pais], [Ciudad], [Partida], [Llegada], [AsientosDisponibles], [PorcentajeOcupacion]) VALUES (N'2         ', N'Denver', N'Estados Unidos', N'Aurora', N'18/11/2020 05:00', N'19/11/2020 07:00', N'10        ', N'80        ')
GO
INSERT [dbo].[VueloInternacional] ([NroVuelo], [Destino], [Pais], [Ciudad], [Partida], [Llegada], [AsientosDisponibles], [PorcentajeOcupacion]) VALUES (N'1         ', N'Denver', N'Estados Unidos', N'Aurora', N'18/11/2020 02:30', N'19/11/2020 04:00', N'10        ', N'40        ')
INSERT [dbo].[VueloInternacional] ([NroVuelo], [Destino], [Pais], [Ciudad], [Partida], [Llegada], [AsientosDisponibles], [PorcentajeOcupacion]) VALUES (N'3         ', N'Trinidad', N'Uruguay', N'Parque Centenario', N'19/11/2020 05:00', N'19/11/2020 20:00', N'10        ', N'20        ')
INSERT [dbo].[VueloInternacional] ([NroVuelo], [Destino], [Pais], [Ciudad], [Partida], [Llegada], [AsientosDisponibles], [PorcentajeOcupacion]) VALUES (N'4         ', N'Amazonas', N'Brasil', N'Urucu', N'19/11/2020 06:30', N'19/11/2020 23:30', N'15        ', N'20        ')
INSERT [dbo].[VueloInternacional] ([NroVuelo], [Destino], [Pais], [Ciudad], [Partida], [Llegada], [AsientosDisponibles], [PorcentajeOcupacion]) VALUES (N'5         ', N'Durango', N'Mexico', N'Nuevo Ideal', N'20/11/2020 05:00', N'21/11/2020 00:30', N'10        ', N'0         ')
INSERT [dbo].[VueloInternacional] ([NroVuelo], [Destino], [Pais], [Ciudad], [Partida], [Llegada], [AsientosDisponibles], [PorcentajeOcupacion]) VALUES (N'6         ', N'Nuevo Mexico', N'Estados Unidos', N'Albuquerque', N'20/11/2020 08:30', N'21/11/2020 04:00', N'10        ', N'30        ')
GO
INSERT [dbo].[VueloInternacionalPasajeros] ([NroVuelo], [Dni]) VALUES (N'1         ', N'12345678  ')
INSERT [dbo].[VueloInternacionalPasajeros] ([NroVuelo], [Dni]) VALUES (N'1         ', N'56387123  ')
INSERT [dbo].[VueloInternacionalPasajeros] ([NroVuelo], [Dni]) VALUES (N'1         ', N'65379250  ')
INSERT [dbo].[VueloInternacionalPasajeros] ([NroVuelo], [Dni]) VALUES (N'1         ', N'89365014  ')
INSERT [dbo].[VueloInternacionalPasajeros] ([NroVuelo], [Dni]) VALUES (N'3         ', N'40855634  ')
INSERT [dbo].[VueloInternacionalPasajeros] ([NroVuelo], [Dni]) VALUES (N'3         ', N'54564665  ')
INSERT [dbo].[VueloInternacionalPasajeros] ([NroVuelo], [Dni]) VALUES (N'4         ', N'40825639  ')
INSERT [dbo].[VueloInternacionalPasajeros] ([NroVuelo], [Dni]) VALUES (N'4         ', N'89365014  ')
INSERT [dbo].[VueloInternacionalPasajeros] ([NroVuelo], [Dni]) VALUES (N'4         ', N'89634150  ')
INSERT [dbo].[VueloInternacionalPasajeros] ([NroVuelo], [Dni]) VALUES (N'6         ', N'20648525  ')
INSERT [dbo].[VueloInternacionalPasajeros] ([NroVuelo], [Dni]) VALUES (N'6         ', N'65379250  ')
INSERT [dbo].[VueloInternacionalPasajeros] ([NroVuelo], [Dni]) VALUES (N'6         ', N'89634150  ')
GO
ALTER TABLE [dbo].[VueloComunPasajeros]  WITH CHECK ADD  CONSTRAINT [FK_VueloComunPasajeros_Pasajero] FOREIGN KEY([Dni])
REFERENCES [dbo].[Pasajero] ([Dni])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VueloComunPasajeros] CHECK CONSTRAINT [FK_VueloComunPasajeros_Pasajero]
GO
ALTER TABLE [dbo].[VueloComunPasajeros]  WITH CHECK ADD  CONSTRAINT [FK_VueloComunPasajeros_VueloComun] FOREIGN KEY([NroVuelo])
REFERENCES [dbo].[VueloComun] ([NroVuelo])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VueloComunPasajeros] CHECK CONSTRAINT [FK_VueloComunPasajeros_VueloComun]
GO
ALTER TABLE [dbo].[VueloInternacionalPasajeros]  WITH CHECK ADD  CONSTRAINT [FK_VueloInternacionalPasajeros_Pasajero] FOREIGN KEY([Dni])
REFERENCES [dbo].[Pasajero] ([Dni])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VueloInternacionalPasajeros] CHECK CONSTRAINT [FK_VueloInternacionalPasajeros_Pasajero]
GO
ALTER TABLE [dbo].[VueloInternacionalPasajeros]  WITH CHECK ADD  CONSTRAINT [FK_VueloInternacionalPasajeros_VueloInternacional] FOREIGN KEY([NroVuelo])
REFERENCES [dbo].[VueloInternacional] ([NroVuelo])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VueloInternacionalPasajeros] CHECK CONSTRAINT [FK_VueloInternacionalPasajeros_VueloInternacional]
GO
/****** Object:  StoredProcedure [dbo].[DestinoAgregar]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[DestinoAgregar]
@destino varchar(50), @ubicacion varchar(100)
as
begin

declare @id int
set @id = ISNULL((Select MAX(Id)From Destinos),0)+1

Insert Into Destinos (Id,Destino,Ubicacion) Values (@id,@destino,@ubicacion)
end
GO
/****** Object:  StoredProcedure [dbo].[DestinoBorrar]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[DestinoBorrar]
@id nchar(10)
as
begin

Delete From Destinos Where Id = @id
end
GO
/****** Object:  StoredProcedure [dbo].[DestinoLeer]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[DestinoLeer]
as
begin

SELECT a.Id, a.Destino, a.Ubicacion
FROM Destinos a

end
GO
/****** Object:  StoredProcedure [dbo].[DestinoModificar]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DestinoModificar]
@id nchar(10),@destino varchar(50), @ubicacion varchar(100)
as
begin

Update Destinos set 
Destino = @destino,
Ubicacion = @ubicacion
Where Id = @id
end
GO
/****** Object:  StoredProcedure [dbo].[PasajeroAgregar]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[PasajeroAgregar]
@dni nchar(10), @nombre varchar(50), @apellido varchar(50)
as
begin

Insert Into Pasajero (Dni,Nombre,Apellido) Values (@dni,@nombre,@apellido)
end
GO
/****** Object:  StoredProcedure [dbo].[PasajeroBorrar]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[PasajeroBorrar]
@dni nchar(10)
as
begin

Delete From Pasajero Where Dni = @dni

end
GO
/****** Object:  StoredProcedure [dbo].[PasajeroLeer]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PasajeroLeer]
as
begin

SELECT a.Dni, a.Nombre, a.Apellido
FROM Pasajero a

end
GO
/****** Object:  StoredProcedure [dbo].[PasajeroModificar]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PasajeroModificar]
@dni nchar(10),@dninuevo nchar(10), @nombre varchar(50), @apellido varchar(50)
as
begin

Update Pasajero set 
Dni = @dninuevo,
Nombre = @nombre,
Apellido = @apellido
Where Dni = @dni

end
GO
/****** Object:  StoredProcedure [dbo].[VueloComunAgregar]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[VueloComunAgregar]
@destino varchar(50), @partida varchar(50), @llegada varchar(50), @asientosdisponibles nchar(10), @porcentajedeocupacion nchar(10)
as
begin

declare @nrovuelo int
set @nrovuelo = ISNULL((Select MAX(NroVuelo)From VueloComun),0)+1

Insert Into VueloComun(NroVuelo,Destino,Partida,Llegada,AsientosDisponibles,PorcentajeOcupacion) Values (@nrovuelo,@destino,@partida,@llegada,@asientosdisponibles,@porcentajedeocupacion)
end

GO
/****** Object:  StoredProcedure [dbo].[VueloComunBorrar]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[VueloComunBorrar]
@nrovuelo int
as
begin

Delete From VueloComun Where NroVuelo= @nrovuelo

end
GO
/****** Object:  StoredProcedure [dbo].[VueloComunLeer]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[VueloComunLeer]
as
begin

SELECT a.NroVuelo, a.Destino, a.Partida, a.Llegada, a.AsientosDisponibles, a.PorcentajeOcupacion
FROM VueloComun a
end
GO
/****** Object:  StoredProcedure [dbo].[VueloComunModificar]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[VueloComunModificar]
@nrovuelo nchar(10), @ocupacion nchar(10)
as
begin

Update VueloComun set 
PorcentajeOcupacion = @ocupacion
Where NroVuelo=@nrovuelo

end
GO
/****** Object:  StoredProcedure [dbo].[VueloComunPasajeroAgregar]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[VueloComunPasajeroAgregar]
@nrovuelo nchar(10), @dni nchar(10)
as
begin


Insert Into VueloComunPasajeros(NroVuelo,Dni) Values (@nrovuelo,@dni)
end
GO
/****** Object:  StoredProcedure [dbo].[VueloComunPasajeroBorrar]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[VueloComunPasajeroBorrar]
@nrovuelo int
as
begin

Delete From VueloComunPasajeros Where NroVuelo= @nrovuelo

end
GO
/****** Object:  StoredProcedure [dbo].[VueloComunPasajeroLeer]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[VueloComunPasajeroLeer]
as
begin

SELECT a.NroVuelo, a.Dni
FROM VueloComunPasajeros a
end
GO
/****** Object:  StoredProcedure [dbo].[VueloFinalizadoAgregar]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[VueloFinalizadoAgregar]
@destino varchar(50),@pais varchar(50), @ciudad varchar(50),@partida varchar(50), @llegada varchar(50), @asientosdisponibles nchar(10), @porcentajedeocupacion nchar(10)
as
begin

declare @nrovuelo int
set @nrovuelo = ISNULL((Select MAX(Id)From VueloFinalizado),0)+1

Insert Into VueloFinalizado(Id,Destino,Pais,Ciudad,Partida,Llegada,AsientosDisponibles,PorcentajeOcupacion) Values (@nrovuelo,@destino,@pais,@ciudad,@partida,@llegada,@asientosdisponibles,@porcentajedeocupacion)
end
GO
/****** Object:  StoredProcedure [dbo].[VueloFinalizadoLeer]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[VueloFinalizadoLeer]
as
begin

SELECT a.Id, a.Destino, a.Pais, a.Ciudad, a.Partida, a.Llegada, a.AsientosDisponibles, a.PorcentajeOcupacion
FROM VueloFinalizado a
end
GO
/****** Object:  StoredProcedure [dbo].[VueloInternacionalAgregar]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[VueloInternacionalAgregar]
@destino varchar(50),@pais varchar(50), @ciudad varchar(50),@partida varchar(50), @llegada varchar(50), @asientosdisponibles nchar(10), @porcentajedeocupacion nchar(10)
as
begin

declare @nrovuelo int
set @nrovuelo = ISNULL((Select MAX(NroVuelo)From VueloInternacional),0)+1

Insert Into VueloInternacional(NroVuelo,Destino,Pais,Ciudad,Partida,Llegada,AsientosDisponibles,PorcentajeOcupacion) Values (@nrovuelo,@destino,@pais,@ciudad,@partida,@llegada,@asientosdisponibles,@porcentajedeocupacion)
end
GO
/****** Object:  StoredProcedure [dbo].[VueloInternacionalBorrar]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[VueloInternacionalBorrar]
@nrovuelo int
as
begin

Delete From VueloInternacional Where NroVuelo= @nrovuelo

end
GO
/****** Object:  StoredProcedure [dbo].[VueloInternacionalLeer]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[VueloInternacionalLeer]
as
begin

SELECT a.NroVuelo, a.Destino, a.Pais, a.Ciudad, a.Partida, a.Llegada, a.AsientosDisponibles, a.PorcentajeOcupacion
FROM VueloInternacional a
end
GO
/****** Object:  StoredProcedure [dbo].[VueloInternacionalModificar]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[VueloInternacionalModificar]
@nrovuelo nchar(10), @ocupacion nchar(10)
as
begin

Update VueloInternacional set 
PorcentajeOcupacion = @ocupacion
Where NroVuelo=@nrovuelo

end
GO
/****** Object:  StoredProcedure [dbo].[VueloInternacionalPasajeroAgregar]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[VueloInternacionalPasajeroAgregar]
@nrovuelo nchar(10), @dni nchar(10)
as
begin


Insert Into VueloInternacionalPasajeros(NroVuelo,Dni) Values (@nrovuelo,@dni)
end
GO
/****** Object:  StoredProcedure [dbo].[VueloInternacionalPasajeroBorrar]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create proc [dbo].[VueloInternacionalPasajeroBorrar]
@nrovuelo int
as
begin

Delete From VueloInternacionalPasajeros Where NroVuelo= @nrovuelo

end
GO
/****** Object:  StoredProcedure [dbo].[VueloInternacionalPasajeroLeer]    Script Date: 16/11/2020 10:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[VueloInternacionalPasajeroLeer]
as
begin

SELECT a.NroVuelo, a.Dni
FROM VueloInternacionalPasajeros a
end
GO
