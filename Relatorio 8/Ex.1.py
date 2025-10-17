from abc import ABC, abstractmethod

class Personagem(ABC):
    def __init__(self, vida: int, resistencia: int):
        self._vida = vida
        self._resistencia = resistencia

    @property
    def vida(self):
        return self._vida

    @vida.setter
    def vida(self, valor):
        if valor < 0:
            print("erro pois a vida nao pode ser menor que zero 0_0")
            self._vida = 0
        else:
            self._vida = valor

    @abstractmethod
    def __str__(self):
        pass


class Cavaleiro(Personagem):
    def __init__(self, vida: int, resistencia: int, armadura_pesada: bool):
        Personagem.__init__(self, vida, resistencia)
        self._armadura_pesada = armadura_pesada

    def __str__(self):
        tipo_armadura = "com armadura pesada" if self._armadura_pesada else "sem armadura pesada"
        return f"Cavaleiro {tipo_armadura},{self._vida} de vida e {self._resistencia} de resistencia."


if __name__ == "__main__":
    c1 = Cavaleiro(150, 80, True)
    print(c1)
