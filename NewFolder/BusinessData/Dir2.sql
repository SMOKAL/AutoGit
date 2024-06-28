with

#RuleStart:Rule7ReaestateProof#   
cte4 as
 (Select w.stampdutystatus,h.Registrationid from table1
  where w.status='Married'),
Rule7ReaestateProof as 
  (Select t.id,t.pandate,p.Registrationid from tea t join
   cte4 p)Mokal568mmdhajaj123
#RuleEnd:Rule7ReaestateProof#
,
#RuleStart:Rule3AddressVerification#  
Rule3AddressVerification as
 (Select distinct k.adharno,l.pinid
 from documents k join
      legal l
 on k.id=l.id)CICDTestingTake11345f
#RuleEnd:Rule3AddressVerification#