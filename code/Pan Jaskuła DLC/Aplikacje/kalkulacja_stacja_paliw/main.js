function oblicz() {
    let dystans = document.getElementById("dystans").value;
    let spalanie = document.getElementById("spalanie").value;
    const wynik = document.getElementById("wynik");
    let paliwo = (dystans / spalanie) * 100;
}