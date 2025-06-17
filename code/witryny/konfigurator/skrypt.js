document.addEventListener('DOMContentLoaded', function() {
    // Tło bloku prawego
    document.getElementById('btnIndigo').onclick = function() {
        document.getElementById('prawy').style.backgroundColor = 'Indigo';
    };
    document.getElementById('btnSteelBlue').onclick = function() {
        document.getElementById('prawy').style.backgroundColor = 'SteelBlue';
    };
    document.getElementById('btnOlive').onclick = function() {
        document.getElementById('prawy').style.backgroundColor = 'Olive';
    };

    // Kolor czcionki
    document.getElementById('fontColor').onchange = function() {
        document.getElementById('prawy').style.color = this.value;
    };

    // Rozmiar czcionki
    document.getElementById('fontSize').onblur = function() {
        document.getElementById('prawy').style.fontSize = this.value;
    };

    // Ramka obrazka
    document.getElementById('borderCheck').onclick = function() {
        document.getElementById('gibraltar').style.border = this.checked ? '1px solid white' : 'none';
    };

    // Typ punktora
    let radios = document.getElementsByName('listType');
    for(let i=0; i<radios.length; i++) {
        radios[i].onclick = function() {
            document.getElementById('lista').style.listStyleType = this.value;
        };
    }
});
