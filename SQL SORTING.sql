SELECT * FROM public.hephziba_customer_data
-- ORDER BY customer_id DESC 
--SELECT first_name, email, gender, d_o_b FROM public.hephziba_customer_data
SELECT membership, first_name, customer_id, age, ip_address FROM public.hephziba_customer_data
ORDER BY age, customer_id ASC
SELECT gender, age, first_name, last_name FROM public.hephziba_customer_data
SELECT DISTINCT (gender) FROM public.hephziba_customer_data
SELECT DISTINCT gender FROM public.hephziba_customer_data
ORDER BY gender ASC
SELECT COUNT (DISTINCT gender) FROM public.hephziba_customer_data