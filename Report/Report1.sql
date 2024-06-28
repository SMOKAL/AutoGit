WITH avg_students AS (
    SELECT district_id, AVG(students) AS average_students
    FROM schools
    GROUP BY district_id
),


Employee_CTE (EmployeeNumber, Title) AS (
    SELECT NationalIDNumber, JobTitle
    FROM HumanResources.Employee
),

#RuleStart:Rule5OrderCompletion#   
Rule5OrderCompletion as
 (Select distinct o.orderid,o.orderstatus,u.uid
 from order o join
      uname u
 on orderid=u.uid)CICDTesting2345
#RuleEnd:Rule5OrderCompletion#

,

#RuleStart:Rule10BcgCheck#  
Rule10BcgCheck as
 (Select b.marks,b.id,b.name,r.policestatus,r.validityid
from bcg b join check r
where b.maritialstatus = 'Single')CICD-SHREYAMokal23shreya

#RuleEnd:Rule10BcgCheck#
,
Sales_CTE AS (
    SELECT EmployeeID, SUM(TotalSales) AS TotalSales
    FROM Sales
    GROUP BY EmployeeID
),


#RuleStart:Rule3AddressVerification#  
Rule3AddressVerification as
 (Select distinct k.adharno,l.pinid
 from documents k join
      legal l
 on k.id=l.id)CICDTestingTake11345f
#RuleEnd:Rule3AddressVerification#



Select * from avg_students 
Union
Select * from Employee_CTE 
Union
Select * from Rule5OrderCompletion
Union
Select * from Rule3AddressVerification;  


