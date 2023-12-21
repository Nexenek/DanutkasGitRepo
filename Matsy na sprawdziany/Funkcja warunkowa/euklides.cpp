#include <iostream> //prosta biblioteka wejscia wyjscia

using namespace std; //przestrzeń nazw std zebysmy nie musieli ciagle std:: pisac

int liczba1, liczba2, wynik; //deklaracja zmiennych

int main() //Glowna funkcja
{
    cout << "Podaj 1 liczbe: "; //wyswietlanie na ekranie
    cin >> liczba1; //pobieranie wartosci od uzytkownika
    cout << "Podaj 2 liczbe: ";
    cin >> liczba2;


    while(liczba1 != liczba2){ //utworzenie petli
        if(liczba1>liczba2){ // sprawdzenie warunku
            liczba1-=liczba2; //Jesli warunek jest spelniony odejmujuemy liczbe 2 od liczby 1
        }
        else{
            liczba2-=liczba1; //Jesli nie, odejmujemy liczbe 1 od liczby 2
        }
    }
    cout << "NWD = ";
    cout << liczba1;
    return 0; //Koniec programu
}
