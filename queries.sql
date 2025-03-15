-- Insertar un usuario
INSERT INTO Usuarios (identificacion_nacional, nombre, apellido, correo, telefono) 
VALUES ('12345678', 'Juan', 'Perez', 'juan.perez@email.com', '555-1234');

-- Obtener todos los usuarios activos
SELECT * FROM Usuarios WHERE activo = TRUE;

-- Insertar una dirección para un usuario
INSERT INTO Direcciones (usuario_id, direccion, ciudad, pais, codigo_postal) 
VALUES (1, 'Calle 123', 'Ciudad X', 'Pais Y', '12345');

-- Obtener las direcciones de un usuario específico
SELECT * FROM Direcciones WHERE usuario_id = 1;

-- Insertar un método de pago
INSERT INTO Metodos_Pago (usuario_id, tipo, detalles) 
VALUES (1, 'Tarjeta de Crédito', '**** **** **** 1234');

-- Obtener métodos de pago de un usuario
SELECT * FROM Metodos_Pago WHERE usuario_id = 1;

-- Insertar un pago
INSERT INTO Pagos (monto, metodo_pago_id, estado) 
VALUES (99.99, 1, 'pendiente');

-- Obtener pagos aprobados
SELECT * FROM Pagos WHERE estado = 'aprobado';

-- Insertar una categoría
INSERT INTO Categorias (nombre) VALUES ('Electrónica');

-- Insertar un producto
INSERT INTO Productos (sku, nombre, descripcion, precio, slug, categoria_id, activo) 
VALUES ('ABC123', 'Laptop', 'Laptop de última generación', 1200.00, 'laptop-abc123', 1, TRUE);

-- Obtener productos de una categoría específica
SELECT * FROM Productos WHERE categoria_id = 1;

-- Insertar una orden de compra
INSERT INTO Orden_Compra (usuario_id) VALUES (1);

-- Insertar productos en una orden de compra
INSERT INTO Orden_Productos (orden_id, producto_id, cantidad, precio_unitario) 
VALUES (1, 1, 2, 1200.00);

-- Obtener detalles de una orden de compra
SELECT o.id, u.nombre, u.apellido, p.nombre AS producto, op.cantidad, op.precio_unitario 
FROM Orden_Compra o
JOIN Usuarios u ON o.usuario_id = u.id
JOIN Orden_Productos op ON o.id = op.orden_id
JOIN Productos p ON op.producto_id = p.id
WHERE o.id = 1;

-- Insertar un envío
INSERT INTO Envios (orden_id, fecha_despacho, direccion_entrega, empresa_transporte, numero_seguimiento, estado) 
VALUES (1, '2025-03-14', 'Calle 123, Ciudad X', 'DHL', 'ABC123456', 'en tránsito');

-- Actualizar estado de un envío
UPDATE Envios SET estado = 'entregado' WHERE id = 1;

-- Obtener productos en inventario de una sede específica
SELECT p.nombre, i.cantidad 
FROM Inventario i
JOIN Productos p ON i.producto_id = p.id
WHERE i.sede_id = 1;

-- Eliminar un usuario y sus datos relacionados
DELETE FROM Usuarios WHERE id = 1;
