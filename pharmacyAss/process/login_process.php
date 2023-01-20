<?php
include("../config/db_config.php");
// echo"Done";


if (!empty($_POST)) {
    // validation on field is empty ?
    $errors = "";
    if (empty($_POST['username']) || empty($_POST['password'])) {
        $errors .= '<li>You must enter your username and password</li>';
    }
    if ($errors != "") {
        header("location:../AdminLogin.php?error=" . $errors); // after ? is a variable with error name
    } else {

        $username = $_POST['username'];
        $password = $_POST['password'];
        // Database
        $user_query = "SELECT * FROM manager WHERE Name = '$username' AND password = '$password'";
        if (mysqli_query($connection, $user_query)) {
            // echo"Done";
            $user_response = mysqli_query($connection, $user_query);
            if (mysqli_num_rows($user_response) == 1) {
                // echo "we found the user";
                $data = mysqli_fetch_assoc($user_response);
                // echo $data['']
                $name = $data['username'];

                $name_query = "SELECT * FROM manager WHERE username = '$name'";
                $name_response = mysqli_query($connection, $name_query);
                $name_data = mysqli_fetch_assoc($name_response);
                // echo $name_data['$username'];

                if ($name_data['Name'] = 'manager') {
                    session_start();
                    $_SESSION['username'] = $data['username'];
                    $_SESSION['Name'] = $data['Name'];

                    header("location:../adminPage.php");
                }

            } else {
                // echo "we cann't found the user"
                $info = "The user account isn't found";
                header("location:../AdminLogin.php?info=$info");

            }

        } else {
            echo "Error" . $user_query . mysqli_errors($connection);
        }

    }
}