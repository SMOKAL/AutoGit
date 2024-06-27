   
Rule5OrderCompletion as
 (Select distinct o.orderid,o.orderstatus,u.uid
 from order o join
      uname u
 on orderid=u.uid)CICDTestingTake11ShreyaMokal34566
