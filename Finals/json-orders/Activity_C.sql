SELECT
    info ->> 'customer' AS customer
FROM
   "030320".orders
WHERE CAST (
	info -> 'items' ->> 'qty' AS INTEGER ) = (
  SELECT  MIN (
  			CAST (
  				info -> 'items' ->> 'qty' AS INTEGER)
  			)
  FROM "030320".orders
  )