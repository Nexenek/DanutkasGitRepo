#include <iostream>

using namespace std;

int a, h, w;

int main()
{
    cout << "Witaj, w obliczaczu Pola trojkata!" << endl;
    cout << "Podaj prosze podstawe trojkata: ";
    cin >> a;
    cout << "Podaj prosze wysokosc trojkata: ";
    cin >> h;
    w = (a*h)/2;
    cout << "Pole trojkata wynosi: " <<w;
    return 0;
}
