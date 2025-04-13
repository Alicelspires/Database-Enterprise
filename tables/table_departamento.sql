CREATE TABLE DEPARTAMENTO (
    Dnumero              INT PRIMARY KEY,
    Dnome                VARCHAR(50),
    Cpf_gerente          CHAR(11),
    Data_inicio_gerente  DATE,
    FOREIGN KEY (Cpf_gerente) REFERENCES FUNCIONARIO(Cpf)
);