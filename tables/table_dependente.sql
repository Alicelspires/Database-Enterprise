CREATE TABLE DEPENDENTE (
    Fcpf               CHAR(11), 
    Nome_dependente    VARCHAR(50),
    Sexo               CHAR(1),     
    Datanasc           DATE,                 
    Parentesco         VARCHAR(50),   
    PRIMARY KEY (Fcpf, Nome_dependente),
    FOREIGN KEY (Fcpf) REFERENCES FUNCIONARIO(Cpf)
);
