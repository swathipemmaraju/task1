select JobStatus.[Status] as JobStatus, job.jobstartdate, job.jobenddate 
from job inner join JobStatus on JobStatus.Id = job.JobStatusId