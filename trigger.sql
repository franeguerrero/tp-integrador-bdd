DELIMITER //
CREATE TRIGGER ActualizarStock
AFTER INSERT ON Compras
FOR EACH ROW
BEGIN
  UPDATE Productos
  SET stock = stock - NEW.cantidad
  WHERE id = NEW.producto_id;
END //

INSERT INTO Compras (cliente_id, producto_id, cantidad, fecha)
VALUES (1, 1, 1, '2023-05-06');

SELECT stock FROM Productos WHERE id = 1;
