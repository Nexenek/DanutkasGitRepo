<!DOCTYPE html>
<html lang="PL-pl">
<head>
    <meta charset="UTF-8">
    <title>Remonty</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <h1>Malowanie i gipsowanie</h1>
    </header>
    <main>
        <nav>
            <a href="kontakt.html">Kontakt</a>
            <a href="https://remonty.pl" target="_blank">Partnerzy</a>
        </nav>
        <aside>
            <img src="tapeta_lewa.png" alt="usługi">
            <img src="tapeta_prawa.png" alt="usługi">
            <img src="tapeta_lewa.png" alt="usługi">
        </aside>
        <section id="lewa">
            <h2>Dla klientów</h2>
            <form action="zlecenia.php" name="klienci" method="post">
                <label for="pracownicy">Ilu co najmniej pracowników potrzebujesz?</label>
                <input type="number" id="pracownicy" name="pracownicy">
                <input type="submit" value="Szukaj firm">
                <?php
                    //skrypt 1
                ?>
            </form>
        </section>
        <section id="srodek">
            <h2>Dla wykonawców</h2>
            <form action="zlecenia.php" name="wykonawcy" method="post">
                <select name="">
                    <?php
                        //skrypt 2
                    ?>
            </form>
        </section>

    </main>
</body>
</html>