WITH RecursiveEmployeeHierarchy AS (
    SELECT EmployeeID, EmployeeName, ManagerID, 1 AS Level
    FROM Employees
    WHERE ManagerID IS NULL  -- Start with top-level managers (those without a manager)

    UNION ALL

    SELECT E.EmployeeID, E.EmployeeName, E.ManagerID, REH.Level + 1
    FROM Employees E
    INNER JOIN RecursiveEmployeeHierarchy REH ON E.ManagerID = REH.EmployeeID
),
/** Rule Start :Rule7ReaestateProof     **/    
cte4 as
 (Select w.stampdutystatus,h.Registrationid from table1
  where w.status='Married'),
Rule7ReaestateProof as 
  (Select t.id,t.pandate,p.Registrationid from tea t join
   cte4 p)
/** Rule End :Rule6ValidationProof     **/


,
AvgSalaryPerDept AS (
    SELECT DepartmentID, AVG(Salary) AS AvgSalary
    FROM Employees
    GROUP BY DepartmentID
),

/** Rule Start :Rule9ExtraExpense     **/    
Rule9ExtraExpense as
 (Select e.Expense,e.id,f.name from expensetable e join
ftable on e.id = f.id)

/** Rule End :Rule8SibblingData     **/

,

/** Rule Start :Rule10BcgCheck     **/    
Rule10BcgCheck as
 (Select b.marks,b.id,b.name,r.policestatus,r.validityid
from bcg b join check r
where b.maritialstatus = 'Single')

/** Rule End :Rule10BcgCheck     **/


SELECT r.EmployeeID, r.EmployeeName, r.ManagerID, r.Level, v.name, k.gender
FROM RecursiveEmployeeHierarchy r
Join Rule1Businessdata v
ON r.id=v.id
Join Rule2MarriedStatus k
ON r.id=k.id;








