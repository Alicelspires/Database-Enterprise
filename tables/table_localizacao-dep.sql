CREATE TABLE LOCALIZACAO_DEP (
    Dnumero      INT,     
    Dlocal       VARCHAR(50),
    PRIMARY KEY (Dnumero, Dlocal),
    FOREIGN KEY (Dnumero) REFERENCES DEPARTAMENTO(Dnumero)
);