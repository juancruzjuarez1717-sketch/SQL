-- CREAR BASE DE DATOS
CREATE DATABASE Modulo2

USE Modulo2

-- CREAR TABLA CLIENTES
CREATE TABLE clientes(
-- Identificador único autoincremental para cada cliente.
id_cliente INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
 -- Nombre del cliente. Se utiliza VARCHAR(100) porque es texto de longitud variable.
nombre VARCHAR(100) NOT NULL,
-- Biografía o descripción del perfil. Se utiliza TEXT para almacenar textos extensos.
perfil_bio VARCHAR(MAX) NOT NULL,
 -- Fecha en que el cliente se registró. Solo se requiere almacenar la fecha.
fecha_registro DATE NOT NULL
);


-- CREAR TABLA PRODUCTOS
CREATE TABLE productos(
 -- Identificador único autoincremental para cada producto.
id_producto INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
 -- Descripción del producto. Se utiliza VARCHAR(255) para almacenar texto de longitud variable.
descripcion VARCHAR(255),
-- Precio del producto. DECIMAL(10,2) permite almacenar valores monetarios con dos decimales.
precio DECIMAL(10,2) NOT NULL,
-- Indica si el producto está activo (1) o inactivo (0). Se utiliza BIT por ser un valor booleano.
esta_activo BIT NOT NULL
);
