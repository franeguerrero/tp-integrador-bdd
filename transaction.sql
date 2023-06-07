/*
START TRANSACTION;
INSERT INTO Clientes (id, nombre, correo, direccion)
VALUES (31, 'Nuevo Cliente', 'nuevo_cliente@example.com', 'Nueva Dirección');
INSERT INTO Compras (id, cliente_id, producto_id, cantidad, fecha)
VALUES (56, 31, 1, 2, '2023-05-04');
COMMIT;
*/

DELIMITER //
START TRANSACTION;
BEGIN
  INSERT INTO Clientes (id, nombre, correo, direccion)
  VALUES (32, 'Otro Cliente', 'otro_cliente@example.com', 'Otra Dirección');
  INSERT INTO Compras (id, cliente_id, producto_id, cantidad, fecha)
  VALUES (57, 32, 2, 3, '2023-05-05');
  
  ROLLBACK;
END //
