<?php
/**
 * Created by PhpStorm.
 * User: salim
 * Date: 21-May-17
 * Time: 14:15
 */

$q = $_REQUEST["q"];

$db = mysqli_connect('localhost', 'root', '', 'student_info');

if($db->connect_errno > 0){
    die('Unable to connect to database [' . $db->connect_error . ']');
}

$sql = "SELECT C.crn, C.cName, C.definition FROM courses C WHERE C.crn IN (SELECT O.crn
				                                                          FROM offers O, picks P
				                                                          WHERE P.idNumber = $q AND O.pname = P.pname)";
$result = mysqli_query($db, $sql);

$emparray = array();
while($row = mysqli_fetch_assoc($result))
{
    $emparray[] = $row;
}

echo json_encode($emparray);

?>