#include <iostream> //Prosta biblioteka do obsługi wejścia/wyjścia

using namespace std; //Przestrzeń nazw, aby nie pisać ciągle std::

string haslo, haslopodane; //Deklaracja zmiennych

int main() //Główna funkcja programu
{
    haslo = "PapiezPolak"; //Przypisanie wartości do zmiennej

    cout << "Podaj haslo: "; //Wypisanie tekstu na ekran
    cin >> haslopodane; //Pobranie wartości od użytkownika

    if (haslo == haslopodane) //Sprawdzenie warunku
    {
        cout << "Haslo poprawne"; 
    }
    else //Jeśli warunek nie jest spełniony
    {
        cout << "Haslo niepoprawne";
    }
    return 0; //Zakończenie programu
}