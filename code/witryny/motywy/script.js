function zastosujEfekt() {
    const zdjecie = document.querySelector('img[src="pszczola.jpg"]');
    const efekty = document.querySelectorAll('input[name="opcja"]');
    efekty.forEach((efekt) => {
        if (efekt.checked) {
            zdjecie.style.filter = efekt.value;
        }
    });
}

function kolor() {
    const zdjecie = document.querySelector('img[src="pomarancza.jpg"]');
    zdjecie.style.filter = `none`;
}

function czarnoBialy() {
    const zdjecie = document.querySelector('img[src="pomarancza.jpg"]');
    zdjecie.style.filter = 'grayscale(100%)';
}

function zastosujPrzezroczystosc() {
    const zdjecie = document.querySelector('img[src="owoce.jpg"]');
    const przezroczystosc = document.getElementById('suwak3').value;
    zdjecie.style.filter = `opacity(${przezroczystosc}%)`;
}

function zastosujJasnosc() {
    const zdjecie = document.querySelector('img[src="zolw.jpg"]');
    const jasnosc = document.getElementById('suwak4').value;
    zdjecie.style.filter = `brightness(${jasnosc}%)`;
}
