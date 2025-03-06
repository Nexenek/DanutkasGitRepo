function wyslij() {
    // Pobieramy se tekst z pola input
    var wiadomoscInput = document.getElementById("wiadomosc");
    var tekst = wiadomoscInput.value;
    
    // Robimy se nowy blok wypowiedzi
    var nowaWiadomosc = document.createElement("div");
    nowaWiadomosc.id = "wypowiedz-jolanta";
    
    // Dodajemy se obrazek
    var obrazek = document.createElement("img");
    obrazek.src = "pliki2/Jolka.jpg";
    obrazek.alt = "Jolanta Nowak";
    
    // Dodajemy se taki ładny paragraf z wiadonością
    var paragraf = document.createElement("p");
    paragraf.textContent = tekst;
    
    // Wsadzamy obrazek i paragraf w div'a
    nowaWiadomosc.appendChild(obrazek);
    nowaWiadomosc.appendChild(paragraf);
    
    // Wpierdzielamy div'a do div'a bloku chatu
    var chatContainer = document.getElementById("blok-chatu");
    chatContainer.appendChild(nowaWiadomosc);
    
    // Wyczyszczenie pola input
    wiadomoscInput.value = "";
}

function generuj() {
    tablica = ["Świetnie!",
        "Kto gra główną rolę?",
        "Lubisz filmy Tego reżysera?",
        "Będę 10 minut wcześniej",
        "Może kupimy sobie popcorn?",
        "Ja wolę Colę",
        "Zaproszę jeszcze Grześka",
        "Tydzień temu też byłem w kinie na Diunie",
        "Ja funduję bilety"];
    
    // losowy numer
    losowyNumer = Math.floor(Math.random() * 9);

    //pobieramy tekst
    tekst = tablica[losowyNumer];

    // Robimy se nowy blok wypowiedzi
    var nowaWiadomosc = document.createElement("div");
    nowaWiadomosc.id = "wypowiedz-krzysztof";
    
    // Dodajemy se obrazek
    var obrazek = document.createElement("img");
    obrazek.src = "pliki2/Krzysiek.jpg";
    obrazek.alt = "Krzysztof Łukasiński";
    
    // Dodajemy se taki ładny paragraf z wiadonością
    var paragraf = document.createElement("p");
    paragraf.textContent = tekst;
    
    // Wsadzamy obrazek i paragraf w div'a
    nowaWiadomosc.appendChild(obrazek);
    nowaWiadomosc.appendChild(paragraf);
    
    // Wpierdzielamy div'a do div'a bloku chatu
    var chatContainer = document.getElementById("blok-chatu");
    chatContainer.appendChild(nowaWiadomosc);
    
    // Scrolluj do dołu
    chatContainer.scrollTop = chatContainer.scrollHeight;
}
