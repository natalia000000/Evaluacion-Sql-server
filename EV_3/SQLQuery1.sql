CREATE TABLE Genero (
  IDGenero INT PRIMARY KEY,
  NomGenero VARCHAR(30)
);

-- Tabla de plataformas
CREATE TABLE Plataforma (
  IDPlataforma INT PRIMARY KEY,
  NombrePlataforma VARCHAR(50)
);

-- Tabla de videojuegos
CREATE TABLE Videojuego (
  IDJuego INT PRIMARY KEY,
  Nombre VARCHAR(50),
  Cantidad INT,
  IDGenero INT,
  IDPlataforma INT,
  FOREIGN KEY (IDGenero) REFERENCES Genero(IDGenero),
  FOREIGN KEY (IDPlataforma) REFERENCES Plataforma(IDPlataforma)
);

-- Tabla de usuarios
CREATE TABLE Usuarios (
  idUser INT PRIMARY KEY,
  email VARCHAR(100) UNIQUE,
  password_hash TEXT NOT NULL,
  rol VARCHAR(20)
);

-- Tabla de ventas
CREATE TABLE Ventas (
  IDVentas INT PRIMARY KEY,
  IDJuego INT,
  idUser INT,
  Cantidad INT,
  FechaVenta DATE,
  FOREIGN KEY (IDJuego) REFERENCES Videojuego(IDJuego),
  FOREIGN KEY (idUser) REFERENCES Usuarios(idUser)
);

--Insert into genero

INSERT INTO Genero (IDGenero, NomGenero)
VALUES
(1, 'Shooter'),
(2, 'Survival Horror'),
(3, 'Aventura'),
(4, 'Deportes'),
(5, 'Estrategia'),
(6, 'Simulación'),
(7, 'Carreras'),
(8, 'Lucha'),
(9, 'Mundo Abierto'),
(10, 'Sigilo'),
(11, 'Sandbox'),
(12, 'Indie');

--Insert into plataformaa
INSERT INTO Plataforma (IDPlataforma, NombrePlataforma)
VALUES
(1,'PlayStation 5'),
(2, 'PlayStation 4'),
(3, 'PlayStation 3'),
(4, 'Xbox Series X'),
(5, 'Xbox Series s'),
(6, 'Nintendo Switch'),
(7, 'Nintendo 3DS'),
(8, 'PC'),
(9, 'PS Vita'),
(10, 'PSP'),
(11, 'SNES')
;


--Insert into Videojuego
INSERT INTO Videojuego (IDJuego, Nombre, Cantidad, IDGenero, IDPlataforma)
VALUES
(1,'Call of Duty: Modern Warfare II	',50, 1, 1),
(2,'Battlefield 2042', 100, 2, 1),
(3,'Far Cry 6', 30, 1, 1),
(4,'Doom Eternal', 100, 1, 1),
(5,'Metro Exodus', 80, 1, 1),
(6,'', , , ),
(7,'', , , ),
(8,'', , , ),
(9,'', , , ),
(10,'', , , ),
(11,'', , , ),
(12,'', , , ),
(13,'', , , ),
(14,'', , , ),
(15,'', , , ),
(16,'', , , ),
(17,'', , , ),
(18,'', , , ),
(19,'', , , ),



;


--Nombre VARCHAR(50),
--Cantidad INT,
--IDGenero INT,
 --IDPlataforma INT,

--Insert into Usuarios

--Insert into Ventas

