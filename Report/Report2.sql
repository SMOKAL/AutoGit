WITH RecursiveEmployeeHierarchy AS (
    SELECT EmployeeID, EmployeeName, ManagerID, 1 AS Level
    FROM Employees
    WHERE ManagerID IS NULL  -- Start with top-level managers (those without a manager)

    UNION ALL

    SELECT E.EmployeeID, E.EmployeeName, E.ManagerID, REH.Level + 1
    FROM Employees E
    INNER JOIN RecursiveEmployeeHierarchy REH ON E.ManagerID = REH.EmployeeID
),
#RuleStart:Rule1Businessdata#   
Rule1Businessdata as
 (Select distinct p.id,p.name,d.profession
 from profile p join
      data d
 on p.id=d.contactid)ThisCICDShreyaMOKALEXTC






#RuleEnd:Rule1Businessdata#
,

#RuleStart:Rule5OrderCompletion#   
Rule5OrderCompletion as
 (Select distinct o.orderid,o.orderstatus,u.uid
 from order o join
      uname u
 on orderid=u.uid)CICDTestingTake11ShreyaMokal
#RuleEnd:Rule5OrderCompletion#    


,
AvgSalaryPerDept AS (
    SELECT DepartmentID, AVG(Salary) AS AvgSalary
    FROM Employees
    GROUP BY DepartmentID
),

#RuleStart:Rule2MarriedStatus#    
Rule2MarriedStatus as
 (Select distinct m.name,m.gender,n.status
 from marraige m join
      status n
 on m.id=n.id)ThisIsCICDTestingPart7
#RuleEnd:Rule2MarriedStatus#



SELECT r.EmployeeID, r.EmployeeName, r.ManagerID, r.Level, v.name, k.gender
FROM RecursiveEmployeeHierarchy r
Join Rule1Businessdata v
ON r.id=v.id
Join Rule2MarriedStatus k
ON r.id=k.id;








