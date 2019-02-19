<?php
/**
 * Created by PhpStorm.
 * User: salim
 * Date: 21-May-17
 * Time: 12:54
 */
$q = $_REQUEST["q"];

$db = mysqli_connect('localhost', 'root', '', 'student_info');

if($db->connect_errno > 0){
    die('Unable to connect to database [' . $db->connect_error . ']');
}

$sql = "SELECT s.idNumber, S.sname, S.slastname
FROM students S, (SELECT P.idNumber, M.pname
 	             FROM picks P, majors M
  	             WHERE P.pname= M.pname) AS TEMP, includes I
WHERE S.idNumber = TEMP.idNumber 
	AND TEMP.pname = I.pname
    AND I.fname = '$q'";
$result = mysqli_query($db, $sql);

$emparray = array();
while($row = mysqli_fetch_assoc($result))
{
    $emparray[] = $row;
}

echo json_encode($emparray);
?>