alter table Undergraduate
add constraint no_overlaps 
	check (not exists 
			(select G.idNumber from Graduate as G));
            
alter table Majors
add constraint no_overlaps 
	check (not exists 
			(select M.pname from Minors as M));