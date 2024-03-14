function zamien_kelviny(){
    var wynik = document.getElementById('wynik');
    var temp = parseInt(document.getElementById('temp').value);
    var kel = temp + 273.15;

    wynik.innerHTML = kel + " <sup>o</sup>K";
}

function zamien_farenheity(){
    var wynik = document.getElementById('wynik');
    var temp = parseInt(document.getElementById('temp').value);
    var far = ((temp * 9) / 5) + 32;
 
    wynik.innerHTML = far + " <sup>o</sup>F";
}