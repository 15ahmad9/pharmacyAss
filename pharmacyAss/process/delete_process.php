<?php
session_start();
include("../config/db_config.php");
if (isset($_GET['id'])) {
    $product_id = $_GET['id'];

    $product_query = "DELETE FROM product WHERE ID = '$product_id'";
    if (mysqli_query($connection, $product_query)) {
        $message = "The item has been deleted successfully";
        header("location:../delete.php?msg=$message");
    } else {
        echo "Error" . $product_query . " " . mysqli_error($connection);
    }
}

?>