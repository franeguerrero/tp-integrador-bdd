CREATE TABLE Productos (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  precio DECIMAL(10, 2) NOT NULL,
  stock INT NOT NULL
);

CREATE TABLE Clientes (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  correo VARCHAR(100) NOT NULL,
  direccion VARCHAR(100) NOT NULL
);

CREATE TABLE Compras (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  cliente_id INT NOT NULL,
  producto_id INT NOT NULL,
  cantidad INT NOT NULL,
  fecha DATE NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES Clientes(id),
  FOREIGN KEY (producto_id) REFERENCES Productos(id)
);
