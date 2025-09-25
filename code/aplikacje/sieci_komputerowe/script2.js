const iloscproduktow = document.querySelectorAll('.ilosc');
const nazwyProduktow = document.querySelectorAll('.nazwaProduktu');
const przyciskiAktualizuj = document.querySelectorAll('.aktualizuj');
const przyciskiZamow = document.querySelectorAll('.zamow');
let idZamowienia = 0;

function sprawdzBraki() {
    iloscproduktow.forEach(ilosc => {
        const iloscWartosc = parseInt(ilosc.innerHTML);
        if (iloscWartosc === 0) {
            ilosc.style.backgroundColor = 'red';
        } else if (iloscWartosc > 0 && iloscWartosc <= 5) {
            ilosc.style.backgroundColor = 'yellow';
        } else {
            ilosc.style.backgroundColor = 'honeydew';
        }
    });
}

przyciskiAktualizuj.forEach((button, i) => {
    button.addEventListener('click', () => {
        const nowaIlosc = prompt("Podaj nową ilość produktu:");
            iloscproduktow[i].innerHTML = nowaIlosc;
            sprawdzBraki();
    });
});

przyciskiZamow.forEach((button, i) => {
    button.addEventListener('click', () => {
        idZamowienia++;
        const nazwaProduktu = nazwyProduktow[i].innerHTML;
        alert(`Zamówienie nr: ${idZamowienia} Produkt: ${nazwaProduktu}`);
    });
});
sprawdzBraki();