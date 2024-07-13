with

#RuleStart:Rule7ReaestateProof#   
cte4 as
 (Select w.stampdutystatus,h.Registrationid from table1
  where w.status='Married'),
Rule7ReaestateProof as 
  (Select t.id,t.pandate,p.Registrationid from tea t join
   cte4 p)123567  
#RuleEnd:Rule7ReaestateProof#
,

 ******1
#RuleStart:Rule3AddressVerification#  
Rule3AddressVerification as
 (Select distinct k.adharno,l.pinid
 from documents k join
      legal l
 on k.id=l.id)567
#RuleEnd:Rule3AddressVerification#


******2
#RuleStart:Rule3AddressVerification#  
Rule3AddressVerification as
 (Select distinct k.adharno,l.pinid
 from documents k join
      legal l
 on k.id=l.id) 
#RuleEnd:Rule3AddressVerification#

******3
#RuleStart:Rule3AddressVerification#  
Rule3AddressVerification as
 (Select distinct k.adharno,l.pinid
 from documents k join
      legal l
 on k.id=l.id)890
#RuleEnd:Rule3AddressVerification#
