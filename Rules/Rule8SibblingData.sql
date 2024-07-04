  
Sister as
 (Select y.name,y.id,k.Sibling from ytable y join
ktable on y.id = k.id),
Rule8SibblingData as 
  (Select s.name,s.sibling from Sister s where s.id in ('123','567','678')) 
 
