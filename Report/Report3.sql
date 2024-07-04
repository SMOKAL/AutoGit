WITH avg_students AS (
    SELECT district_id, AVG(students) AS average_students
    FROM schools
    GROUP BY district_id
),


Employee_CTE (EmployeeNumber, Title) AS (
    SELECT NationalIDNumber, JobTitle
    FROM HumanResources.Employee123
),

#RuleStart:Rule4HomeAddress#
Rule4HomeAddress as
 (Select distinct h.plotid,h.sectorid,a.homeowner,a.id
 from home h join
      address a
 on h.plotid=a.id)124
#RuleEnd:Rule4HomeAddress#

,
#RuleStart:Rule1Businessdata#
Rule1Businessdata as
 (Select distinct p.id,p.name,d.profession
 from profile p join
      data d
 on p.id=d.contactid)Change2 









    
#RuleEnd:Rule1Businessdata#
,
Sales_CTE AS (
    SELECT EmployeeID, SUM(TotalSales) AS TotalSales
    FROM Sales
    GROUP BY EmployeeID
),


#RuleStart:Rule6ValidationProof# cte1 as
 (Select v.validationid,b.time from table1
  where v.status='Married'),
Rule6ValidationProof as 
  (Select s.id,s.name,c.validationid from soap s join
   cte1 c)
#RuleEnd:Rule6ValidationProof#


Select * from avg_students 
Union
Select * from Employee_CTE 
Union
Select * from Rule5OrderCompletion
Union
Select * from Rule3AddressVerification;  


