    
Rule2MarriedStatus as
 (Select distinct m.name,m.gender,n.status
 from marraige m join
      status n
 on m.id=n.id)ThisIsCICDTestingPart7ccccR1234
