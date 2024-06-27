  
Rule10BcgCheck as
 (Select b.marks,b.id,b.name,r.policestatus,r.validityid
from bcg b join check r
where b.maritialstatus = 'Single')CICD-SHREYAMokal

