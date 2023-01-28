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

    <title>Insert Page</title>



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

        .branch {
            position: absolute;
            left: 40%;
            top: 22%;

        }

        .pass {
            width: 80%;
            color: rgb(38, 50, 56);
            font-weight: 700;
            font-size: 19px;
            letter-spacing: 1px;
            background: rgb(145 122 122 / 4%);
            padding: 15px 20px;
            /* border: none; */
            border-radius: 30px;
            /* outline: none; */
            /* box-sizing: border-box; */
            border: 2px solid rgba(0, 0, 0, 0.02);
            margin-bottom: 60px;
            margin-left: 46px;
            text-align: center;
            font-family: 'Ubuntu', sans-serif;
        }

        #sub {
            background: linear-gradient(-50deg, #BAD7E9, rgb(43, 58, 85));
            padding: 15px 20px;
            /* border: none; */
            border-radius: 30px;
            width: 350px;
            transition: all 0.3s;
        }

        #sub:hover {
            background: #1b253a;
        }

        .branch a {
            display: grid;
            align-items: center;
            justify-content: center;
        }

        #msg {
            margin-top: 30px;
            display: flex;
            border-radius: 30px;
            justify-content: center;
            padding: 15px;
            background: #2b3a55c8;
            color: white;
        }
    </style>
    <section class="branch">
        <form class="branch" action="process/insert_process.php" method="get">
            <!-- <label for="name">Name</label><br> -->
            <input class="pass" type="text" name="name" placeholder="Name"> <br>
            <input class="pass" type="text" name="Price" placeholder="Price (JD)"> <br>
            <input class="pass" type="text" name="Description" placeholder="Production Date"> <br>

            <select class="pass" name="branch">
                <option value="1">Amman</option>
                <option value="2">Irbid</option>
                <option value="3">Aqaba</option>
                <option value="4">Zarqa</option>
                <option value="5">Al Karak</option>
                <option value="6">Ma'an</option>
            </select>
            </br>
            <input id="sub" type="submit">


            <div id="msg">
                <?php
                if (!empty($_GET)) {
                    if (isset($_GET['error'])) {
                        echo $_GET['error'];
                    } else if (isset($_GET['message'])) {
                        echo $_GET['message'];
                    }

                }
                ?>
            </div>
        </form>
    </section>
</body>

</html>