<?php
// Include the connect.php file
include('includes/connect.php');

// Check if the connection is established
if ($connect) {
    echo "Connected successfully to the database!";
} else {
    echo "Failed to connect to the database.";
}
?>