function zamien_kelviny(){
    var wynik = document.getElementById('wynik');
    var temp = parseInt(document.getElementById('temp').value);
    var kel = temp + 273.15;

    wynik.innerHTML = "Temperatura w stopniach kelwina wynosi: " + kel + " <sup>o</sup>K";
}

function zamien_farenheity(){
    var wynik = document.getElementById('wynik');
    var temp = parseInt(document.getElementById('temp').value);
    var far = ((temp * 1.8) + 32);
 
    wynik.innerHTML = "Temperatura w stopniach farenheita wynosi: " + far + " <sup>o</sup>";
}