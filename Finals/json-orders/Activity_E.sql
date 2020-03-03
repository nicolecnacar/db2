CREATE FUNCTION "030320".products()
	RETURNS TABLE(
		customer bigint
	)
AS
$BODY$
	BEGIN
		RETURN QUERY
			SELECT
				SUM (
      				CAST (
         			info -> 'items' ->> 'qty' AS INTEGER
      				) 
   				)AS customer
   			FROM "030320".orders;
	END;
$BODY$

LANGUAGE 'plpgsql'