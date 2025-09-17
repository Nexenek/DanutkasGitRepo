function widocznosc(id) {
    const artykulDoWyswietlenia = document.getElementById(id);
    const wszystkieArtykuly = document.querySelectorAll("article");

    wszystkieArtykuly.forEach(artykul => {
        artykul.style.display = "none";
    });

    artykulDoWyswietlenia.style.display = "block";
}