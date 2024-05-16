function kalkulacja() {
    var ogloszenia = document.getElementById("ogloszenia").value;
    var staly = document.getElementById("staly").checked;
    var wynik = document.getElementById("wynik");
    var koszt = 0;

    if (ogloszenia == "") {
        alert("Wpisz poprawna wartosc!");
        return;
    }

    if (ogloszenia < 0) {
        alert("Wpisz poprawna wartość!");
        return;
    }

    if (ogloszenia > 40) {
        koszt = parseInt(ogloszenia) * 2;
    } else {
        koszt = parseInt(ogloszenia) * 3;
    }

    if (staly) {
        koszt = parseFloat(koszt) - 0.3;
    }

    wynik.innerHTML = "Twoje ogłoszenia będą kosztować: " + koszt + " PLN";
}