/*
DELIMITER //
CREATE PROCEDURE CalcularTotalVentasCliente(
  IN cliente_id INT,
  OUT total_ventas FLOAT
)
BEGIN
  SELECT SUM(P.precio * CO.cantidad)
  INTO total_ventas
  FROM Compras AS CO
  JOIN Productos AS P ON CO.producto_id = P.id
  WHERE CO.cliente_id = cliente_id;
END //
*/
CALL CalcularTotalVentasCliente(1, @total_ventas);
SELECT @total_ventas;
