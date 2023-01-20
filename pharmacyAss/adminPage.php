<?php
session_start();


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="admin.css" />

    <meta name="author" content="Ahmad Ghanem">
    <meta name="description" content="Blog about Pharmacy">
    <meta name="title" content="learning HTML, CSS, JS, Pharmacy">

    <meta name="keywords" content="javascript, html, css, variable">

    <!-- logo icon -->
    <link rel="shortcut icon" href="image/PharmacyLogo.png">

    <title>Admin Page</title>



    <link rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
        crossorigin="anonymous" />
</head>

<body>
    <header>
        <a href="index.php"><img src="./image/PharmacyLogo.png" alt="Pharmacy Logo" class="logo" /></a>
        <nav class="navigation">
            <ul>
                <li><a href="index.php">Home</a> </li>

                <li><a href="AdminLogin.php">Admin login</a></li>
            </ul>
        </nav>
    </header>

    <style>
        body {
            background: url(image/hero.jpg) no-repeat;
            background-size: cover;
            background-position: center;
            background-attachment: fixed;

        }

        .main_adm {
            display: grid;
            align-items: center;
            justify-content: center;
            background-color: #FFFFFF;
            width: 300px;
            height: 300px;
            margin: 7em auto;
            border-radius: 1.5em;
            box-shadow: 0px 11px 35px 2px rgb(0 0 0 / 14%);
            position: absolute;
            top: 15%;
            left: 40%;

        }

        .main_adm a {
            display: grid;
            align-items: center;
            justify-content: center;
        }

        #btn {
            margin-top: 15px;
            padding: 15px 20px;
            border-radius: 30px;
            transition: all 0.3s;
        }


        #btn:hover {
            background: rgba(43, 57, 85, 0.199);
        }
    </style>

    <section class="main_adm">
        <a>Welcome <?php echo $_SESSION['username'] ?></a>
        <!-- </br> -->
        <button id="btn"><a href="insert.php">Insert</a></button>
        <button id="btn"><a href="delete.php">Delete</a></button>
        <button id="btn"><a href="process/logout.php">Logout</a></button>
        <h3 id="btn"><a href="showQuestion.php">Show Qustion</a></h3>
        </div>

</body>

</html>