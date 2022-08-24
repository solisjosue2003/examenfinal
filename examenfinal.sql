create database examfinal
use examfinal


CREATE table persona
(
   Id int identity(1,1),
   Cedula varchar(20) not null,
   Nombre varchar(50) not null,
   Apellido Varchar(50),
   constraint PK_ident PRIMARY KEY(ID),
   CONSTRAINT UQ_Cedula Unique (Cedula)

)
insert into persona (Cedula,Nombre,Apellido) values('2','Catalina','Perez')

select * from persona
delete persona where cedula = 222

Create table Usuario
(
   nombre varchar(20),
   idusuario int, 
   Clave Varchar(30) not null,
   constraint pk_emailusuario PRIMARY KEY (Nombre),
   --constraint fk_tipousuario Foreign key (idusuario) REFERENCES persona(ID),
   --CONSTRAINT FK_tipousuarioid foreign key(TipoUsuario)references TipoUsuario(Id)

)
drop table Usuario
insert into Usuario values ('cata@gmail.com',1,'123')

select * from Usuario

Create table TipoUsuario
(
    Id int identity(1,1),
	Descripcion varchar(50) not null,
   constraint PK_IDtipousuario PRIMARY KEY(ID)

)
insert into TipoUsuario values ('Administrador'),('Regular')
select * from TipoUsuario
drop table TipoUsuario

create procedure Registro
  @cedula varchar(20),
  @Nombre varchar(50) ,
  @Apellido varchar(50) = null,
  @email varchar(20),
  @clave varchar(30)
   as 
    begin
      insert into Persona (cedula, Nombre, Apellido) values (@cedula, @Nombre, @Apellido)
	  
    
      insert into usuario (nombre, idusuario, clave)
      select @email, id, @clave from Persona where cedula = @cedula
    end
    Exec Registro '222', 'Josue', 'Solis', 'Jos@gmail.com', 555

drop procedure Registro


create table Mae_Articulo
(
   Codigo int identity(1,1),
   Descripcion varchar(20) not null,
   Cantidad int,
   Precio int,
   Costo int,
   constraint PK_ID PRIMARY KEY(codigo)
)
select * from Mae_Articulo
insert into Mae_Articulo values ('Arroz',15,1500,500)
insert into Mae_Articulo values ('Frijoles',10,1000,200)

create procedure Ingresar_articulo
   @descrip varchar(20),
    @cant int,
   @preci int,
   @cost int
   as 
  
     begin
	 INSERT INTO Mae_Articulo VALUES (@descrip, @cant,@preci,@cost)
	 end
	 drop procedure Ingresar_articulo

	 create procedure Ingresar_articulo
   @descrip varchar(20),
    @cant varchar(20),
   @preci varchar(20),
   @cost varchar(20)
   as 
  
     begin
	 INSERT INTO Mae_Articulo VALUES (@descrip, @cant,@preci,@cost)
	 end
	 drop procedure Ingresar_articulo

create procedure Borrar_producto

	 @descrip int

   as 
  
     begin
	   delete  Mae_Articulo where Descripcion = @descrip
	 end

create procedure Actualizar_producto
	 @descrip varchar(20),
     @canti int,
    @preci int,
	@cost int
   as 
     begin
	   update Mae_Articulo set  Cantidad=@canti, Precio=@preci, Costo =@cost 
	   where Descripcion = @descrip
	 end






create procedure reporteGanancias
as
begin
select Codigo,Descripcion,Cantidad,Precio,Costo,
cantidad * precio as [Total_Ventas],
cantidad * Costo as [Total_Costos],
(Cantidad * Precio) - (Cantidad * Costo) as [Ganancias]
from Mae_Articulo
end