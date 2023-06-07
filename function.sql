DELIMITER //
CREATE FUNCTION CalcularPromedioPrecios()
RETURNS FLOAT DETERMINISTIC
BEGIN
  DECLARE promedio FLOAT;
  SELECT AVG(precio) INTO promedio FROM Productos;
  RETURN promedio;
END //

SELECT CalcularPromedioPrecios();