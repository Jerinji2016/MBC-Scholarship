<!-- done -->

<?php 
    include '../../dbConnect.php';

    $arr = $_GET['arr'];
    $arr = json_decode($arr);

    for($x=0; $x<count($arr); $x++) {
        $user_id = $arr[$x][2];
        $pass = randomPassword();

        $insert_student = mysql_query("INSERT INTO sch_student_list(name, phone, user_id, password) VALUES('".$arr[$x][0]."','".$arr[$x][1]."','".$user_id."','".$pass."')");
        echo $insert_student."\n\n";
        
        $change_status = mysql_query("UPDATE sch_student_details SET approval_status=1 WHERE email='".$arr[$x][2]."'");
        echo $change_status."\n\n";

        sendMail($user_id, $pass);
    }

    function randomPassword() {
        $alpha = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        $pass = substr(str_shuffle($alpha), 0, 8);
        return $pass;
    }

    function sendMail($user, $pass) {
        $to = $user;
        $subject = "Mail Regarding Scholarship Exam";
        $frm = 'noreply@mbcscholarship.com';
        //$from = "jerinji2016@gmail.com";
        echo $frm." New \n";
    
        $headers = "From: " . $frm . "\r\n";
        $headers .= "Reply-To: ". $frm . "\r\n";
        $headers .= "MIME-Version: 1.0\r\n";
        $headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";
    
        // PREPARE THE BODY OF THE MESSAGE
    	$message = "
        <html>
            <body style='font-family: Helvetica'>
                <div>
                    Your registration has successfully been approved by the Exam Cell 
                    <br>
                    Please Go through the details given below
                    <br>
                    <br>
                    Visit <a href='http://mbccet.in/MBC-Entrance-Mock/'>http://mbccet.in/MBC-Entrance-Mock/</a>
                    <br>
                    Login using your username and password given below:
                    <br>
                    <b>Username : </b>$user<br><b>Password : </b>$pass
                    <br> 
                    <br> 
                    <hr>
                    <br>
                    <b>
                    For any queries 
                    <br>
                    Phone: (+91)-7559933571 
                    <br>
                    Email: admission@mbcpeermade.com 
                    </b>
                    <br>
                    <br>
                    <i>Regards
                    <br>
                    <b>MBC Exam Cell</b>
                    <br> 
                    Mar Baselios Christian College of Engineering & Technology <br>
                    Kuttikanam, Idukki</i>
                </div>
            </body>
        </html> ";
    
    	//   CHANGE THE BELOW VARIABLES TO YOUR NEEDS
        if( mail($to, $subject, $message, $headers))
           echo "<div class='success'>Your mail is successfully send</div>";       
        else 
            echo "<div class='error'>There was a problem sending the email to $user</div>";
        
    }
?>