let numer_zdj = 1;

// function pokaz(nazwa_pliku) {
//     document.getElementById("duze").src = nazwa_pliku;
//     numer_zdj = parseInt(nazwa_pliku);
// }

function pokaz(nazwa_pliku) {
    switch (nazwa_pliku) {
        case "1.jpg":
            document.getElementById("duze").src = "1.jpg";
            numer_zdj = 1;
            break;
        case "2.jpg":
            document.getElementById("duze").src = "2.jpg";
            numer_zdj = 2;
            break;
        case "3.jpg":
            document.getElementById("duze").src = "3.jpg";
            numer_zdj = 3;
            break;
        case "4.jpg":
            document.getElementById("duze").src = "4.jpg";
            numer_zdj = 4;
            break;
        case "5.jpg":
            document.getElementById("duze").src = "5.jpg";
            numer_zdj = 5;
            break;
        default:
            break;
    }
}

function poprzednie() {
    switch (numer_zdj) {
        case 2:
            numer_zdj = 1;
            document.getElementById("duze").src = "1.jpg";
            break;
        case 3:
            numer_zdj = 2;
            document.getElementById("duze").src = "2.jpg";
            break;
        case 4:
            numer_zdj = 3;
            document.getElementById("duze").src = "3.jpg";
            break;
        case 5:
            numer_zdj = 4;
            document.getElementById("duze").src = "4.jpg";
            break;
        default:
            break;
    }
}

function nastepne() {
    switch (numer_zdj) {
        case 1:
            numer_zdj = 2;
            document.getElementById("duze").src = "2.jpg";
            break;
        case 2:
            numer_zdj = 3;
            document.getElementById("duze").src = "3.jpg";
            break;
        case 3:
            numer_zdj = 4;
            document.getElementById("duze").src = "4.jpg";
            break;
        case 4:
            numer_zdj = 5;
            document.getElementById("duze").src = "5.jpg";
            break;
        default:
            break;
    }
}

// function poprzednie() {
//     if (numer_zdj > 1) {
//         numer_zdj--;
//         document.getElementById("duze").src = numer_zdj + ".jpg";
//     }
// }
// 
// function nastepne() {
//     if (numer_zdj < 5) {
//         numer_zdj++;
//         document.getElementById("duze").src = numer_zdj + ".jpg";
//     }
// }