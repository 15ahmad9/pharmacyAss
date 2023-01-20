<?php

include("config/db_config.php")

  ?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">


  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


  <link rel="stylesheet" href="style.css" />

  <meta name="author" content="Ahmad Ghanem">
  <meta name="description" content="Blog about Pharmacy">
  <meta name="title" content="learning HTML, CSS, JS, Pharmacy">

  <meta name="keywords" content="javascript, html, css, variable">

  <!-- logo icon -->
  <link rel="shortcut icon" href="image/PharmacyLogo.png">

  <title>Health and Medicine Pharmacy</title>



  <link rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
    crossorigin="anonymous" />
</head>

<body>
  <header>
    <a href="index.php"><img src="./image/PharmacyLogo.png" alt="Pharmacy Logo" class="logo" /></a>
    <nav class="navigation">
      <ul>
        <li><a href="index.php">Home</a> </li>
        <li><a href="#About">About</a></li>
        <li><a href="#Branches">Branches</a> </li>

        <li><a href="#AskDoctor">Ask doctor</a></li>
        <li><a href="#CalculateWeight">Calculate weight</a></li>

        <li><a href="AdminLogin.php">Admin login</a></li>
      </ul>
    </nav>
  </header>

  <!-- Welcome Start -->
  <section class="hero">
    <div class="bg">
      <div class="container">
        <h1>Welcome Health and Medicine Pharmacy</h1>
        <h2>Best Healthcare Solution In Your City</h2>
      </div>

      <img src="./image/PharmacyLogo.png" alt="Pharmacy photo ">
    </div>
  </section>
  <!-- Welcome End -->

  <!-- About Start -->
  <section class="About" id="About">
    <div class="container">
      <img src="./image/ph.jpeg" alt="Pharmacy photo ">
      <h1>who are we?</h1>
      <p align="justify">
        (We hold our core value at the heart of what we do) </br>
        We, Health and Medicine Pharmacy, are present in all six branches in Jordan: Irbid, Amman, Aqaba, Zarqa, Al
        Karak, and Ma'an. </br>
        We welcome all new and existing clients, our aim is to provide a professional, personal and reliable service and
        are the first port of call for healthcare advice whether that be healthcare advice, prescriptions or free
        treatment for minor ailments. And fully prepared to answer your inquiries by the doctor, and we offer a wide
        range of products.</p>
    </div>
  </section>
  <!-- About End -->

  <!-- Branches Start -->
  <section class="Branches" id="Branches">
    <h1>Branches</h1>
    <!-- <section  style="width: 100%;"> -->
    <p align="center">To find out the locations and information of the Health and Drug pharmacy branches, please choose
      one of the branches from the list of regions.
    </p>
    <!-- </section> -->
    <!-- <div class="cards">
      <a href="#">Amman</a>
      <a href="#">Irbid</a>
      <a href="#">Karak</a>
      <a href="#">Ma'an</a>
      <a href="#">Zarqa</a>
      <a href="#">Aqaba</a>
    </div>

  </section> -->

    <style>
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
        text-align: center;
        font-family: 'Ubuntu', sans-serif;
      }

      #sub {
        background: #2b3a55;
        padding: 15px 20px;
        /* border: none; */
        border-radius: 30px;
        width: 350px;
        transition: all 0.3s;
      }

      #sub:hover {
        background: #1b253a;
      }
    </style>

    <form class="pass" action="get_process.php" method="post">
      <select class="pass" name="branch">
        <option value="1">Amman</option>
        <option value="2">Irbid</option>
        <option value="3">Aqaba</option>
        <option value="4">Zarqa</option>
        <option value="5">Al Karak</option>
        <option value="6">Ma'an</option>
      </select>
      <input id="sub" type="submit">
    </form>
    <!-- Branches End -->


    <!-- Ask Doctor Start -->
    <section class="AskDoctor" id="AskDoctor">
      <h1>Ask Doctor</h1>
      <p>Would you like to know any information related to any medicine? </p>
      <p>Would you like to consult a doctor about your medical condition?</p>

      <p>Don't hesitate to ask your own question
      </p>

      <form action="process/ask.php" method="get">
        <div class="con">
          <input name="Name" type="text" class="input" placeholder="Name" />
          <input name="phoneNumber" type="number" class="input" placeholder="Phone number" />
        </div>
        <textarea name="Question" class="input" placeholder="Question"></textarea>
        <input type="submit" value="Submit" />
      </form>
      <!-- Ask Doctor End -->
    </section>


    <!-- calculate weight Start -->
    <section class="calculateWeight" id="CalculateWeight">
      <h1>Calculate Weight</h1>
      <p>Calculate your ideal weight by entering height and weight, to find out the average weight if it is normal or
        from the obesity range. </p>
      <div class="calculateWeights">
        <h1 class="text-center">BMI Calculator</h1>
        <div class="form">
          <div class="mb-3">
            <label class="form-label">
              Height:
              <div class="input-value">
                <input id="height" class="form-range" type="range" value="1" min="1" max="300" />
                <span id="height-value">0</span>
                <!-- Select Height unit -->
                <select id="height-unit" class="form-select">
                  <option value="cm">cm</option>
                  <option value="m">m</option>
                  <option value="in">in</option>
                  <option value="ft">ft</option>
                </select>
              </div>
            </label class="form-label">
          </div>
          <div class="mb-3">
            <label class="form-label">
              Weight:
              <div class="input-value">
                <input id="weight" class="form-range" type="range" value="1" min="1" max="300" />
                <span id="weight-value">0</span>
                <!-- Select Weight unit -->
                <select id="weight-unit" class="form-select">
                  <option value="kg">kg</option>
                  <option value="g">g</option>
                  <option value="lbs">lbs</option>
                  <option value="oz">oz</option>
                </select>
              </div>
            </label>
          </div>
        </div>

        <div class="text-center">
          <h1 class="bmi"></h1>
          <h2 class="remark"></h2>
        </div>
      </div>

      <script integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
      <!-- link js from index.js -->
      <script src="app.js"></script>

    </section>



    <!-- Footer Start -->

    <footer class="footer-distributed">

      <div class="footer-left">

        <img src="image/PharmacyLogo.png" alt="Pharmacy Logo" class="logo">

        <div class="footer-links">

          <a href="index.php" class="link-1">Home</a>
          <a href="#About">About</a>
          <a href="#Branches">Branches</a>
          <a href="#AskDoctor">Ask doctor</a>
          <a href="#CalculateWeight">Calculate weight</a>

          <a href="AdminLogin.php">Admin login</a>

        </div>
        <p class="Copyright">Copyright &copy;
          <script>document.write(new Date().getFullYear())</script> All rights reserved to Ahmed Ghanem
        </p>
      </div>

      <div class="footer-center">

        <div>
          <i class="fa fa-map-marker"></i>
          <p class="icon-icon"><a href="#Branches">Branches</a></p>
        </div>

        <div>
          <i class="fa fa-phone"></i>
          <p class="icon-icon">+962781977173</p>
        </div>

        <div>
          <i class="fa fa-envelope"></i>
          <p class="icon-icon"><a href="mailto:support@company.com">amg.amyg@gmail.com</a></p>
        </div>

      </div>

      <div class="footer-right">

        <p class="footer-company-about">
          <span>Our Accounts</span>
          You can also follow us on social media.
        </p>

        <div class="footer-icons">

          <a href="#"><i class="fa fa-facebook"></i></a>
          <a href="#"><i class="fa fa-twitter"></i></a>
          <a href="#"><i class="fa fa-linkedin"></i></a>
          <a href="#"><i class="fa fa-instagram"></i></a>

        </div>

      </div>

    </footer>
    <!-- Footer End -->

</body>

</html>