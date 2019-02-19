<?php

$db = mysqli_connect('localhost', 'root', '', 'student_info');

if($db->connect_errno > 0){
    die('Unable to connect to database [' . $db->connect_error . ']');
}

$sql = 'SELECT * 
        FROM Students';
$result = mysqli_query($db, $sql);
$sqlCount = 'SELECT COUNT(*) as count FROM Students';

$resultCount = mysqli_query($db, $sqlCount);
$rowCount = mysqli_fetch_assoc($resultCount);
$count = $rowCount['count'];
?>

<table>
    <thead>
    <tr>
        <th>ID Number</th>
        <th>Name</th>
        <th>Surname</th>
        <th>SU ID</th>
        <th>First Admit Year</th>
    </tr>
    </thead>
    <tbody>



    <?php
    while($row = mysqli_fetch_assoc($result)) {
        $idNumber = $row['idNumber'];
        $sname = $row['sname'];
        $slastname = $row['slastname'];
        $suId = $row['suId'];
        $firstAdmitYear = $row['firstAdmitYear'];

        echo "<tr>
          <td>$idNumber</td>
          <td>$sname</td>
          <td>$slastname</td>
          <td>$suId</td>
          <td>$firstAdmitYear</td>
          </tr>";
    }
    ?>

    </tbody>
</table>
