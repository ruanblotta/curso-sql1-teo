-- Databricks notebook source
-- 01: Qual categoria tem mais produtos vendidos?


SELECT T1.descCategoria,
    COUNT(T1.idPedido) -- contagem de linhas do protudo
    

FROM silver_olist.item_pedido as T1 -- tabela de vendas

LEFT JOIN silver_olist.produto AS T2
ON T1.idProduto = T2.idProduto


GROUP BY T1.descCategoria -- group por produto
ORDER BY COUNT(T1.idPedido) DESC


-- COMMAND ----------

-- Qual categoria tem produtos maais caros, em média?


SELECT T1.idPedido,
       T1.idProduto,
       T1.vlPreco,
       T2.descCategoria

FROM silver_olist.item_pedido AS T1

LEFT JOIN silver_olist.produto AS T2
ON T1.idProduto = T2.idProduto

GROUP BY T2.descCategoria
ORDER BY AVG(T1.vlPreco) DESC

-- COMMAND ----------

-- 03: Os clientes de qual estado pagam mais frete?

SELECT 
       AVG(T1.vlFrete),
       T3.descUF

FROM silver_olist.item_pedido AS T1

LEFT JOIN silver_olist.pedido AS T2
ON T1.idPedido = T2.idPedido

LEFT JOIN silver_olist.cliente AS T3
ON T2.idCliente = T3.idCliente

GROUP BY T3.descUF
ORDER BY AVG(T1.vlFrete) DESC


-- COMMAND ----------

-- Ex anterior c/ having


-- 03: Os clientes de qual estado pagam mais frete?

SELECT 
       T3.descUF,
       AVG(T1.vlFrete) AS AvgFrete
       

FROM silver_olist.item_pedido AS T1

LEFT JOIN silver_olist.pedido AS T2
ON T1.idPedido = T2.idPedido

LEFT JOIN silver_olist.cliente AS T3
ON T2.idCliente = T3.idCliente

GROUP BY T3.descUF

HAVING  AVG(T1.vlFrete) > 40

ORDER BY avgFrete DESC  -- desc é do maior pro menor

