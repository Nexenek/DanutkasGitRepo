function dzialanie(typDzialania) {
    let a = document.getElementById('a').value;
    let b = document.getElementById('b').value;
    let wynikDzialania;

    if (typDzialania === 'dodawanie') {
        wynikDzialania = parseInt(a) + parseInt(b);
    } else if (typDzialania === 'odejmowanie') {
        wynikDzialania = parseInt(a) - parseInt(b);
    } else if (typDzialania === 'mnozenie') {
        wynikDzialania = parseInt(a) * parseInt(b);
    } else if (typDzialania === 'dzielenie') {
        wynikDzialania = parseInt(a) / parseInt(b);
    } else if (typDzialania === 'potegowanie') {
        wynikDzialania = Math.pow(parseInt(a), parseInt(b));
    }

    document.getElementById('wynik').innerHTML = 'Wynik: ' + wynikDzialania;
}