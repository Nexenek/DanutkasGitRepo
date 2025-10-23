function zmienSekcje(blokDoPokazania) {
    const blokBaza = document.getElementById('blokBaza');
    const baza = document.getElementById('baza');
    const blokOpisy = document.getElementById('blokOpisy');
    const opisy = document.getElementById('opisy');
    const blokGaleria = document.getElementById('blokGaleria');
    const galeria = document.getElementById('galeria');

    if (blokDoPokazania == 'baza') {
        blokBaza.style.backgroundColor = 'mistyrose';
        baza.style.display = 'block';
        blokOpisy.style.backgroundColor = '#ffaea5';
        opisy.style.display = 'none';
        blokGaleria.style.backgroundColor = '#ffaea5';
        galeria.style.display = 'none';
    }

    if (blokDoPokazania == 'opisy') {
        blokBaza.style.backgroundColor = '#ffaea5';
        baza.style.display = 'none';
        blokOpisy.style.backgroundColor = 'mistyrose';
        opisy.style.display = 'block';
        blokGaleria.style.backgroundColor = '#ffaea5';
        galeria.style.display = 'none';
    }

    if (blokDoPokazania == 'galeria') {
        blokBaza.style.backgroundColor = '#ffaea5';
        baza.style.display = 'none';
        blokOpisy.style.backgroundColor = '#ffaea5';
        opisy.style.display = 'none';
        blokGaleria.style.backgroundColor = 'mistyrose';
        galeria.style.display = 'block';
    }
}