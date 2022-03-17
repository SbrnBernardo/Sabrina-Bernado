# Limpeza da Base

Iniciamos o tratamento da base, convertendo os campos de "Varchar" para "Deciaml", conforme o exemplo abaixo:

**Comando SQL:**
select * from brasil
alter TABLE brasil alter COLUMN taxa_ocupados_carteira DECIMAL (10,2)

# Consultas

1) Qual é o sexo biológico que nasce mais a cada década passada?

**Comando SQL:**
SELECT ano, populacao_homens_0_4, populacao_mulheres_0_4 FROM brasil

![image](https://user-images.githubusercontent.com/101679147/158904872-55b11908-3acd-46b4-b885-b06700579724.png)

**Conclusão:** Como podemos observar da leitura do gráfico abaixo, em todas as décadas (1990, 2000 e 2010) o sexo biológico que mais nasce é o masculino, visto ser o sexo com mais população da faixa etária de 0 a 4 anos.


2) Qual o sexo biologico com população em cada década?

**Comando SQL:**
SELECT ano, populacao_homens, populacao_mulheres from brasil

![image](https://user-images.githubusercontent.com/101679147/158905592-db1167b0-c37e-45d7-a646-c5bb68483d3e.png)

**Conclusão:** Como podemos observar da leitura do gráfico abaixo, em todas as décadas (1990, 2000 e 2010) o sexo biológico que com maior população é o sexo feminino.


3) Qual o sexo biologico com maior população com idosos de 80 anos ou mais?

**Comando SQL:**
SELECT ano, populacao_homens_80_mais, populacao_mulheres_80_mais from brasil

![image](https://user-images.githubusercontent.com/101679147/158905693-b2a9e289-4ab9-42a0-87d1-e3a945bdc866.png)

**Conclusão:** Como podemos observar da leitura do gráfico abaixo, em todas as décadas (1990, 2000 e 2010) o sexo biológico com maior população na faixa etária de 80 anos ou mais é sexo feminino. 


4) Qual a expectativa de vida por decada? 

**Comando SQL:**
SELECT ano, expectativa_vida from brasil

![image](https://user-images.githubusercontent.com/101679147/158905765-e3bc6f40-b034-4691-80cb-c1dada9e437f.png)

**Conclusão:** Como podemos observar da leitura do gráfico abaixo, as expectativas para as décadas de 1990, 2000 e 2010 são, respectivamente, 65, 69 e 74 anos. 


