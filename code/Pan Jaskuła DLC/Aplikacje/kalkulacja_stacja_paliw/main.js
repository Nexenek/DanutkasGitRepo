function oblicz() {
    let dystans = document.getElementById("dystans").value;
    let spalanie = document.getElementById("spalanie").value;
    const wynik = document.getElementById("wynik");
    let typ = document.getElementById("typ").value;
    
    let paliwo = ((dystans / 100) * spalanie).toFixed(2);
    let platnosc = 0

    if (typ == "benzyna") {
        let cena = 7.99;
        platnosc = (paliwo * cena).toFixed(2);
    } else if (typ == "disel") {
        let cena = 9.23;
        platnosc = (paliwo * cena).toFixed(2);
    } else {
        console.log("error")
    }

    wynik.innerHTML = "Potrzebujesz " + paliwo + " litrów paliwa.\nZapłacisz za to " + platnosc + "PLN."
}