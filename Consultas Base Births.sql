SELECT * FROM births

--FORMATÇÃO
alter TABLE births alter COLUMN  births DECIMAL (10,2)

-- 1) Em qual ano houve mais nascimentos?
SELECT year, SUM(births) FROM births
GROUP BY year
ORDER by SUM(births) DESC;

--2) Qual ano teve menos nascimentos?
SELECT year, SUM(births) FROM births   
GROUP BY year
ORDER by SUM(births) ASC;

-- 3) Qual ano teve mais nascimentos do sexo feminino? 
SELECT year, gender, SUM(births) FROM births
WHERE gender = 'F'
GROUP BY year, gender
ORDER by SUM(births) DESC;

-- 4) Qual ano teve mais nascimentos do sexo masculino? 
SELECT year, gender, SUM(births) FROM births
WHERE gender = 'M'
GROUP BY year, gender
ORDER by SUM(births) DESC;

-- 5) Qual mês de qual ano teve mais nascimentos? 
SELECT year, month, SUM(births) FROM births
GROUP BY year, month
ORDER by SUM(births) DESC;