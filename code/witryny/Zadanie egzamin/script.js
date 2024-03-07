function licz() {
    var osoby = document.getElementById('osoby').value;
    var dni = document.getElementById('dni').value;
    var student = document.getElementById('student').checked;
    var koszt = osoby * dni * 20;
    if (student) {
        koszt -= 10;
    }
    document.getElementById('wynik').innerHTML = "Koszt wynajęcia: " + koszt + " zł";
}