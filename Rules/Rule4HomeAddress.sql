
Rule4HomeAddress as
 (Select distinct h.plotid,h.sectorid,a.homeowner,a.id
 from home h join
      address a
 on h.plotid=a.id)124

