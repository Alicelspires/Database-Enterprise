CREATE TABLE PROJETO (
    Projnome      VARCHAR(50), 
    Projnumero    INT PRIMARY KEY,    
    Projlocal     VARCHAR(50),          
    Dnum          INT,                       
    FOREIGN KEY (Dnum) REFERENCES DEPARTAMENTO(Dnumero)
);
