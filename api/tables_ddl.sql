CREATE TABLE dbdev.customers (
	id Integer NOT NULL auto_increment,
	nome varchar(255) NULL,
	sexo varchar(255) NULL,
	endereco varchar(255) NULL,
	telefone varchar(255) NULL,
	email varchar(255) NULL,
	foto varchar(255) NULL,	
	nascimento date NULL,
	profissao varchar(255) NULL,
	dt_update timestamp NULL,
	PRIMARY KEY (id)
);

CREATE TABLE dbdev.flight (
	id Integer NOT NULL auto_increment,
	customer_id Integer NOT NULL,
	aeroporto varchar(255) NULL,
	linha_aerea varchar(255) NULL,
	cod_iata varchar(255) NULL,
	dt_update timestamp NULL,
	PRIMARY KEY (id)
);

CREATE TABLE dbdev.vehicle (
	id Integer NOT NULL auto_increment,
	customer_id Integer NOT NULL,
	ano_modelo varchar(255) NULL,
	modelo varchar(255) NULL,
	fabricante varchar(255) NULL,
	ano_veiculo Integer NULL,
	categoria varchar(255) NULL,
	dt_update timestamp NULL,
	PRIMARY KEY (id)
);