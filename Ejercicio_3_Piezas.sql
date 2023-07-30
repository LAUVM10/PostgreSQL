CREATE TABLE categorias (
codigo_id SERIAL PRIMARY KEY,
nombre VARCHAR(150) NOT NULL
);

CREATE TABLE piezas (
pieza_id SERIAL PRIMARY KEY,
nombre VARCHAR(150) NOT NULL,
color VARCHAR(150) NOT NULL,
precio VARCHAR(150) NOT NULL,
codigo_id INT NOT NULL,
FOREIGN KEY(codigo_id)REFERENCES categorias(codigo_id)
);

CREATE TABLE poveedores (
proveedor_id SERIAL PRIMARY KEY,
nombre VARCHAR(150) NOT NULL,
direccion VARCHAR(150) NOT NULL,
ciudad VARCHAR(150) NOT NULL,
provincia VARCHAR(150) NOT NULL
);

CREATE TABLE piezasproveedores (
pieza_id INT NOT NULL,
proveedor_id INT NOT NULL,
cantidad INT NOT NULL,
fecha DATE NOT NULL,	
FOREIGN KEY(pieza_id)REFERENCES piezas (pieza_id),
FOREIGN KEY(proveedor_id)REFERENCES poveedores (proveedor_id)
);