function oblicz() {
    let szerokosc = document.getElementById("szerokosc").value;
    let dlugosc = document.getElementById("dlugosc").value;
    let typPaneluLaminowane = document.getElementById("laminowane").checked;
    let typPaneluWinylowe = document.getElementById("winyl").checked;
    let typPaneluDeska = document.getElementById("deska").checked;
    let kosztMontazu = 0;

    if (szerokosc && dlugosc) {
        let polePowierzchni = szerokosc * dlugosc;
        if (typPaneluLaminowane) {
            kosztMontazu = polePowierzchni * 12;
        } else if (typPaneluWinylowe) {
            kosztMontazu = polePowierzchni * 14;
        } else if (typPaneluDeska) {
            kosztMontazu = polePowierzchni * 18;
        }
        document.getElementById("wynik").innerHTML = `Pole powierzchni pomieszczenia: ${polePowierzchni} m2, koszt montażu: ${kosztMontazu} PLN`;
    } else {
        document.getElementById("wynik").innerHTML = "Wprowadź poprawne dane.";
    }
}
