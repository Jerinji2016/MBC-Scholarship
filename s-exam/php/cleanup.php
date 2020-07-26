<?php 
    include '../../dbConnect.php';


    $get_unupdate = "SELECT user_id FROM sch_student_list WHERE exam_status = 1";
    $res = mysql_query($get_unupdate);

    while($row = mysql_fetch_assoc($res)) {
        echo $row['user_id']."\n";
    }
?>