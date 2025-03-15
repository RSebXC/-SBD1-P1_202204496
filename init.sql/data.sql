-- Inserción de datos para la tabla Usuarios
INSERT INTO Usuarios (identificacion_nacional, nombre, apellido, correo, telefono) VALUES
('ID001', 'Juan', 'Perez', 'juan.perez@email.com', '123456789'),
('ID002', 'Maria', 'Gomez', 'maria.gomez@email.com', '987654321'),
('ID003', 'Carlos', 'Lopez', 'carlos.lopez@email.com', '456789123'),
('ID004', 'Ana', 'Martinez', 'ana.martinez@email.com', '789123456'),
('ID005', 'Luis', 'Rodriguez', 'luis.rodriguez@email.com', '321654987'),
('ID006', 'Elena', 'Hernandez', 'elena.hernandez@email.com', '654987321'),
('ID007', 'Javier', 'Torres', 'javier.torres@email.com', '159753468'),
('ID008', 'Sofia', 'Diaz', 'sofia.diaz@email.com', '357159246'),
('ID009', 'Miguel', 'Sanchez', 'miguel.sanchez@email.com', '951753468'),
('ID010', 'Laura', 'Castro', 'laura.castro@email.com', '852963741');

-- Inserción de datos para la tabla Direcciones
INSERT INTO Direcciones (usuario_id, direccion, ciudad, pais, codigo_postal) VALUES
(1, 'Calle 123', 'Ciudad A', 'Pais X', '10001'),
(2, 'Avenida 456', 'Ciudad B', 'Pais X', '10002'),
(3, 'Carrera 789', 'Ciudad C', 'Pais Y', '10003'),
(4, 'Pasaje 321', 'Ciudad D', 'Pais Y', '10004'),
(5, 'Bulevar 654', 'Ciudad E', 'Pais Z', '10005'),
(6, 'Callejón 987', 'Ciudad F', 'Pais Z', '10006'),
(7, 'Vereda 159', 'Ciudad G', 'Pais X', '10007'),
(8, 'Autopista 357', 'Ciudad H', 'Pais Y', '10008'),
(9, 'Sendero 951', 'Ciudad I', 'Pais Z', '10009'),
(10, 'Carretera 852', 'Ciudad J', 'Pais X', '10010');

-- Inserción de datos para la tabla Metodos_Pago
INSERT INTO Metodos_Pago (usuario_id, tipo, detalles) VALUES
(1, 'Tarjeta de crédito', 'Visa terminada en 1234'),
(2, 'PayPal', 'maria.paypal@email.com'),
(3, 'Transferencia bancaria', 'Banco ABC - Cuenta 5678'),
(4, 'Efectivo', 'Pago en tienda'),
(5, 'Tarjeta de débito', 'MasterCard terminada en 9876'),
(6, 'PayPal', 'elena.paypal@email.com'),
(7, 'Crédito', 'Financiación a 12 meses'),
(8, 'Transferencia bancaria', 'Banco XYZ - Cuenta 3456'),
(9, 'Tarjeta de crédito', 'Visa terminada en 4321'),
(10, 'Efectivo', 'Pago contra entrega');

-- Inserción de datos para la tabla Pagos
INSERT INTO Pagos (monto, metodo_pago_id, estado) VALUES
(100.00, 1, 'aprobado'),
(200.50, 2, 'pendiente'),
(150.75, 3, 'rechazado'),
(300.20, 4, 'aprobado'),
(99.99, 5, 'pendiente'),
(120.00, 6, 'rechazado'),
(250.00, 7, 'aprobado'),
(175.80, 8, 'pendiente'),
(220.45, 9, 'rechazado'),
(350.60, 10, 'aprobado');

-- Inserción de datos para la tabla Categorias
INSERT INTO Categorias (nombre) VALUES
('Electrónica'),
('Hogar'),
('Juguetes'),
('Ropa'),
('Deportes'),
('Salud'),
('Automotriz'),
('Libros'),
('Alimentos'),
('Mascotas');

-- Inserción de datos para la tabla Productos
INSERT INTO Productos (sku, nombre, descripcion, precio, slug, categoria_id) VALUES
('SKU001', 'Laptop', 'Laptop potente para trabajo', 1200.00, 'laptop', 1),
('SKU002', 'Smartphone', 'Celular con cámara avanzada', 800.00, 'smartphone', 1),
('SKU003', 'Sofá', 'Sofá de tres plazas cómodo', 500.00, 'sofa', 2),
('SKU004', 'Bicicleta', 'Bicicleta de montaña', 750.00, 'bicicleta', 5),
('SKU005', 'Libro', 'Novela de misterio', 20.00, 'libro', 8),
('SKU006', 'Camiseta', 'Camiseta de algodón', 25.00, 'camiseta', 4),
('SKU007', 'Pelota', 'Pelota de fútbol', 30.00, 'pelota', 5),
('SKU008', 'Collar', 'Collar para perro', 15.00, 'collar', 10),
('SKU009', 'Silla', 'Silla ergonómica', 150.00, 'silla', 2),
('SKU010', 'Aspiradora', 'Aspiradora automática', 300.00, 'aspiradora', 2);

-- Inserción de datos para la tabla Sedes
INSERT INTO Sedes (nombre, ubicacion) VALUES
('Sede Central', 'Ciudad A'),
('Sucursal Norte', 'Ciudad B'),
('Sucursal Sur', 'Ciudad C'),
('Sucursal Este', 'Ciudad D'),
('Sucursal Oeste', 'Ciudad E'),
('Bodega 1', 'Ciudad F'),
('Bodega 2', 'Ciudad G'),
('Oficina Administrativa', 'Ciudad H'),
('Punto de venta 1', 'Ciudad I'),
('Punto de venta 2', 'Ciudad J');

-- Inserción de datos para la tabla Trabajadores
INSERT INTO Trabajadores (identificacion_nacional, nombre, apellido, cargo, departamento, correo_institucional) VALUES
('TID001', 'Pedro', 'García', 'Gerente', 'Administración', 'pedro.garcia@empresa.com'),
('TID002', 'Lucia', 'Fernandez', 'Vendedor', 'Ventas', 'lucia.fernandez@empresa.com'),
('TID003', 'Fernando', 'Mendez', 'Logística', 'Almacén', 'fernando.mendez@empresa.com'),
('TID004', 'Cristina', 'Hernandez', 'Atención al Cliente', 'Soporte', 'cristina.hernandez@empresa.com'),
('TID005', 'Alberto', 'Ramos', 'Técnico', 'Mantenimiento', 'alberto.ramos@empresa.com'),
('TID006', 'Sandra', 'Lopez', 'Marketing', 'Publicidad', 'sandra.lopez@empresa.com'),
('TID007', 'Manuel', 'Torres', 'Contador', 'Finanzas', 'manuel.torres@empresa.com'),
('TID008', 'Pablo', 'Reyes', 'Operador', 'Producción', 'pablo.reyes@empresa.com'),
('TID009', 'Andrea', 'Ortiz', 'Seguridad', 'Seguridad', 'andrea.ortiz@empresa.com'),
('TID010', 'Veronica', 'Castro', 'Recepcionista', 'Administración', 'veronica.castro@empresa.com');
