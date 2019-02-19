<?php

$db = mysqli_connect('localhost', 'root', '', 'cs306-sailorsdb');

if($db->connect_errno > 0){
    die('Unable to connect to database [' . $db->connect_error . ']');
}

?>