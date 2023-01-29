<?php
include("config/db_config.php");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="style.css" type="text/css" />
    <link rel="stylesheet" href="admin.css" type="text/css" />

    <meta name="author" content="Ahmad Ghanem">
    <meta name="description" content="Blog about Pharmacy">
    <meta name="title" content="learning HTML, CSS, JS, Pharmacy">

    <meta name="keywords" content="javascript, html, css, variable">

    <!-- logo icon -->
    <link rel="shortcut icon" href="image/PharmacyLogo.png">

    <title>Delete Page</title>



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
        table,
        td,
        th {
            border: 1px solid #ddd;
            text-align: left;
            padding: 10px;
        }

        table {
            border-collapse: collapse;
            /* width: 100%; */
        }

        /* th, td {
  padding: 15px;
} */

        #fffff {
            position: absolute;
            top: 25%;
            left: 39%;
        }

        #sub {
            width: 180px;
        }

        table {
            position: absolute;
            top: 38%;
            left: 2%;
    right: 2%;
        }
    </style>
    <div>
        <?php
        if (isset($_GET['msg'])) {
            echo $_GET['msg'];
        }
        if (isset($_GET['info'])) {
            echo $_GET['info'];
        }


        ?>
    </div>
    <div>

        <form id="fffff" action="delete.php" method="post">
            <select name="branch">
                <option value="1">Amman</option>
                <option value="2">Irbid</option>
                <option value="3">Aqaba</option>
                <option value="4">Zarqa</option>
                <option value="5">Al Karak</option>
                <option value="6">Ma'an</option>
            </select>
            <input type="submit" id="sub">
        </form>

        <table>
            <tr>
                <th>Prodect Name</th>
                <th>Branches ID</th>
                <th>Price (JD)</th>
                <th>Description</th>
                <th>Delete</th>
            </tr>
            <?php

            if (!empty($_POST)) {
                $error = "";

                if (empty($_POST['branch'])) {
                    $error .= "Select Branch!";
                }
                if ($error != "") {
                    header("location:../index.php?error=$error");
                }
                $branches = $_POST['branch'];
                $get_id = "SELECT * FROM product WHERE BranchesID = '$branches'";
                $result = mysqli_query($connection, $get_id);
                if (mysqli_query($connection, $get_id)) {
                    while ($data = mysqli_fetch_assoc($result)) {
                        $product_id = $data['ID'];

                        echo "<tr>
   <td> $data[Name]</td>
   <td> $data[BranchesID]</td>
   <td> $data[Price]</td>
   <td> $data[Description]</td>
   <td> . <a href='process\delete_process.php?id=$product_id'>Delete</a> . </td>
   </tr>";
                    }
                }
            }

            ?>

        </table>

    </div>

</body>

</html>