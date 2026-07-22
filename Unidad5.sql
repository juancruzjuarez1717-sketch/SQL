-- ══════════════════════════════════════════
-- BodegaTech — Script de Inventario
-- Autor: JUAN CRUZ JUAREZ
-- Fecha: 22/07/2026
-- ══════════════════════════════════════════
-- ── SECCIÓN DDL ──────────────────────────

DROP TABLE IF EXISTS inventario;

CREATE DATABASE BodegaTech;

USE BodegaTech;

-- CREATE TABLE
CREATE TABLE inventario(
IDProducto INT NOT NULL IDENTITY(1,1) PRIMARY KEY, -- Identificador único (PK)
NombreProducto VARCHAR(100) NOT NULL, -- Nombre del producto
Categoria VARCHAR(50) NOT NULL, -- Categoría del producto
PrecioUnitario DECIMAL(10,2) NOT NULL, -- Precio de venta en USD
StockActual INT NOT NULL, -- Unidades disponibles
StockMinimo INT NOT NULL, -- Umbral mínimo de reposición
FechaIngreso DATE NOT NULL, -- Fecha de ingreso al inventario
Activo BIT NOT NULL -- 1 = disponible, 0 = descontinuado
);

-- ── SECCIÓN DML ──────────────────────────
SELECT * FROM inventario;

-- INSERT INTO
INSERT INTO inventario
(NombreProducto, Categoria, PrecioUnitario, StockActual, StockMinimo, FechaIngreso, Activo)
VALUES
('Laptop Pro 15', 'Computación', 1200.00, 15, 3, '2024-01-10', 1),
('Mouse Inalámbrico', 'Accesorios',	28.00, 80, 10, '2024-01-10', 1),
('Monitor 4K 27"', 'Computación', 450.00, 12, 2, '2024-01-15', 1),
('Teclado Mecánico', 'Accesorios', 95.00, 40, 5, '2024-01-15', 1),
('Laptop Basic 14', 'Computación', 650.00, 20, 3, '2024-02-01', 1),
('Auriculares BT Pro', 'Audio', 120.00, 35, 5, '2024-02-01', 1),
('Hub USB-C 7 puertos', 'Accesorios', 45.00, 60, 10, '2024-02-10', 1),
('Webcam HD 1080p', 'Accesorios', 85.00, 25, 5, '2024-02-10', 1),
('SSD Externo 1TB', 'Almacenamiento', 130.00, 18, 3, '2024-03-01', 1),
('Parlante Bluetooth', 'Audio', 60.00, 45, 8, '2024-03-01', 1);

-- UPDATE ventas del dia
UPDATE inventario SET StockActual = StockActual - 3
WHERE IDProducto = 1;

UPDATE inventario SET StockActual = StockActual -12
WHERE IDProducto = 2;

UPDATE inventario SET StockActual = StockActual - 5
WHERE IDProducto = 6;

SELECT * FROM inventario;

-- UPDATE producto descontinuado
UPDATE inventario SET Activo = 0
WHERE IDProducto = 8;

-- SELECT validaciones
SELECT * FROM inventario;