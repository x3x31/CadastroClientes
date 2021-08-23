--
-- File generated with SQLiteStudio v3.3.3 on qui ago 19 22:30:20 2021
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: clientes
DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
    cli_id          INTEGER       PRIMARY KEY AUTOINCREMENT,
    cli_nome        VARCHAR (120) NOT NULL,
    cli_tipo        CHAR (1)      NOT NULL,
    cli_cpf         VARCHAR (18)  NOT NULL
                                  UNIQUE,
    cli_rg_ie       VARCHAR (20),
    cli_dt_cadastro DATE          DEFAULT (CURRENT_TIMESTAMP),
    cli_ativo       CHAR (1) 
);


-- Table: endereco
DROP TABLE IF EXISTS endereco;

CREATE TABLE endereco (
    end_id         INTEGER       PRIMARY KEY AUTOINCREMENT,
    end_cli_id     INTEGER       REFERENCES clientes (cli_id) ON DELETE CASCADE,
    end_logradouro VARCHAR (100),
    end_numero     VARCHAR (20),
    end_cep        VARCHAR (9),
    end_bairro     VARCHAR (100),
    end_cidade     VARCHAR (100),
    end_estado     VARCHAR (2),
    end_pais       VARCHAR (100) 
);


-- Table: telefone
DROP TABLE IF EXISTS telefone;

CREATE TABLE telefone (
    tel_id     INTEGER      PRIMARY KEY AUTOINCREMENT,
    tel_cli_id INTEGER      REFERENCES clientes (cli_id) ON DELETE CASCADE,
    tel_ddd    VARCHAR (2),
    tel_numero VARCHAR (10) 
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
