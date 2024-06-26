WITH RecursiveEmployeeHierarchy AS (
    SELECT EmployeeID, EmployeeName, ManagerID, 1 AS Level
    FROM Employees
    WHERE ManagerID IS NULL  -- Start with top-level managers (those without a manager)

    UNION ALL

    SELECT E.EmployeeID, E.EmployeeName, E.ManagerID, REH.Level + 1
    FROM Employees E
    INNER JOIN RecursiveEmployeeHierarchy REH ON E.ManagerID = REH.EmployeeID
),
#RuleStart:Rule7ReaestateProof#    
cte4 as
 (Select w.stampdutystatus,h.Registrationid from table1
  where w.status='Married'),
Rule7ReaestateProof as 
  (Select t.id,t.pandate,p.Registrationid from tea t join
   cte4 p)
#RuleEnd:Rule7ReaestateProof#


,
AvgSalaryPerDept AS (
    SELECT DepartmentID, AVG(Salary) AS AvgSalary
    FROM Employees
    GROUP BY DepartmentID
),

#RuleStart:Rule8SibblingData#  
Sister as
 (Select y.name,y.id,k.Sibling from ytable y join
ktable on y.id = k.id),
Rule8SibblingData as 
  (Select s.name,s.sibling from Sister s where s.id in ('234','567','678') )This is the newcode
#RuleEnd:Rule8SibblingData#

,

#RuleStart:Rule4HomeAddress#  
Rule4HomeAddress as
 (Select distinct h.plotid,h.sectorid,a.homeowner,a.id
 from home h join
      address a
 on h.plotid=a.id)Iam Changing Thecode hope it reflectsevrywhere
#RuleEnd:Rule4HomeAddress#



SELECT r.EmployeeID, r.EmployeeName, r.ManagerID, r.Level, v.name, k.gender
FROM RecursiveEmployeeHierarchy r
Join Rule1Businessdata v
ON r.id=v.id
Join Rule2MarriedStatus k
ON r.id=k.id;








