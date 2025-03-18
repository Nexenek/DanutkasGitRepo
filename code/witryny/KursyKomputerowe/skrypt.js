function oblicz(){
    let miasto = document.getElementById("miasto").value;
    let liczbaRat = document.getElementById("liczbaRat").value;
    let kursjs  = document.getElementById("kursjs").checked;
    let kursreact = document.getElementById("kursreact").checked;
    
    let kwota = 0;

    if (kursjs === true) {
        kwota += 3000;
    }
    if (kursreact === true) {
        kwota += 5000;
    }

    let rata = Math.floor(kwota/liczbaRat);
    document.getElementById("wynik").innerHTML = "Kurs odbędzie się w " + miasto + ". Koszt całkowity: " + kwota + " zł. Płacisz " + liczbaRat + " rat po " + rata + " zł";
}