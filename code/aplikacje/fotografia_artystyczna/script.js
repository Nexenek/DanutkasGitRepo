// Wersja uniwersalna - tak jak to się powinno robić na produkcji...
//function dodajDoKoszyka() {
//    const koszyk = document.getElementById('koszyk');
//    const przeslanyObrazek = document.getElementById('wybor').files[0];
//    const liczbaKopii = document.getElementById('liczba')
//    const rodzajPapieru = document.querySelector('input[name="papier"]:checked').value;
//    const cenaProduktu = (rodzajPapieru === 'matowy' ? 2 : 1.5) * parseInt(liczbaKopii.value);
//
//    const nowyElement = document.createElement('div');
//    
//    nowyElement.style.display = 'flex';
//    nowyElement.style.alignItems = 'center';
//
//    const obrazek = document.createElement('img');
//    obrazek.src = URL.createObjectURL(przeslanyObrazek);
//    obrazek.style.maxWidth = '100px';
//    obrazek.style.marginRight = '16px';
//    nowyElement.appendChild(obrazek);
//
//    const tekstDiv = document.createElement('div');
//    tekstDiv.innerHTML = '<p>Liczba kopii: ' + liczbaKopii.value + '</p>' +
//                         '<p>Cena: ' + cenaProduktu + '</p>';
//    nowyElement.appendChild(tekstDiv);
//
//    koszyk.appendChild(nowyElement);
//}

function dodajDoKoszyka() {
    const liczbaKopii = document.getElementById('liczba');
    const papierBlyszczacy = document.getElementById('papier1').checked;
    const papierMatowy = document.getElementById('papier2').checked;
    // albo drugi sposób:
    // const rodzajPapieru = document.querySelector('input[name="papier"]:checked').value;
    const nazwaPrzeslanyObrazek = document.getElementById('wybor').files[0].name;
    const koszyk = document.getElementById('koszyk');

    // albo drugi sposób:
    // if (rodzajPapieru === 'matowy') {
    //     cenaProduktu = 2 * parseInt(liczbaKopii.value);
    // } else {
    //     cenaProduktu = 1.5 * parseInt(liczbaKopii.value);
    // }

    let cenaProduktu = 0;
    if (papierBlyszczacy) {
        cenaProduktu = 1.5 * parseInt(liczbaKopii.value);
    } else if (papierMatowy) {
        cenaProduktu = 2 * parseInt(liczbaKopii.value);
    }

    nowyObrazek = document.createElement('img');
    nowyObrazek.src = nazwaPrzeslanyObrazek;

    nowyP1 = document.createElement('p');
    nowyP1.innerHTML = 'Liczba kopii: ' + liczbaKopii.value;
    nowyP2 = document.createElement('p');
    nowyP2.innerHTML = 'Cena: ' + cenaProduktu;

    const nowyElement = document.createElement('div');
    nowyElement.appendChild(nowyObrazek);
    nowyElement.appendChild(nowyP1);
    nowyElement.appendChild(nowyP2);
    koszyk.appendChild(nowyElement);
}