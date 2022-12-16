-- Databricks notebook source
SELECT descUF,
        COUNT(idVendedor) as qtVendedorUF
       
FROM silver_olist.vendedor 
        
GROUP BY descUF

HAVING COUNT(idVendedor) >= 100

ORDER BY qtVendedorUF DESC

-- COMMAND ----------

SELECT descUF,
        COUNT(idVendedor) as qtVendedorUF
       
FROM silver_olist.vendedor 

-- where vem depois do FROM e antes do ORDER BY
WHERE descUF IN ('SP', 'MG', 'RJ', 'ES')
GROUP BY descUF

HAVING COUNT(idVendedor) >= 100

ORDER BY qtVendedorUF DESC
