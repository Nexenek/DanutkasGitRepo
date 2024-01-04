#include <iostream>

using namespace std;

int zmienna1, zmienna2, zmienna3;
bool dodatnie1, dodatnie2, dodatnie3;

int main()
{
    dodatnie1 = true;
    dodatnie2 = true;
    dodatnie3 = true;
    zmienna3 = 15;

    cout << "Podaj jakas liczbe: ";
    cin >> zmienna1;

    cout << "Podaj znowu jakas liczbe: ";
    cin >> zmienna2;
    zmienna2 = zmienna2*3;

    while (zmienna1 > zmienna2){
        zmienna1 -= zmienna3;
    }

    if (zmienna1 < 0){
        dodatnie1 = false;
    }
    if (zmienna2 < 0){
        dodatnie2 = false;
    }
    if (zmienna3 < 0){
        dodatnie3 = false;
    }

    cout << "Liczba 1: ";
    cout << zmienna1 << endl;
    cout << "Liczba 2: ";
    cout << zmienna2 << endl;
    cout << "Liczba 3: ";
    cout << zmienna3 << endl;

    if (dodatnie1 == true){
        if (dodatnie2 == true){
            if (dodatnie3 == true){
                cout << "Wszystkie zmienne sa dodatnie";
            }
        }
    }
    else if (dodatnie1 == false dodatnie2 == false, dodatnie3 == false){
        cout << "Wszystkie zmienne sa ujemne";
    }
    else {
        cout << "Zmienne maja ró¿ne wartoœci";
    }
    return 0;
}
