#include <iostream>

using namespace std;

string poplogin, pophas, haslo, login;

int main()
{
    poplogin = "Kuba";
    pophas = "HasloZgaslo";
    cout << "Logowanie do systemu" << endl;
    cout << "Login: ";
    cin >> login;
    cout << "Haslo: ";
    cin >> haslo;

    if (login == poplogin){
        if (haslo == pophas){
            cout << "Podano poprawne haslo i login." << endl;
            cout << "Zalogowano.";
            return 0;
        }
        else {
            cout << "Podano niepoprawne login.";
            return 0;
        }
    }
    else {
        cout << "Nie znaleziono uzytkownika.";
        return 0;
    }

}
