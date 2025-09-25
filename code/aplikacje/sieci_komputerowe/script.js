let idZamowienia = 0;

function zaznaczBraki() {
    const produkty = ["p1", "p2", "p3", "p4"];
    for (let i = 0; i < produkty.length; i++) {
        let ilosc = document.getElementById(produkty[i]).innerHTML;
        let produkt = document.getElementById(produkty[i]);
        if (ilosc == 0) {
            produkt.style.backgroundColor = 'red';
        } else if (ilosc > 0 && ilosc <= 5) {
            produkt.style.backgroundColor = 'yellow';
        } else {
            produkt.style.backgroundColor = 'honeydew';
        }
    }
}

function aktualizuj(produktId) {
    const produkt = document.getElementById(produktId);
    const nowaIlosc = prompt("Podaj nową ilość produktu:");
    produkt.innerHTML = nowaIlosc;
    zaznaczBraki();
}

function zamow(nazwaProduktu) {
    idZamowienia++;
    alert(`Zamówienie nr: ${idZamowienia} Produkt: ${nazwaProduktu}`);
}

window.onload = zaznaczBraki;