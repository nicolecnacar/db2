select json_agg(row_to_json(t)) AS departments
from (
  select *
 	from "Cedeno_MidtermExam".departments
      ) t