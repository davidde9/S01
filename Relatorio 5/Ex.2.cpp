#include <iostream>
using namespace std;

float somarArray(float Arr[], int tamanho){
    float soma = 0;
    
    for (int i=0; i<tamanho; i++){
        cin >> Arr[i];
        soma = soma + Arr[i];
    }
    
    return soma;
}

int main()
{
    float Arr[100];
    int tamanho;
    
    cin >> tamanho;
    
    cout << somarArray(Arr, tamanho);
}
