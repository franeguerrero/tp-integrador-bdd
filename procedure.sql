DELIMITER //
CREATE PROCEDURE ContarVentasCliente(
  IN cliente_id INT,
  OUT total_ventas INT
)
BEGIN
  SELECT COUNT(*) INTO total_ventas
  FROM Compras
  WHERE cliente_id = cliente_id;
END //

CALL ContarVentasCliente(1, @total_ventas);
SELECT @total_ventas;
