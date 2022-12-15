-- Databricks notebook source
SELECT COUNT(*) AS nrLinhasNaoNulas -- significa que contabilizou linhas não nulas

FROM silver_olist.cliente



-- COMMAND ----------

SELECT 
   COUNT(*) AS nrLinhasNaoNulas, -- significa que contabilizou linhas não nulas
   COUNT(idCliente) AS nrIdClienteNaoNulo -- id de clientes não nulos


FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
   COUNT(*) AS nrLinhasNaoNulas, -- significa que contabilizou linhas não nulas
   COUNT(idCliente) AS nrIdClienteNaoNulo, -- id de clientes não nulos
   COUNT(distinct idCliente) as nrIdClienteDistintos, -- id de clientes distintos
   COUNT(DISTINCT IdClienteUnico) AS nrIdClienteUnicoDistintos

  

FROM silver_olist.cliente

-- COMMAND ----------



-- COMMAND ----------

SELECT 
   COUNT(*) AS qtLinhas,
   count(distinct idCliente) AS qtdClientes,
   count(distinct IdClienteUnico) AS qtdClientesUnicos
   
FROM silver_olist.cliente

WHERE descCidade IN ('presidente prudente', 'curitiba')

-- COMMAND ----------

SELECT 

    AVG(vlPreco) AS avgPreco, -- media da coluna vlPreco (preço médio dos produtos)
    
    PERCENTILE(vlPreco, 0.5) AS medianPreco, -- preço mediano dos produtos
  
    MAX(vlPreco) AS maxPreco, -- maximo da coluna vlPreco
    AVG(vlFrete) AS avgFrete, -- media do preço
    MAX(vlFrete) as maxFrete,
    MIN(vlFrete) as minFrete

FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT 

    ROUND (AVG(vlPreco), 2) AS avgPreco, -- media da coluna vlPreco (preço médio dos produtos)
    
    INT(PERCENTILE(vlPreco, 0.5)) AS medianPreco, -- preço mediano dos produtos
  
    MAX(vlPreco) AS maxPreco, -- maximo da coluna vlPreco
    AVG(vlFrete) AS avgFrete, -- media do preço
    MAX(vlFrete) as maxFrete,
    MIN(vlFrete) as minFrete

FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT COUNT(*)
from silver_olist.cliente

WHERE descUF = 'MT'
