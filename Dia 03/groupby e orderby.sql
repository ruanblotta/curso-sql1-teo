-- Databricks notebook source
-- peimeira formaa

SELECT 
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
  
  FROM silver_olist.cliente
  
  GROUP BY descUF
  ORDER BY 2


-- COMMAND ----------

-- segunda forma

SELECT 
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
  
  FROM silver_olist.cliente
  
  GROUP BY descUF
  ORDER BY qtClienteEstado


-- COMMAND ----------

-- terceira forma

SELECT 
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
  
  FROM silver_olist.cliente
  
  GROUP BY descUF
  ORDER BY COUNT(DISTINCT idClienteUnico) 


-- COMMAND ----------

WITH tb_estados AS (

SELECT descUF
FROM silver_olist.cliente
GROUP BY descUF
ORDER BY COUNT(DISTINCT idClienteUnico) DESC

LIMIT 2
)

SELECT * FROM tb_estados

-- COMMAND ----------



