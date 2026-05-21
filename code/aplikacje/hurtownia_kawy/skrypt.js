function policz() {
    let numer = document.getElementById("kawa").value;
    let waga = document.getElementById("waga").value;
    let cena = 0;

    if (numer == 1) {
        cena = 5 * waga;
    } else if (numer == 2) {
        cena = 7 * waga;
    } else if (numer == 3) {
        cena = 6 * waga;
    }

    document.getElementById('wynik').innerHTML = "Koszt zamówienia wynosi: " + cena + " zł";
}