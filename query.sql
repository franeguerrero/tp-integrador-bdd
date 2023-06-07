SELECT C.nombre AS cliente, P.nombre AS producto, CO.cantidad, CO.fecha
FROM Compras AS CO
JOIN Clientes AS C ON CO.cliente_id = C.id
JOIN Productos AS P ON CO.producto_id = P.id;

CREATE VIEW ProductosConDescuento AS
SELECT id, nombre, precio, descuento
FROM Productos
WHERE descuento IS NOT NULL;

CREATE INDEX idx_nombre ON Productos(nombre);
