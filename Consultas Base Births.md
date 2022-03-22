# Consultas

SELECT * FROM births

# Formatação
alter TABLE births alter COLUMN  births DECIMAL (10,2)

## Correção coluna dias - dados não correspondentes

SELECT * FROM births
UPDATE  births
SET day = '00'  
WHERE day ='99'

UPDATE  births
SET day = '00' 
WHERE day ='31' AND month = '2'

UPDATE  births
SET day = '00' 
WHERE day ='30' AND month = '2'

UPDATE  births
SET day = '00' 
WHERE day ='NULL';


## 1) Em qual ano houve mais nascimentos?

**Comando SQL:**

SELECT year, SUM(births) FROM births
GROUP BY year
ORDER by SUM(births) DESC;

**Gráfico Power BI:**

![image](https://user-images.githubusercontent.com/101679147/158906230-1578cf30-d5cb-40df-98b4-e2a3fb0a9e52.png)

**Conclusão:**

Como podemos observar da leitura do gráfico abaixo, o ano de 2007 foi o que apresentou a maior quantidade nascimentos, para o período de 1969 a 2008.


## 2) Qual ano teve menos nascimentos?

**Comando SQL:**

SELECT year, SUM(births) FROM births   
GROUP BY year
ORDER by SUM(births) ASC;

**Gráfico Power BI:**

![image](https://user-images.githubusercontent.com/101679147/158906557-f492e1f5-ab7f-426d-b465-0fca75bcfe22.png)


**Conclusão:**
Como podemos observar da leitura do gráfico abaixo, o ano de 1973 foi o que apresentou a menor quantidade de nascimentos, para o período de 1969 a 2008.


## 3) Qual ano teve mais nascimentos do sexo feminino? 

**Comando SQL:**

SELECT year, gender, SUM(births) FROM births
WHERE gender = 'F'
GROUP BY year, gender
ORDER by SUM(births) DESC;

**Gráfico Power BI:**

![image](https://user-images.githubusercontent.com/101679147/158906610-f0852aeb-46ff-4602-803e-3a6c4591c812.png)


**Conclusão:**

Como podemos observar da leitura do gráfico abaixo, o ano de 2007 foi o que apresentou a maior quantidade nascimentos de pessoas do sexo feminino, para o período de 1969 a 2008.


## 4) Qual ano teve mais nascimentos do sexo masculino?

**Comando SQL:**

SELECT year, gender, SUM(births) FROM births
WHERE gender = 'M'
GROUP BY year, gender
ORDER by SUM(births) DESC;

**Gráfico Power BI:**

![image](https://user-images.githubusercontent.com/101679147/158906642-1fea8ad4-2b32-41fe-ba68-a3e6f3114aac.png)

**Conclusão:**

Como podemos observar da leitura do gráfico abaixo, o ano de 2007 foi o que apresentou a maior quantidade nascimentos de pessoas do sexo masculino, para o período de 1969 a 2008.


## 5) Qual mês de qual ano teve mais nascimentos?

**Comando SQL:**

SELECT year, month, SUM(births) FROM births
GROUP BY year, month
ORDER by SUM(births) DESC;

**Gráfico Power BI:**

![image](https://user-images.githubusercontent.com/101679147/158906721-5eb7fa5d-0941-44e8-a666-ab59fdba350f.png)


**Conclusão:**

Como podemos observar da leitura do gráfico abaixo, o mês de agosto do ano de 2007 foi o que apresentou a maior quantidade nascimentos, para o período de 1969 a 2008.

