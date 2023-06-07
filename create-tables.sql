CREATE TABLE Productos (
  id INT PRIMARY KEY,
  nombre VARCHAR(100),
  precio DECIMAL(10, 2),
  stock INT
);

CREATE TABLE Clientes (
  id INT PRIMARY KEY,
  nombre VARCHAR(100),
  correo VARCHAR(100),
  direccion VARCHAR(100)
);

CREATE TABLE Compras (
  id INT PRIMARY KEY,
  cliente_id INT,
  producto_id INT,
  cantidad INT,
  fecha DATE,
  FOREIGN KEY (cliente_id) REFERENCES Clientes(id),
  FOREIGN KEY (producto_id) REFERENCES Productos(id)
);
