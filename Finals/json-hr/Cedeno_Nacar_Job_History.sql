select json_agg(row_to_json(t)) AS job_history
from (
  select *
 	from "Cedeno_MidtermExam".job_history
      ) t