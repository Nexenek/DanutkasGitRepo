<?php
    // Skrypt #1
    if(!empty($_POST["imie"]) && !empty($_POST["nazwisko"]) && !empty($_POST["adres"])) {
        $imie = $_POST["imie"];
        $nazwisko = $_POST["nazwisko"];
        $adres = $_POST["adres"];

        $conn = new mysqli("localhost","root","","wedkowanie");
        $sql = "INSERT INTO karty_wedkarskie VALUES (NULL, '$imie', '$nazwisko', '$adres', NULL, NULL);";
        $result = $conn->query($sql);
        $conn -> close();

        echo "Pomyślnie dodano zgłoszenie na kartę wędkarską";
    }
?>