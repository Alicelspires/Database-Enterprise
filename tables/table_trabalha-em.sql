CREATE TABLE TRABALHA_EM (
    Fcpf          CHAR(11),      
    Pnr           INT,     
    Horas         DECIMAL(5, 2),           
    PRIMARY KEY (Fcpf, Pnr),
    FOREIGN KEY (Fcpf) REFERENCES FUNCIONARIO(Cpf)
);
