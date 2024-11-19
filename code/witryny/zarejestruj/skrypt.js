// Ja przepraszam że ja to pisze w osobnym pliku ale ja tego nie zniose...
// Co ona ma do tego inline javascripta?

// PANI PISZE ZOPTYMALIZOWANY KOD?!
function aktywujZakladke(zkladkaId) {
    // Ustawiamy wszystkie elementy na niewidoczne
    document.getElementById("main1").style.display = "none";
    document.getElementById("main2").style.display = "none";
    document.getElementById("main3").style.display = "none";

    // Zmieniamy widoczność elementu, elemntu który chcemy wyświetlić
    document.getElementById(zkladkaId).style.display = "block";
}

// nvm... PRZECIEŻ MOŻNA TO W HTMLU PASNĄĆ PO CIUL OSOBNE FUNKCJE DO TEGO :skull:
function klient() {
    aktywujZakladke("main1");
}

function adres() {
    aktywujZakladke("main2");
}

function kontakt() {
    aktywujZakladke("main3");
}

function zatwierdz() {
    // pass
}