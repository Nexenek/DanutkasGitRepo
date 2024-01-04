#include <iostream>

using namespace std;

int pin, poprawnypin;

int main()
{
    poprawnypin = 2137;
    cout << "Podaj PIN: ";
    cin >> pin;
    if (pin == poprawnypin) {
        cout << "PIN poprawny.";
        return 0;
    }
    else{
        cout << "PIN nie poprawny.";
        return 0;
    }
    return 0;
}
