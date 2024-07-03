   
cte4 as
 (Select w.stampdutystatus,h.Registrationid from table1
  where w.status='Married'),
Rule7ReaestateProof as 
  (Select t.id,t.pandate,p.Registrationid from tea t join
   cte4 p) 

