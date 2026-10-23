function zastosuj() {
    const zdjeciePszczolowe = document.getElementById('pszczola');
    const efektySelector = document.querySelectorAll('input[name="pszczolaOpcja"]');
    // Kod jak w kernelu windowsa ❤️
    for (let efekt of efektySelector) {
        if (efekt.checked) {
            if (efekt.value === "blur") {
                zdjeciePszczolowe.style.filter = 'blur(6px)';
            } else if (efekt.value === "sepia") {
                zdjeciePszczolowe.style.filter = 'sepia(100%)';
            } else if (efekt.value === "otfrut") {
                zdjeciePszczolowe.style.filter = 'invert(100%)';
            }
        }
    }
}

// Syzyf
function kolor() {
    const zdjeciePomaranczowe = document.getElementById('pomarancza');
    zdjeciePomaranczowe.style.filter = `none`;
}

function blackandwhite() {
    const zdjeciePomaranczowe = document.getElementById('pomarancza');
    zdjeciePomaranczowe.style.filter = 'grayscale(100%)';
}

function przezroczystosc() {
    const zdjecieOwocowe = document.getElementById('owoce');
    const przezroczystosc = document.getElementById('suwakOwocowy').value;
    zdjecieOwocowe.style.filter = `opacity(${przezroczystosc}%)`;
}

function jasnosc() {
    const zdjecieZulwiowe = document.getElementById('zolw');
    const jasnosc = document.getElementById('suwakZulwiowy').value;
    zdjecieZulwiowe.style.filter = `brightness(${jasnosc}%)`;
}