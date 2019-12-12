<?php
    $conn = new mysqli("localhost","root","12345678","soi 5");
    if($conn->connect_errno){
        die("Connection failed:".$conn->connect_error);
    }
?>