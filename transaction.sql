DELIMITER //

DROP PROCEDURE IF EXISTS AgregarCliente;
CREATE PROCEDURE AgregarCliente()
BEGIN

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
        ROLLBACK;
        
	END;

	START TRANSACTION;
	INSERT INTO Clientes (nombre, correo, direccion)
	VALUES ('Nuevo Cliente', 'nuevo_cliente@example.com', 'Nueva Dirección 123');

	INSERT INTO Compras (cliente_id, producto_id, cantidad, fecha)
	VALUES (LAST_INSERT_ID(), 1, 1, CURDATE());

	COMMIT;
    SELECT "Trasacción exitosa.";
END //
DELIMITER ;


CALL AgregarCliente();
