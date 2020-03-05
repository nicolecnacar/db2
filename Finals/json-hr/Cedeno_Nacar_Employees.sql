select json_agg(row_to_json(t)) AS employees
from (
  select *
 	from "Cedeno_MidtermExam".employees
      ) t