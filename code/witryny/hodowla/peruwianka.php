<!DOCTYPE html>
<html lang="PL-pl">
<head>
	<meta charset="UTF-8">
	<title>Hodowla świnek morskich</title>
	<link rel="stylesheet" type="text/css" href="styl.css">
</head>
<body>
	<header>
		<h1>Hodowla świnek morskich - zamów świnkowe maluszki</h1>
	</header>
	<aside id="menu">
		<a href="peruwianka.php">Rasa Peruwianka</a>
		<a href="american.php">Rasa American</a>
		<a href="crested.php">Rasa Crested</a>
	</aside>
	<aside id="prawy">
		<h3>Poznaj wszystkie rasy świnek morskich</h3>
		<ol>
			<?php
				$link=mysqli_connect('localhost','root','','hodowla');
				$zap4='SELECT rasa FROM rasy';
				$wynik4=mysqli_query($link, $zap4);
				while($element=mysqli_fetch_array($wynik4)){
					echo "<li>$element[0]</li>";
				}
			?>
		</ol>
	</aside>
	<aside id="glowny">
		<img src="peruwianka.jpg" alt="Świnka morska rasy peruwianka">
		<?php
			$zap2="SELECT DISTINCT s.data_ur, s.miot, r.rasa FROM swinki s, rasy r WHERE r.id=s.rasy_id AND s.rasy_id=1";
			$wynik2=mysqli_query($link, $zap2);
			while($swinka=mysqli_fetch_array($wynik2)){
				echo "<h2>Rasa: $swinka[2]</h2>";
				echo "<p>Data urodzenia: $swinka[0]</p>";
				echo "<p>Oznaczenie miotu: $swinka[1]</p>";
			}
		?>
		<hr>
		<h2>Świnki w tym miocie</h2>
		<?php
			$zap3="SELECT imie, cena, opis FROM swinki WHERE rasy_id=1";
			$wynik3=mysqli_query($link, $zap3);
			while($opis=mysqli_fetch_array($wynik3)){
				echo "<h3>$opis[0] - $opis[1]zl</h3>";
				echo "<p>$opis[2]</p>";
			}
			mysqli_close($link);
		?>
	</aside>
	<footer>
		<p>Stronę wykonał: 25487623</p>
	</footer>
</body>
</html>