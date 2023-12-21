#include <iostream>

using namespace std;

int liczba1, liczba2, wynik;

int main()
{
    cout << "Podaj 1 liczbe: ";
    cin >> liczba1;
    cout << "Podaj 2 liczbe: ";
    cin >> liczba2;


    while(liczba1 != liczba2){
        if(liczba1>liczba2){
            liczba1-=liczba2;
        }
        else{
            liczba2-=liczba1;
        }
    }
    cout << "NWD = ";
    cout << liczba1;
}
