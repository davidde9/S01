#include <iostream>
using namespace std;

double celsiusParaFarenheit(double celsius){
    return (((celsius * 9)/5) + 32);
}

double celsiusParaKelvin(double celsius){
    return 	(celsius + 273.15);
}

int main()
{
    double celsius;
    int opcao;
    
    cout << "Insira a temperatura em Celsius:" << endl;
    
    cin >> celsius;
    
    do {
        cout << "[1] Converter Celsius para Farenheit" << endl << "[2] Converter Celsius para Kelvin " <<  endl << "[3] Sair" << endl;
        cin >> opcao;
        switch (opcao){
            case 1:
                cout << celsiusParaFarenheit(celsius) << endl;
                break;
            case 2:
                cout << celsiusParaKelvin(celsius) << endl;
                break;
            case 3:
                break;
        }
    } while (opcao != 3);
}
