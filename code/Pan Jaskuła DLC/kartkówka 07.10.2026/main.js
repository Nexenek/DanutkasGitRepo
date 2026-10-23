

function dodaj() {
    let liczbaA = parseInt(document.getElementById("a").value);
    let liczbaB = parseInt(document.getElementById("b").value);

    const wynik = document.getElementById("wynik");
    let obliczenie = liczbaA + liczbaB;
    wynik.innerHTML = "Wynik: " + obliczenie
}

function odejmij() {
    let liczbaA = parseInt(document.getElementById("a").value);
    let liczbaB = parseInt(document.getElementById("b").value);

    const wynik = document.getElementById("wynik");
    let obliczenie = liczbaA - liczbaB;
    wynik.innerHTML = "Wynik: " + obliczenie
}

function pomnoz() {
    let liczbaA = parseInt(document.getElementById("a").value);
    let liczbaB = parseInt(document.getElementById("b").value);

    const wynik = document.getElementById("wynik");
    let obliczenie = liczbaA * liczbaB;
    wynik.innerHTML = "Wynik: " + obliczenie
}

function podziel() {
    let liczbaA = parseInt(document.getElementById("a").value);
    let liczbaB = parseInt(document.getElementById("b").value);

    const wynik = document.getElementById("wynik");
    let obliczenie = liczbaA / liczbaB;
    wynik.innerHTML = "Wynik: " + obliczenie
}

function spoteguj() {
    let liczbaA = parseInt(document.getElementById("a").value);
    let liczbaB = parseInt(document.getElementById("b").value);

    const wynik = document.getElementById("wynik");
    let obliczenie = liczbaA ** liczbaB;
    wynik.innerHTML = "Wynik: " + obliczenie
}