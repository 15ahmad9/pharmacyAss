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

  <title>Admin Login</title>



  <link rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"/>
</head>

<body>
  <header>
    <a href="index.php"><img src="./image/PharmacyLogo.png" alt="Pharmacy Logo" class="logo"/></a>
    <nav class="navigation">
      <ul>
        <li><a href="index.php">Home</a> </li>

        <li><a href="AdminLogin.php">Admin login</a></li>
      </ul>
    </nav>
  </header>

  <div>
  <?php
if(!empty($_GET))
{
  if(isset($_GET['errors']))
  {
    echo $_GET['errors'];
  }
  if(isset($_GET['info']))
  {
    echo $_GET['info'];
  }
}

  ?>

</div>

<style>
        .submit{
width: 180px;
        }

    </style>

  <div class="main">
    <p class="sign" align="center">Sign in</p>

    <form class="form1" action="process/login_process.php" method="post">

      <input class="un " name="username" type="text" align="center" placeholder="username" required>
      <input class="pass" name="password" type="password" placeholder="Password" required>

      <input type="submit" class="submit" align="center" ></input>

      
      <p class="forgot" align="center"><a href="#">Forgot Password?</p>
            
                
    </div>
  


</body>

  </html>
  
  