select json_agg(row_to_json(t)) AS jobs
from (
  select *
 	from "Cedeno_MidtermExam".jobs
      ) t