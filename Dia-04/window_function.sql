-- Databricks notebook source
-- ordenar o melhor pro pior dos vendedores 


WITH tb_vendas_vendedores AS (

  SELECT 
        idVendedor,
        COUNT(*) as qtVendas
  FROM silver_olist.item_pedido
  GROUP BY idVendedor
  ORDER BY qtVendas DESC

),

tb_row_number AS (

  SELECT T1.*,
         T2.descUF,
         ROW_NUMBER() OVER (PARTITION BY T2.descUF ORDER BY qtVendas DESC) AS RN

  FROM tb_vendas_vendedores AS T1

  LEFT JOIN silver_olist.vendedor AS T2
  ON T1.idVendedor = T2.idVendedor

  ORDER BY descUF, qtVendas DESC
)

SELECT * FROM tb_row_number WHERE RN <= 10



-- COMMAND ----------

-- ordenar o melhor pro pior dos vendedores 


WITH tb_vendas_vendedores AS (

  SELECT 
        idVendedor,
        COUNT(*) as qtVendas
  FROM silver_olist.item_pedido
  GROUP BY idVendedor
  ORDER BY qtVendas DESC

),

tb_row_number AS (

  SELECT T1.*,
         T2.descUF,
         ROW_NUMBER() OVER (PARTITION BY T2.descUF ORDER BY qtVendas DESC) AS RN

  FROM tb_vendas_vendedores AS T1

  LEFT JOIN silver_olist.vendedor AS T2
  ON T1.idVendedor = T2.idVendedor

  QUALIFY RN <= 10 
  ORDER BY descUF, qtVendas DESC
)

SELECT * FROM tb_row_number 



-- COMMAND ----------


