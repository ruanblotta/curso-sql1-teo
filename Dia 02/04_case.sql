-- Databricks notebook source
SELECT *,
       CASE WHEN descUF = 'SP' THEN 'paulista'
         WHEN descUF = 'RJ' THEN 'fluminense'
         WHEN descUF = 'PR' then 'Paranaense'
         WHEN descUF = 'BA' then 'Bahiano'
       ELSE 'outros'
       
       END AS descOrigem
       
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *,

-- isso aqui é uma coluna nova
       CASE WHEN descUF = 'SP' THEN 'paulista'
         WHEN descUF = 'RJ' THEN 'fluminense'
         WHEN descUF = 'PR' then 'Paranaense'
         WHEN descUF = 'BA' then 'Bahiano'
         ELSE 'outros'
       END AS descOrigem,
       
-- isso aqui é outra coluna nova
-- LIKE vai buscar algo parecido com a string
       CASE
         WHEN descCIdade LIKE '%sao%' THEN 'Tem são no nome'
         ELSE 'Não tem são no nome'
       END as DescCidadeSao
       
       
       
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *,

    CASE 
      WHEN descUF IN ('SP', 'MG', 'RJ', 'ES') THEN 'Sudeste'
    END AS descRegiao
       
       
       
FROM silver_olist.vendedor

-- COMMAND ----------

-- 04: selecione produtos de perfumaria e bebes com altura maior que 5cm

SELECT *
FROM silver_olist.produto

WHERE descCategoria IN ('perfumaria', 'bebes')
AND vlAlturaCm > 5




