/*Case 1*/
SELECT s.idNumber, S.sname, S.slastname
FROM students S;


/*Case 2*/
SELECT s.idNumber, S.sname, S.slastname
FROM students S
WHERE S.firstAdmitYear>=2015;

/*Case 3*/
SELECT s.idNumber, S.sname, S.slastname
FROM students S, (SELECT P.idNumber, M.pname
 	             FROM picks P, majors M
  	             WHERE P.pname= M.pname) AS TEMP, includes I
WHERE S.idNumber = TEMP.idNumber 
	AND TEMP.pname = I.pname
    AND I.fname = 'FacultyName';
    
/*Case 4*/
SELECT I.fname, C.cName
FROM courses C, offers O, includes I
WHERE C.crn = O.crn AND O.pname = I.pname;

/*Case 5*/
SELECT I.iname, I.ilastname, C.cname
FROM courses C, instructors I, gives G
WHERE I.suId = G.suId AND G.crn = C.crn;

/*Case 6*//*?????*/
SELECT C.cname
FROM courses C, students S, picks P
WHERE C.crn = P.crn ;/*?????*/
 
 /*Case 7*/
SELECT C.cname
FROM courses C, gives G
WHERE C.crn = G.crn AND G.term = 'fall';
