 cte1 as
 (Select v.validationid,b.time from table1
  where v.status='Married'),
Rule6ValidationProof as 
  (Select s.id,s.name,c.validationid from soap s join
   cte1 c)
 