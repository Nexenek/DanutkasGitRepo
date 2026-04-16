<!DOCTYPE html>
<html lang="PL-pl">
<head>
	<meta charset="UTF-8">
	<title>Pogoda</title>
	<link rel="stylesheet" type="text/css" href="styl.css">
</head>
<body>
	<header id="pierwszy">
		<img src="slonce.png" alt="Słonecznie">
	</header>
	<header id="drugi">
		<h1>Pogoda w Europie</h1>
	</header>
	<main>
		<section id="lewy">
			<h2>Temperatury w lipcu</h2>
			<table>
				<tr><th>Miasto</th><th>Kraj</th><th>Temperatura</th><th>Pogoda</th></tr>
				<?php
					$link=mysqli_connect("localhost", "root", "", "pogoda");
					$zap3="SELECT m.nazwa,m.kraj, p.temperatura FROM miejscowosc m,pomiary p WHERE m.id=p.id_miejscowosc and p.id_miesiac=7;";
					$wynik3=mysqli_query($link, $zap3);
					while($wiersz=mysqli_fetch_array($wynik3)){
					$obraz="";
					if($wiersz[2] > 30) {
					$obraz="<img src='slonce.png'>";
					}
					else if ($wiersz[2] < 26) {
					$obraz="<img src='deszcz.png'>";
					}
					else{
						$obraz="<img src='chmury.png'>";
					}
					echo"<tr><td>$wiersz[0]</td><td>$wiersz[1]</td><td>$wiersz[2]</td><td>$obraz</td></tr>";
					}
				?>
			</table>
		</section>
		<section id="prawy">
			<h2>Średnie temperatury w roku</h2>
			<a href="index.php?id_m=1">Styczeń</a>
			<a href="index.php?id_m=2">Luty</a>
			<a href="index.php?id_m=3">Marzec</a>
			<a href="index.php?id_m=4">Kwiecień</a>
			<a href="index.php?id_m=5">Maj</a>
			<a href="index.php?id_m=6">Czerwiec</a>
			<a href="index.php?id_m=7">Lipiec</a>
			<a href="index.php?id_m=8">Sierpień</a>
			<a href="index.php?id_m=9">Wrzesień</a>
			<a href="index.php?id_m=10">Październik</a>
			<a href="index.php?id_m=11">Listopad</a>
			<a href="index.php?id_m=12">Grudzień</a>
			<p>Średnia temperatura dla wybranego miesiąca wynosi</p>
			<?php
				if(isset($_GET['id_m'])){
					$id_m=$_GET['id_m'];
					$zap1="SELECT ROUND(AVG(`temperatura`),2) FROM `pomiary` WHERE `id_miesiac`=$id_m;";
					$wynik1=mysqli_query($link, $zap1);
					$wiersz=mysqli_fetch_array($wynik1);
						echo"<h3>$wiersz[0] stopni</h3>";
				}
				mysqli_close($link);
			?>
		</section>
	</main>
	<footer>
		<p>Numer zdającego: 00000000000</p>
	</footer>
</body>
</html>