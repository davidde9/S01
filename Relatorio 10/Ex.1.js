class Pokemon {
  #vida;
  constructor(nome, tipo, vidaInicial) {
    this.nome = nome;
    this.tipo = tipo;
    this.#vida = vidaInicial;
  }

  getVida() {
    return this.#vida;
  }

  receberDano(dano) {
    this.#vida -= dano;
  }

  atacar(alvo) {
    alvo.receberDano(10);
  }
}

class PokemonFogo extends Pokemon {
  constructor(nome, vidaInicial, bonusAtaque) {
    super(nome, "Fogo", vidaInicial);
    this.bonusAtaque = bonusAtaque;
  }

  atacar(alvo) {
    const dano = 10 + this.bonusAtaque;
    alvo.receberDano(dano);
  }
}

class PokemonAgua extends Pokemon {
  constructor(nome, vidaInicial, curaBase) {
    super(nome, "Água", vidaInicial);
    this.curaBase = curaBase;
  }

  atacar(alvo) {
    alvo.receberDano(8);
  }
}
