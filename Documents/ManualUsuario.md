# Manual de Usuario

## Introducción
Este manual proporciona una guía detallada sobre el uso de la API, incluyendo cómo levantar el servidor, realizar peticiones a los diferentes endpoints y entender las respuestas proporcionadas por la API. Además, incluye capturas de pantalla y ejemplos prácticos para facilitar su uso.

---

## 1. Requisitos Previos
Antes de utilizar la API, asegúrese de contar con los siguientes requisitos:
- Node.js instalado en su sistema.
- Un cliente HTTP como Postman o cURL.
- Base de datos configurada y en ejecución.
- Dependencias instaladas en el proyecto mediante `npm install`.

---

## 2. Levantar el Servidor
Para iniciar el servidor de la API, siga estos pasos:
1. Abra una terminal y navegue hasta el directorio del proyecto.
2. Ejecute el siguiente comando:
   ```bash
   npm start
   ```
3. Si el servidor se inicia correctamente, debería ver un mensaje similar a:
   ```bash
   Servidor corriendo en http://localhost:3000
   ```
4. Ahora la API está lista para recibir peticiones.

---

## 3. Uso de los Endpoints
A continuación, se describe el uso de cada endpoint disponible en la API.

### 3.1 Endpoints de Usuarios

#### Obtener todos los usuarios
- **Método:** `GET`
- **URL:** `/api/users`
- **Descripción:** Retorna la lista de todos los usuarios registrados.
- **Ejemplo de Respuesta:**
  ```json
  [
    {
      "id": 1,
      "nombre": "Juan Perez",
      "correo": "juan@example.com",
      "telefono": "12345678"
    }
  ]
  ```

#### Obtener un usuario por ID
- **Método:** `GET`
- **URL:** `/api/users/:id`
- **Ejemplo de Respuesta:**
  ```json
  {
    "id": 1,
    "nombre": "Juan Perez",
    "correo": "juan@example.com",
    "telefono": "12345678"
  }
  ```

#### Crear un usuario
- **Método:** `POST`
- **URL:** `/api/users`
- **Cuerpo de Petición:**
  ```json
  {
    "nombre": "Maria Lopez",
    "correo": "maria@example.com",
    "telefono": "87654321"
  }
  ```
- **Ejemplo de Respuesta:**
  ```json
  {
    "message": "Usuario creado exitosamente",
    "user": {
      "id": 2,
      "nombre": "Maria Lopez",
      "correo": "maria@example.com",
      "telefono": "87654321"
    }
  }
  ```

#### Actualizar un usuario
- **Método:** `PUT`
- **URL:** `/api/users/:id`
- **Cuerpo de Petición:**
  ```json
  {
    "nombre": "Maria Fernandez"
  }
  ```
- **Ejemplo de Respuesta:**
  ```json
  {
    "message": "Usuario actualizado exitosamente"
  }
  ```

#### Eliminar un usuario
- **Método:** `DELETE`
- **URL:** `/api/users/:id`
- **Ejemplo de Respuesta:**
  ```json
  {
    "message": "Usuario eliminado exitosamente"
  }
  ```

---

### 3.2 Endpoints de Productos

#### Obtener todos los productos
- **Método:** `GET`
- **URL:** `/api/products`
- **Ejemplo de Respuesta:**
  ```json
  [
    {
      "id": 1,
      "nombre": "Laptop HP",
      "precio": 1200.99
    }
  ]
  ```

#### Obtener un producto por ID
- **Método:** `GET`
- **URL:** `/api/products/:id`
- **Ejemplo de Respuesta:**
  ```json
  {
    "id": 1,
    "nombre": "Laptop HP",
    "precio": 1200.99
  }
  ```

#### Crear un producto
- **Método:** `POST`
- **URL:** `/api/products`
- **Cuerpo de Petición:**
  ```json
  {
    "nombre": "Mouse Logitech",
    "precio": 29.99
  }
  ```
- **Ejemplo de Respuesta:**
  ```json
  {
    "message": "Producto creado exitosamente",
    "product": {
      "id": 2,
      "nombre": "Mouse Logitech",
      "precio": 29.99
    }
  }
  ```

#### Actualizar un producto
- **Método:** `PUT`
- **URL:** `/api/products/:id`
- **Cuerpo de Petición:**
  ```json
  {
    "precio": 25.99
  }
  ```
- **Ejemplo de Respuesta:**
  ```json
  {
    "message": "Producto actualizado exitosamente"
  }
  ```

#### Eliminar un producto
- **Método:** `DELETE`
- **URL:** `/api/products/:id`
- **Ejemplo de Respuesta:**
  ```json
  {
    "message": "Producto eliminado exitosamente"
  }
  ```

---

## 4. Conclusión
Este manual proporciona una guía completa para interactuar con la API. Siguiendo estos pasos, los usuarios pueden levantar el servidor, realizar peticiones y manejar los datos de usuarios y productos de manera eficiente. Para más detalles, se recomienda utilizar Postman o herramientas similares para probar los endpoints visualmente.

