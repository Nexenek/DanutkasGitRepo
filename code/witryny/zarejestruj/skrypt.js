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

let postepWartosc = 0;
function aktualizujPostep() {
    if (postepWartosc >= 100) {
        postepWartosc = 100;
    } else {
        postepWartosc += 12;
    }
    document.querySelector("#postep>div").style.width = postepWartosc + "%";
}

// Pani znowu próbuje optymalizowac kod... NIE IDZIE JEJ I TO BARDZO
// WRĘCZ IDZIE JEJ W DRUGĄ STRONE
// No cóż teraz wszystko robicie ręcznie!

function zatwierdz() {
    // Aby było optymalniej - bo wartość się nie zmienia, powinno być const - ale nie mieliśmy const
    // const imie = document.getElementById("imie").value;
    let imie = document.getElementById("Imie").value;
    let nazwisko = document.getElementById("Nazwisko").value;
    let data = document.getElementById("data").value;
    let ulica = document.getElementById("ulica").value;
    let numer = document.getElementById("numer").value;
    let miasto = document.getElementById("miasto").value;
    let telefon = document.getElementById("telefon").value;
    let rodo = document.getElementById("rodo").checked;
    
    // optymalniej
    // console.log(`${imie}, ${nazwisko}, ${data}, ${ulica}, ${numer}, ${miasto}, ${telefon}, ${rodo}`);

    console.log(imie + ", " + nazwisko + ", " + data + ", " + ulica + ", " + numer + ", " + miasto + ", " + telefon + ", " + rodo);
}
