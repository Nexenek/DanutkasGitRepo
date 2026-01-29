<?php
    if(isset($_POST["data"]) && isset($_POST["osoby"]) && isset($_POST["telefon"])) {
        $data = $_POST["data"];
        $osoby = $_POST["osoby"];
        $telefon = $_POST["telefon"];

        $conn = mysqli_connect("localhost","root","","baza");

        $sql = "INSERT INTO rezerwacje VALUES (NULL, 1, '$data', $osoby, '$telefon');";
        $result = mysqli_query($conn, $sql);

        mysqli_close($conn);

        echo "Dodano rezerwację do bazy";
    }
?>