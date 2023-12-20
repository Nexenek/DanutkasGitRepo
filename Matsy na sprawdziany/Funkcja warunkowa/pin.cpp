#include <iostream>

using namespace std;

int main()
{
    int pin, podanypin;

    pin = 2137;

    cout << "Podaj pin: ";
    cin >> podanypin;

    if (pin == podanypin)
    {
        cout << "Pin poprawny";
    }
    else
    {
        cout << "Pin niepoprawny";
    }
    return 0;
}