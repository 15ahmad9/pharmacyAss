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

    <title>Show Question Page</title>



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
        table, td, th {  
  border: 1px solid #ddd;
  text-align: left;
}

table {
  border-collapse: collapse;
  /* width: 100%; */
}

        #QT {
            position: absolute;
            left: 30%;
            top: 20%;
        }
    </style>

    <div id="QT">
        <table>
            <tr>
                <th>Name</th>
                <th>Phone</th>
                <th>Question</th>

    </div>


    <?php
    include("config/db_config.php");

    $query = "SELECT * FROM question";
    $response = mysqli_query($connection, $query);

    while ($data = mysqli_fetch_assoc($response)) {
        echo "<tr>";
        echo "<td>" . $data['Name'] . "</td>";
        echo "<td>" . $data['phoneNumber'] . "</td>";
        echo "<td>" . $data['Question'] . "</td>";
        echo "</tr>";
    }

    ?>

    </tr>
    </table>

    
</body>

</html>