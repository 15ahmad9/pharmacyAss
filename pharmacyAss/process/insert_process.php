<?php
session_start();
include("../config/db_config.php");
if (isset($_GET)) {
    $error = "";

    if (empty($_GET['name']) || empty($_GET['branch'])) {
        $error .= "Name and branch cannot be empty";
    }

    if ($error != "") {
        header("location:../insert.php?error=$error");
    } else {

        $name = $_GET['name'];
        $branch = $_GET['branch'];

        $query = "INSERT INTO product (Name, BranchesID) VALUES ('$name', '$branch')";

        $get = mysqli_query($connection, $query);
        if (!$get) {
            echo "Error: " . mysqli_error($connection);
        } else {
            header("location:../insert.php?message=Entry succeeded");
        }

    }
}
?>