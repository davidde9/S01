from abc import ABC, abstractmethod

class Cibernetico(ABC):
    @abstractmethod
    def realizar_hack(self):
        pass

class Implante:
    def __init__(self, custo, funcao):
        self.custo = custo
        self.funcao = funcao

class NetRunner(Cibernetico):
    def __init__(self, nome, custo, funcao):
        self.nome = nome
        self.implante = Implante(custo, funcao)
    def realizar_hack(self):
        print(f"{self.nome} realiza hack usando {self.implante.funcao} (custo {self.implante.custo})")

class Faccao:
    def __init__(self, membros):
        self.membros = membros

if __name__ == "__main__":
    membros = [
        NetRunner("blablabla", 123, "chatgpt"),
        NetRunner("blebleble", 456, "gemini"),
        NetRunner("blublublu", 789, "claudecode")
    ]
    fac = Faccao(membros)
    for m in fac.membros:
        m.realizar_hack()
