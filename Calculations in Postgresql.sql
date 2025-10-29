--SELECT * FROM public.product
--SELECT product_name, CAST (manufacturing_cost as NUMERIC (19,2))
--FROM public.product
--GROUP BY product_name
--ORDER BY id ASC 
-- SELECT product_name,
-- REPLACE(REPLACE(manufacturing_cost, '$', ''), ',', ''):: NUMERIC (19,2) 
-- AS manufacturing_cost_num FROM public.product 

-- ALTER TABLE public.product
-- ALTER COLUMN manufacturing_cost TYPE NUMERIC (19,2)
-- USING REPLACE(REPLACE(manufacturing_cost, '$', ''), ',', ''):: NUMERIC (19,2) 


-- SELECT product_name, SUM (manufacturing_cost) FROM public.product
-- GROUP BY product_name
-- HAVING COUNT(product_name)<2
-- ORDER BY product_name ASC

*WHERE comes after SELECT, and before GROUP BY clause


--SELECT MAX (manufacturing_cost) FROM public.product
--SELECT MIN (manufacturing_cost) FROM public.product
--SELECT SUM (manufacturing_cost) FROM public.product
-- SELECT product_name, MAX (manufacturing_cost) FROM public.product
-- GROUP BY product_name, manufacturing_cost
-- ORDER BY manufacturing_cost DESC

-- SELECT product_name, MAX (manufacturing_cost) FROM public.product
-- GROUP BY product_name, manufacturing_cost
-- HAVING manufacturing_cost >200
-- ORDER BY manufacturing_cost ASC

-- SELECT id, product_name, manufacturing_cost, manufacturing_cost*0.10 AS discount, 
-- (manufacturing_cost-manufacturing_cost*0.10) AS new_price FROM public.product
-- ORDER BY id ASC 

SELECT id, product_name, manufacturing_cost, manufacturing_cost*0.10 AS discount, 
(manufacturing_cost-manufacturing_cost*0.10) AS new_price 
INTO temp_price_table
FROM public.product
ORDER BY id ASC 
