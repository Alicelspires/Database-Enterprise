# Database-Enterprise
Simulação de banco de dados para o esquema do banco EMPRESA

O banco de dados EMPRESA modela um sistema corporativo, armazenando informações sobre:

- Funcionários: Dados pessoais, salário, departamento e supervisor.
- Departamentos: Nome, gerente e localizações.
- Projetos: Nome, localização e departamento responsável.
- Dependentes: Familiares dos funcionários.
- Alocações de trabalho: Horas trabalhadas por funcionário em cada projeto.

## Objetivo das Consultas
As consultas sobre EMPRESA visam extrair informações, como:

- Alocação de recursos: Quais funcionários trabalham mais em projetos críticos.
- Relações hierárquicas: Quem é supervisionado por quem.
- Dependências familiares: Funcionários com dependentes de mesmo nome.
- Eficiência por departamento: Comparação salarial e carga horária.

## Modelagem

<div align="center">
        
![image](https://github.com/user-attachments/assets/8d82f4e4-e6b6-4dc9-a581-0385113aef31)

</div>

## Tabelas e suas informações inseridas
### Funcionário
![funcionario](https://github.com/user-attachments/assets/71a9523c-8d21-4886-9015-313ad23602f1)

### Departamento
![departamento](https://github.com/user-attachments/assets/9119d460-60c2-49a9-ba9c-8cf2d06ff501)

### Localização
![localizacao-dep](https://github.com/user-attachments/assets/898c7aef-4ec1-4a56-892a-1d6d070cd946)

### Projeto
![projeto](https://github.com/user-attachments/assets/089de03e-da3e-41ef-a73a-6882c3cf71b2)

### Trabalha_em
![trabalha_em](https://github.com/user-attachments/assets/2f4f9a4d-c68a-41d5-953c-aa8b246bd998)

### Dependente
![dependente](https://github.com/user-attachments/assets/4628310f-b10f-4dcd-973a-d70bbf218146)


## Queries

### 1. Recupere os nomes de todos os funcionários no departamento 5 que trabalham mais de 10 horas por semana no projeto ProdutoX.
```sql
SELECT Pnome AS Nomes FROM funcionario f
JOIN trabalha_em t ON t.Fcpf = f.Cpf
WHERE f.Dnr = 5 AND t.Horas > 10 AND t.Pnr = 1;
```

### 2. Liste os nomes de todos os funcionários que possuem um dependente com o mesmo primeiro nome que seu próprio
```sql
SELECT Pnome AS Nomes FROM funcionario f
JOIN dependente d ON f.Pnome = d.Nome_dependente
WHERE f.Pnome = d.Nome_dependente;
```

### 3. Ache os nomes de todos os funcionários que são supervisionados diretamente por ‘Fernando Wong’
```sql
SELECT f1.Pnome AS Nomes
FROM funcionario f1
JOIN funcionario f2 ON f1.Cpf_supervisor = f2.Cpf
WHERE f2.Pnome = 'Fernando' AND f2.Unome = 'Wong';
```

### 4. Recupere o nome completo, salário e nome do departamento dos funcionários que ganham mais do que a média salarial de seus respectivos departamentos.
```sql
SELECT CONCAT(F.Pnome, ' ', F.Unome) AS Nome_Completo, F.Salario, D.Dnome AS Departamento
FROM FUNCIONARIO F
JOIN DEPARTAMENTO D ON F.Dnr = D.Dnumero
WHERE F.Salario > (
        SELECT AVG(F2.Salario)
        FROM FUNCIONARIO F2
        WHERE F2.Dnr = F.Dnr
    );
```

### 5. Liste os projetos (nome e localização) com o maior número de horas trabalhadas no total, incluindo a soma de horas.
```sql
SELECT P.Projnome, P.Projlocal, SUM(T.Horas) AS Total_Horas
FROM PROJETO P
JOIN TRABALHA_EM T ON P.Projnumero = T.Pnr
GROUP BY P.Projnome, P.Projlocal
ORDER BY Total_Horas DESC
LIMIT 3;
```
<div align="center">
  
![visitor badge](https://visitor-badge.laobi.icu/badge?page_id=Alicelspires.Database-Enterprise&left_color=grey&right_color=black&left_text=Visitors)

</div> 
