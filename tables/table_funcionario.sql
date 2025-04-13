USE EMPRESA;

CREATE TABLE FUNCIONARIO (
    Cpf              CHAR(11) PRIMARY KEY,
    Pnome            VARCHAR(20),
    Minicial         VARCHAR(50),
    Unome            VARCHAR(50),
    Datanasc         DATE,
    Endereco         VARCHAR(100),
    Sexo             CHAR(1),
    Salario          DECIMAL(10, 2),
    Cpf_supervisor   CHAR(11),
    Dnr              INT,
    FOREIGN KEY (Cpf_supervisor) REFERENCES FUNCIONARIO(Cpf)
);