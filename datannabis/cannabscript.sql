CREATE DATABASE IF NOT EXISTS mysqlombra;
USE mysqlombra;

CREATE TABLE IF NOT EXISTS Cannabis(
idCannabis INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
tipo VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Variedade(
idVariedade INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
nomeVariedade VARCHAR(255),
descricao TEXT,
avaliacao DECIMAL(5,1),
Cannabis_idCannabis INT UNSIGNED NOT NULL,
FOREIGN KEY (cannabis_idCannabis)
REFERENCES Cannabis(idCannabis) 
);

CREATE TABLE IF NOT EXISTS Sabores(
idSabor INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
saborCannabis VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Efeitos(
idEfeito INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
efeitoCannabis VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Sabor_Variedade(
Sabores_idSabor INT UNSIGNED NOT NULL,
Variedade_idVariedade INT UNSIGNED NOT NULL,
FOREIGN KEY (Sabores_idSabor)
REFERENCES Sabores(idSabor),
FOREIGN KEY (Variedade_idVariedade)
REFERENCES Variedade(idVariedade)
);

CREATE TABLE IF NOT EXISTS Efeito_Variedade(
Efeitos_idEfeito INT UNSIGNED NOT NULL,
Variedade_idVariedade INT UNSIGNED NOT NULL,
FOREIGN KEY (Efeitos_idEfeito)
REFERENCES Efeitos(idEfeito),
FOREIGN KEY (Variedade_idVariedade)
REFERENCES Variedade(idVariedade)
);