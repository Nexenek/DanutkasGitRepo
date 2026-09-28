function oblicz() {
    let dystans = document.getElementById("dystans").value;
    let spalanie = document.getElementById("spalanie").value;
    let wynik = document.getElementById("wynik");
    const typB = document.getElementById("typB").checked;
    const typD = document.getElementById("typD").checked;
    const typL = document.getElementById("typL").checked;

    let paliwo = ((dystans / 100) * spalanie).toFixed(2);
    let platnosc = 0

    const pb = 7.99;
    const disel = 9.23;
    const lpg = 3.33

    if (typB == true) {
        platnosc = (paliwo * pb).toFixed(2);
    } else if (typD == true) {
        platnosc = (paliwo * disel).toFixed(2);
    } else if (typL == true) {
        platnosc = (paliwo * lpg).toFixed(2);
    }
    else {
        console.log("error")
    }

    wynik.innerHTML = "Potrzebujesz " + paliwo + " litrów paliwa.\nZapłacisz za to " + platnosc + "PLN."
}