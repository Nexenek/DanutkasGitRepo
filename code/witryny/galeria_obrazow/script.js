let numer_zdj = 1;

function pokaz(nazwa_pliku) {
    document.getElementById("duze").src = nazwa_pliku;
    numer_zdj = parseInt(nazwa_pliku);
}

function poprzednie() {
    if (numer_zdj > 1) {
        numer_zdj--;
        document.getElementById("duze").src = numer_zdj + ".jpg";
    }
}

function nastepne() {
    if (numer_zdj < 5) {
        numer_zdj++;
        document.getElementById("duze").src = numer_zdj + ".jpg";
    }
}