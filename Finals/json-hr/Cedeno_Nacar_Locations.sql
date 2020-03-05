select json_agg(row_to_json(t)) AS locations
from (
  select *
 	from "Cedeno_MidtermExam".locations
      ) t