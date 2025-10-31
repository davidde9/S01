class Criatura {
    constructor(nome, perigosa) {
        this.nome = nome;
        this.perigosa = perigosa;
    }
}

class Diario {
    #autorSecreto;
    constructor(autor) {
        this.#autorSecreto = autor;
        this.enigmas = new Map();
        this.criaturasAvistadas = [];
    }

    getAutor() {
        return this.#autorSecreto;
    }

    adicionarEnigma(num, enigma) {
        this.enigmas.set(num, enigma);
    }

    decodificar(chave, num) {
        if (chave === this.#autorSecreto && this.enigmas.has(num)) {
            return this.enigmas.get(num);
        } else {
            return "Acesso negado!";
        }
    }
}

class Personagem {
    constructor(nome, idade) {
        this.nome = nome;
        this.idade = idade;
    }
}

class Protagonista extends Personagem {
    constructor(nome, idade) {
        super(nome, idade);
        this.diario = new Diario(nome);
    }
}

class CabanaMisterio {
    constructor(diario) {
        this.diario = diario;
        this.visitantes = [];
        this.funcionarios = [];
    }

    listarFuncionários() {
        return this.funcionarios;
    }
}
console.log("teste")
