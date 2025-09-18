function zamowienie() {
    const akapit = document.getElementById("twojeZamowienie");
    const przycisk = document.getElementById("buttonKolor");
    const ksztalt = document.getElementById("ksztalt").value;
    const r = document.getElementById("R").value;
    const g = document.getElementById("G").value;
    const b = document.getElementById("B").value;

    if (ksztalt == 1) {
        akapit.innerText = "Twoje zamówienie to cukierek cytryna";
    } else if (ksztalt == 2) {
        akapit.innerText = "Twoje zamówienie to cukierek liść";
    } else if (ksztalt == 3) {
        akapit.innerText = "Twoje zamówienie to cukierek banan";
    } else {
        akapit.innerText = "Twoje zamówienie to cukierek inny";
    }
    
    przycisk.style.backgroundColor = `rgb(${r}, ${g}, ${b})`;
}