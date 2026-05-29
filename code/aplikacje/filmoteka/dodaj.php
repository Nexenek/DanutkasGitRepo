<?php

    if(isset($_POST["tytul"]) && isset($_POST["gatunek"]) && isset($_POST["rok"]) && isset($_POST["ocena"])) {
        $tytul = $_POST["tytul"];
        $gatunek = $_POST["gatunek"];
        $rok = $_POST["rok"];
        $ocena = $_POST["ocena"];

        $conn = new mysqli("localhost","root","","dane");

        $sql = "INSERT INTO `filmy` (`id`, `gatunki_id`, `tytul`, `rok`, `ocena`) VALUES (NULL, '$gatunek', '$tytul', '$rok', '$ocena');";
        $result = $conn->query($sql);
    
        $conn -> close();

        echo "Film został pomyślnie dodany";
    }
?>