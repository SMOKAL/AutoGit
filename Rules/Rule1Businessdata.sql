/** Rule Start :    **/    
with Businessdata as
 (Select distinct p.id,p.name,d.profession
 from profile p join
      data d
 on p.id=d.contactid)
Select * from Businessdata ;
 /** Rule End :     **/