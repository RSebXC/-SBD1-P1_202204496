# Manual Tecnico

## Modelo Conceptual

Las 8 tablas principales del enunciado son:

1. **Usuarios**
2. **Trabajadores**
3. **Productos**
4. **Órdenes de compra**
5. **Pagos**
6. **Envíos**
7. **Devoluciones**
8. **Traslados de productos**

### 1. **Usuarios**

- `id` (PK, Identificador único)
- `identificacion_nacional`
- `nombre`
- `apellido`
- `correo`
- `telefono`
- `activo`
- `fecha_registro`
- `correo_confirmado`
- `direcciones`
- `metodos_pago`
- `created_at`
- `updated_at`

### 2. **Trabajadores**

- `id` (PK, Identificador único)
- `identificacion_nacional`
- `nombre`
- `apellido`
- `cargo`
- `departamento`
- `telefono`
- `correo_institucional`
- `sede_id`
- `activo`
- `created_at`
- `updated_at`

### 3. **Productos**

- `id` (PK, Identificador único)
- `sku`
- `nombre`
- `descripcion`
- `precio`
- `slug`
- `cantidad_inventario`
- `categoria_id`
- `activo`
- `imagenes`
- `created_at`
- `updated_at`

### 4. **Órdenes de Compra**

- `id` (PK, Identificador único)
- `fecha_creacion`
- `usuario_id`
- `productos`
- `created_at`
- `updated_at`

### 5. **Pagos**

- `id` (PK, Identificador único)
- `orden_id`
- `fecha_transaccion`
- `monto_total`
- `metodo_pago`
- `estado` (`pendiente`, `aprobado`, `rechazado`)
- `created_at`
- `updated_at`

### 6. **Envíos**

- `id` (PK, Identificador único)
- `fecha_despacho`
- `orden_id`
- `direccion_entrega`
- `empresa_transporte`
- `numero_seguimiento`
- `estado` (`en tránsito`, `entregado`, `devuelto`)
- `created_at`
- `updated_at`

### 7. **Devoluciones**

- `id` (PK, Identificador único)
- `orden_id`
- `fecha_solicitud`
- `motivo`
- `estado` (`en revisión`, `aprobada`, `rechazada`)
- `producto_id`
- `created_at`
- `updated_at`

### 8. **Traslados de Productos**

- `id` (PK, Identificador único)
- `fecha_movimiento`
- `almacen_origen_id`
- `almacen_destino_id`
- `producto_id`
- `cantidad_transferida`
- `estado_traslado`
- `fecha_estimada_llegada`
- `created_at`
- `updated_at`

