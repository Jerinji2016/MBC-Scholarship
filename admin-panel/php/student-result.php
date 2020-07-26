<script>
    function toStringTime(time) {
        var h, m, s;
        if(time/60 >= 60) {
            h = Math.floor(Math.floor(time/60)/60);
            m = Math.floor(time/60)%60;
         }
        else {
            m = Math.floor(time/60);
        }
        s = time%60;

        var str = "";
        str += (h && h != 0) ? h+"Hr " : "";
        str += (m && m != 0) ? m+"m " : "";
        str += (s && s != 0) ? s+"s " : "";

        if(str == "")
            str = "0s";
        return str;
    }
</script>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Results</title>
    
    <link rel="stylesheet" href="../css/student-result-style.css?v=4">
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Chettan+2:wght@600&family=Baloo+Da+2&family=Open+Sans&family=Roboto&family=Roboto+Condensed&display=swap" rel="stylesheet">

    
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>

    <style>
        body {
            background: url("https://webgradients.com/public/webgradients_png/089%20Premium%20White.png");
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-size: cover;
            color: black;
            overflow-x: hidden;
            font-family: 'Baloo Da 2', cursive;
            font-family: 'Open Sans', sans-serif;
            font-family: 'Roboto', sans-serif;
            font-family: 'Roboto Condensed', sans-serif;
            font-family: 'Baloo Chettan 2', cursive;
        }
    </style>
</head>
<body>
    <?php 
        include '../../dbConnect.php';
    ?>
        <script>
            var resultList = [];
            var notaneed = <?php include 'adminSession.php'; ?> ;

            console.log(notaneed[1]);
        </script> 
    <?php
        $res = mysql_query("SELECT * FROM sch_student_list WHERE exam_status>0");

        while($row = mysql_fetch_assoc($res)) {
    ?>
            <script>
                var r = JSON.parse('<?php echo json_encode($row) ?>');
                r.total_marks = (parseInt(r.physics_marks) + parseInt(r.maths_marks) + parseInt(r.chemistry_marks) + parseInt(r.gk_marks)).toString();

                r.each_subject = `Phy: ${toStringTime(r.time_physics)} <br>
                Chem: ${toStringTime(r.time_chemistry)} <br>
                Math: ${toStringTime(r.time_maths)}<br>
                Gk: ${toStringTime(r.time_gk)}`;
                
                var tt = parseInt(r.time_physics) + parseInt(r.time_chemistry) + parseInt(r.time_maths) + parseInt(r.time_gk)
                r.total_time = toStringTime(tt);
                
                resultList.push(r);
            </script>
    <?php
        }
    ?>
    <div class="result-container">
        <div class="mbc-header-logo">
            <div>
                <img src="../../img/logo/mbc-logo-expanded.png" alt="mbc-logo" id="mbc-logo">
            </div>
            <div style="display: flex; justify-content: flex-end; align-items: center">
                <i class="material-icons" style="font-size:36px">person</i>
                <span id='user-name'> </span>
            </div>
        </div>
        <div class="result-body-container" id="result-list-target">
        <table id="res-table" class="display" style="width:100%">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>User ID</th>
                    <th>Phone No.</th>
                    <th>Physics <br> Mark(20)</th>
                    <th>Chemistry <br> Marks(20)</th>
                    <th>Maths <br> Marks(20)</th>
                    <th>GK Marks(20)</th>
                    <th>Total <br> Marks(80)</th>
                    <th>Each <br> Subject <br> Time</th>
                    <th>Total <br> Time</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <th>Name</th>
                    <th>User ID</th>
                    <th>Phone No.</th>
                    <th>Physics<br> Mark(20)</th>
                    <th>Chemistry <br> Marks(20)</th>
                    <th>Maths <br> Marks(20)</th>
                    <th>GK Marks(20)</th>
                    <th>Total <br> Marks(80)</th>
                    <th>Each <br> Subject <br> Time</th>
                    <th>Total <br> Time</th>
                </tr>
            </tfoot>
        </table>
        </div>
    </div>
</body>
</html>

<script>
    document.getElementById('user-name').innerHTML = notaneed[1];

    $(document).ready(function() {
        $('#res-table').DataTable( {
            "data" : resultList,
            "columns": [
                { "data": "name" },
                { "data": "user_id" },
                { "data": "phone" },
                { "data": "physics_marks" },
                { "data": "chemistry_marks" },
                { "data": "maths_marks" },
                { "data": "gk_marks" },
                { "data": "total_marks" },
                { "data": "each_subject" },
                { "data": "total_time" },
            ]
        } );
    } );
</script>