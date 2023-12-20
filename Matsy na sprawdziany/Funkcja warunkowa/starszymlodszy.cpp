#include <iostream> //Prosta biblioteka do obsługi wejścia/wyjścia

using namespace std; //Przestrzeń nazw, aby nie pisać ciągle std::

int wiek, wiekpodany; //Deklaracja zmiennych

int main() //Główna funkcja programu
{
    wiek = 15; //Przypisanie wartości do zmiennej

    cout << "Podaj swój wiek: "; //Wypisanie tekstu na ekran
    cin >> wiekpodany; //Pobranie wartości od użytkownika

    if (wiekpodany > wiek) //Sprawdzenie warunku
    {
        cout << "Jesteś starszx ode mnie"; 
    }
    else if (wiekpodany == wiek) //Jeśli warunek nie jest spełniony
    {
        cout << "Jesteśmy w tym samym wieku";
    }
    else if (wiekpodany < wiek) //Jeśli warunek nie jest spełniony
    {
        cout << "Jesteś młodszx ode mnie";
    }
    return 0; //Zakończenie programu
}