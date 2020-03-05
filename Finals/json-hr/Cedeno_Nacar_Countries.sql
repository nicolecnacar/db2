select json_agg(row_to_json(t)) AS countries
from (
  select *
 	from "Cedeno_MidtermExam".countries
      ) t