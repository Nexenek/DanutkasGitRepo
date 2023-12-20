#include <iostream> //Prosta biblioteka do obsługi wejścia/wyjścia

using namespace std; //Przestrzeń nazw, aby nie pisać ciągle std::

int pin, podanypin; //Deklaracja zmiennych

int main() //Główna funkcja programu
{
    pin = 2137; //Przypisanie wartości do zmiennej

    cout << "Podaj pin: "; //Wypisanie tekstu na ekran
    cin >> podanypin; //Pobranie wartości od użytkownika

    if (pin == podanypin) //Sprawdzenie warunku
    {
        cout << "Pin poprawny"; 
    }
    else //Jeśli warunek nie jest spełniony
    {
        cout << "Pin niepoprawny";
    }
    return 0; //Zakończenie programu
}