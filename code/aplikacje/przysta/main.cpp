#include <iostream>

using namespace std;

int liczba;

int main()
{
    cout << "Podaj prosze liczbe: ";
    cin >> liczba;

    if(liczba %2 == 0){
        cout << "Liczba jest parzysta";
    }
    else{
        cout << "Liczba jest nie parzysta";
    }

    return 0;
}
