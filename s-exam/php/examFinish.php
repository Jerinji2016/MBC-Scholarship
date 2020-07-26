<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exam Complete</title>

    <style>
        body {
            background-image: url('https://i.ytimg.com/vi/3AWoUBUE8wo/maxresdefault.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            color: white;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            margin: 0;
        }
        .full {
            display: flex;
            padding: 5%;
            flex-direction: column;
            height: 100vh;
            justify-content: center;
            align-items: center;
            width: 100vw;
            background-color: rgba(0, 0, 0, 0.424);
        }
        .clg-link {
            margin-top: 50px;
            background-color: green;
            padding: 10px;
            border-radius: 5px;

        }
    </style>
</head>

<body>
    <?php 
        include '../../session.php';

        session_destroy();
    ?>

    <div class="full">
        <div>
            <h1>Congrats on completing the exam</h1>
        </div>
        <div>
            <ol>
                <li> You can get the results of the examination from the college website and also will be intimated to you
                    through sms or e- mail.
                </li>
                <li>
                    2. For any querries or information regarding admission please contact: <br> 7559933571, 9072200344,
                    8075250059, 7025062628
                </li>
            </ol>
        </div>
        <div class="clg-link">
            <a href="http://mbcpeermade.com/" style="text-decoration: none; color: #FFF;">More about MBC</a>
        </div>
    </div>
</body>

</html>