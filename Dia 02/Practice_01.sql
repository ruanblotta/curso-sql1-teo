-- Databricks notebook source
-- 01 Selecione todos os clientes paulistanos

SELECT *
FROM silver_olist.cliente
WHERE descCidade = 'sao paulo'

-- COMMAND ----------

-- exercício 02: seleciona todos os clientes paulistas

SELECT *
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

-- ex 03: Selecione todos os vendedores cariocas e paulistas

SELECT *
FROM silver_olist.vendedor
WHERE descCidade = 'rio de janeiro'
OR descUF = 'SP'

-- COMMAND ----------



-- COMMAND ----------


