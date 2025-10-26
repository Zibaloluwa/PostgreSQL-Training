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


--SELECT product_name 
