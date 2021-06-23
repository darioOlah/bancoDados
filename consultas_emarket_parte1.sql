/* Categorias e Produtos */

SELECT * FROM categorias;

SELECT categorianombre, descripcion FROM categorias;

SELECT * FROM productos;

SELECT discontinuado FROM productos WHERE discontinuado > 0; 

SELECT * FROM productos WHERE ProveedorID = 8;

SELECT * FROM productos WHERE preciounitario BETWEEN 10 AND 22;

SELECT * FROM productos WHERE unidadesstock < nivelreorden;

SELECT * FROM productos WHERE unidadesstock < nivelreorden AND unidadespedidas = 0;

/* Client */

SELECT contacto, compania, titulo, pais FROM clientes ORDER BY pais;

SELECT * FROM clientes WHERE titulo = 'owner';

SELECT * FROM clientes WHERE contacto LIKE 'c%';

/* Contas */

SELECT * FROM facturas ORDER BY fechafactura;

SELECT * FROM facturas  WHERE paisenvio = 'USA' AND enviovia <> 3;

SELECT * FROM facturas WHERE clienteID = 'GOURL';

SELECT * FROM facturas WHERE empleadoID = 2 OR empleadoID = 3 OR empleadoID = 5 OR empleadoID = 8 OR empleadoID = 9 ORDER BY empleadoID ASC;

SELECT * FROM facturas WHERE empleadoID IN (2, 3, 5, 8, 9) ORDER BY empleadoID ASC;