let zdjecieIndex = 1;

function aktualneZdjecie() {
    let zdjecieElement = document.querySelector("#srodkowy img");
    zdjecieElement.src = zdjecieIndex + ".jpg";
}

function nastepne() {
    zdjecieIndex++;
    if (zdjecieIndex > 7) {
        zdjecieIndex = 1;
    }
    aktualneZdjecie();
}

function poprzednie() {
    zdjecieIndex--;
    if (zdjecieIndex < 1) {
        zdjecieIndex = 7;
    }
    aktualneZdjecie();
}