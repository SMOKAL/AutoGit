WITH avg_students AS (
    SELECT district_id, AVG(students) AS average_students
    FROM schools
    GROUP BY district_id
),


Employee_CTE (EmployeeNumber, Title) AS (
    SELECT NationalIDNumber, JobTitle
    FROM HumanResources.Employee
),

/** Rule Start :Rule4HomeAddress     **/    
Rule4HomeAddress as
 (Select distinct h.plotid,h.sectorid,a.homeowner,a.id
 from home h join
      address a
 on h.plotid=a.id)
/** Rule End :Rule4HomeAddress     **/

,
#RuleStart:Rule1Businessdata# Your new content goes here #RuleEnd:Rule1Businessdata#
,
Sales_CTE AS (
    SELECT EmployeeID, SUM(TotalSales) AS TotalSales
    FROM Sales
    GROUP BY EmployeeID
),


/** Rule Start :Rule6ValidationProof     **/    
cte1 as
 (Select v.validationid,b.time from table1
  where v.status='Married'),
Rule6ValidationProof as 
  (Select s.id,s.name,c.validationid from soap s join
   cte1 c)
/** Rule End :Rule6ValidationProof     **/


Select * from avg_students 
Union
Select * from Employee_CTE 
Union
Select * from Rule5OrderCompletion
Union
Select * from Rule3AddressVerification;  


