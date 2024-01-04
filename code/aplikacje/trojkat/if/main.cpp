#include <iostream>

using namespace std;

int mojwiek, wiek;

int main()
{
    mojwiek = 15;
    cout << "Podaj swoj wiek: ";
    cin >> wiek;
    if (wiek > mojwiek) {
        cout << "Jestes starszx ode mnie" << endl;
        return 0;
    }
    if (wiek == mojwiek) {
        cout << "Jestes tak samo starx jak ja" << endl;
        return 0;
    }
    if (wiek < mojwiek) {
        cout << "Jestes mlodszx ode mnie" << endl;
        return 0;
    }
}
