use ProjectoFORO
DROP TABLE Noticia
DROP TABLE Comentario
DROP TABLE Pelicula
DROP TABLE Usuario 

CREATE TABLE Usuario(
	LoginID nvarchar(100) PRIMARY KEY,
	Password nvarchar(100) NOT NULL,
	Nombre nvarchar(200),
	Email nvarchar(500),
	Administrador BIT NOT NULL DEFAULT 0,
 )
CREATE TABLE Pelicula(
	IDPelicula bigint NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Nombre nvarchar(100) NOT NULL,
	Duracion datetime NOT NULL,
	Elenco nvarchar(100) NOT NULL,
	Director nvarchar(100) NOT NULL,
	Reseña text NOT NULL,
)
CREATE TABLE Comentario (
	LoginID nvarchar(100) NOT NULL PRIMARY KEY REFERENCES Usuario,
	Texto nvarchar(100) NOT NULL,
	Valoracion nvarchar(100),
	IDPelicula bigint REFERENCES Pelicula,
)	
CREATE TABLE Noticia(
	IDPelicula bigint REFERENCES Pelicula,
	IDNoticia bigint NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Texto text NOT NULL,
)	