from abc import ABC, abstractmethod

class Heroi(ABC):
    def __init__(self, nome: str, funcao: str):
        self.nome = nome
        self.funcao = funcao

    @abstractmethod
    def usar_ultimate(self):
        pass


class Tanque(Heroi):
    def __init__(self, nome: str):
        Heroi.__init__(self, nome, "Tanque")

    def usar_ultimate(self):
        print(f"{self.nome} tankou tudo, deu tp na base e ganhou no bd")


class Dano(Heroi):
    def __init__(self, nome: str):
        Heroi.__init__(self, nome, "Dano")

    def usar_ultimate(self):
        print(f"{self.nome} ultou e deu mais dano q a ult do veigar feedado")


if __name__ == "__main__":
    herois = [
        Tanque("Illaoi"),
        Dano("Varus"),
        Dano("Pantheon ap")
    ]

    for heroi in herois:
        heroi.usar_ultimate()
