function wykonane(clickedButton) {
    const zadanie = clickedButton.parentElement;
    zadanie.style.textDecoration = 'line-through';
}

function dodajZadanie() {
    const zadanieInput = document.getElementById('zadanieInput');
    const listaZadan = document.getElementById('listaZadan');
    const noweZadanie = document.createElement('li');
    noweZadanie.innerHTML = `${zadanieInput.value} <button onclick="wykonane(this)">Wykonane</button>`;
    listaZadan.appendChild(noweZadanie);
}