#include <iostream>
using namespace std;

int main()
{
    int quantidade, nota, soma = 0;
    
    cout << "Digite quantas notas você quiser inserir:" << endl;
    
    cin >> quantidade;
    
    for(int i=0;i<quantidade;i++){
        cin >> nota;
        while((nota > 10) && (nota < 0))
            cin >> nota;
        soma = soma + nota;
    }
    
    if((soma/quantidade) >= 7)
        cout << "Aprovado";
        
    else
        cout << "Reprovado";
}
