WITH avg_students AS (
    SELECT district_id, AVG(students) AS average_students
    FROM schools
    GROUP BY district_id
),


Employee_CTE (EmployeeNumber, Title) AS (
    SELECT NationalIDNumber, JobTitle
    FROM HumanResources.Employee
),

/** Rule Start :Rule5OrderCompletion     **/    
Rule5OrderCompletion as
 (Select distinct o.orderid,o.orderstatus,u.uid
 from order o join
      uname u
 on orderid=u.uid)
/** Rule End :Rule5OrderCompletion     **/

,

/** Rule Start :Rule10BcgCheck     **/    
Rule10BcgCheck as
 (Select b.marks,b.id,b.name,r.policestatus,r.validityid
from bcg b join check r
where b.maritialstatus = 'Single')
, 

/** Rule End :Rule10BcgCheck     **/
Sales_CTE AS (
    SELECT EmployeeID, SUM(TotalSales) AS TotalSales
    FROM Sales
    GROUP BY EmployeeID
),


/** Rule Start :Rule3AddressVerification     **/    
Rule3AddressVerification as
 (Select distinct k.adharno,l.pinid
 from documents k join
      legal l
 on k.id=l.id)
/** Rule End :Rule3AddressVerification     **/



Select * from avg_students 
Union
Select * from Employee_CTE 
Union
Select * from Rule5OrderCompletion
Union
Select * from Rule3AddressVerification;  


