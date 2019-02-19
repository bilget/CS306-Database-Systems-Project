create table Students (
idNumber int,
sname char(20),
suId char(20),
firstAdmitYear int,
primary key (idNumber));

create table Undergraduate(
idNumber int,
primary key (idNumber),
foreign key (idNumber)
	references Students
    on delete cascade);

create table Graduate(
idNumber int,
primary key (idNumber),
researchArea char(45),
foreign key (idNumber)
	references Students
    on delete cascade,
constraint no_overlaps 
	check (not exists 
			(select U.idNumber from Undergraduate as U)));

create table Faculties(
fname char(30),
primary key (fname));

create table Programs(
pname  char(45),
primary key (pname));

create table Majors(
pname char(45),
primary key (pname),
foreign key (pname)
	references Programs
    on delete cascade);

create table Minors(
pname char(45),
primary key (pname),
foreign key (pname)
	references Programs
    on delete cascade,
constraint no_overlaps 
	check (not exists 
			(select M.pname from Majors as M)));

create table Courses(
crn int,
cName char(25),
definition char(255),
primary key (crn));

create table Instructors(
suId char(20),
name char(20),
surname char(20),
primary key (suId));

create table Gives(
term char(10),
suId char(20),
crn int,
foreign key (suID) references Instructors,
foreign key (crn) references Courses);

create table Offers(
pname char(45) not null,
crn int,
primary key (crn),
foreign key (pname) references Programs,
foreign key (crn) references Courses);

create table Includes(
pname char(45),
fname char(30) not null,
primary key (pname),
foreign key (pname) references Programs,
foreign key (fname) references Faculties);

create table Picks(
idNumber int,
pname char(45),
primary key (idNumber, pname),
foreign key (idNumber) references Undergraduate,
foreign key (pname) references Programs);