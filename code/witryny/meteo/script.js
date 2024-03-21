//Definiowanie funkcji
function zamien_kelviny(){
    //Definiowanie zmiennych (znajdujemy je po ID elementu HTML)
    var wynik = document.getElementById('wynik');
    var temp = parseInt(document.getElementById('temp').value);
    //Wykonujemy dzialanie
    var kel = temp + 273.15;
    
    //Zmieniamy wartosc w elemencie HTML
    wynik.innerHTML = "Temperatura w stopniach kelwina wynosi: " + kel + " <sup>o</sup>K";
}

//Definiowanie funkcji
function zamien_farenheity(){
    //Definiowanie zmiennych (znajdujemy je po ID elementu HTML)
    var wynik = document.getElementById('wynik');
    var temp = parseInt(document.getElementById('temp').value);
    //Wykonujemy dzialanie
    var far = ((temp * 1.8) + 32);
    
    //Zmieniamy wartosc w elemencie HTML
    wynik.innerHTML = "Temperatura w stopniach farenheita wynosi: " + far + " <sup>o</sup>";
}