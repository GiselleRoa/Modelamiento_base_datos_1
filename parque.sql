CREATE TABLE clientes( 
    rut_cliente NUMBER(11) NOT NULL,  
    dv CHAR(1) NOT NULL, 
    primer_nombre VARCHAR2(250) NOT NULL, 
    segundo_nombre VARCHAR2(250) NULL, 
    apellido_paterno VARCHAR2(250) NOT NULL, 
    apellido_materno VARCHAR2(250) NULL, 
    direccion VARCHAR2(250) NOT NULL, 
    fono NUMBER NOT NULL, 
    correo VARCHAR2(250) NOT NULL, 
    comuna_id NUMBER NOT NULL 
)
ALTER TABLE "CLIENTE" add CONSTRAINT cliente_pk PRIMARY KEY (rut_cliente); 

CREATE TABLE Comuna( 
    id_comuna NUMBER NOT NULL,  
    nombre VARCHAR(250) NOT NULL, 
    id_provincia NUMBER NOT NULL, 
);
ALTER TABLE "Comuna" add CONSTRAINT comuna_pk PRIMARY KEY (id_comuna);

ALTER TABLE "Clientes" add CONSTRAINT comuna_pk PRIMARY KEY (id_comuna);
REFERENCES Comunas (id_comuna);
