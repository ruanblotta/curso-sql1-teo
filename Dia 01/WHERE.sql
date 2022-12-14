-- Databricks notebook source
SELECT
  *
FROM
  silver_olist.pedido
  
WHERE descSituacao = 'delivered'

-- leia-se: selecione todas as colunas da tabela silver.olist.pedido onde a situação do pedido seja entregue 'delivered'

-- LIMIT 100

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido
  
WHERE descSituacao = 'shipped'
AND year(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela  silver_olist.pedido filtrando pedidos enviados de 2018

-- LIMIT 100

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido
  
WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos (enviados ou cancelados) de 2018.
-- LIMIT 100

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido
  
WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido
  
WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'
and datediff (dtEstimativaEntrega, dtAprovado) > 30

-- leia:se selecione todas as colunas a partir da tabela  silver_olist.pedido, aonde o pedido esteja extrapolando 30 dias de entrega
