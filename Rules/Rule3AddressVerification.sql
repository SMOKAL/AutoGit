  
Rule3AddressVerification as
 (Select distinct k.adharno,l.pinid
 from documents k join
      legal l
 on k.id=l.id)
