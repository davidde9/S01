class Hunter {
    #nome;
    #idade;
    #localizacao;

    constructor(nome, local, idade) {
        this.#nome = nome;
        this.#localizacao = local;
        this.#idade = idade;
    }

    rastrearLocal(lat, long) {
        this.#localizacao = `${lat},${long}`;
        return `${this.#nome} está em ${this.#localizacao}`;
    }

    getNome() {
        return this.#nome;
    }
}

class Especialista extends Hunter {
    #habilidadeNem;

    constructor(nome, habilidade) {
        super(nome, null, null);
        this.#habilidadeNem = habilidade;
    }

    rastrearLocal(lat, long) {
        return super.rastrearLocal(lat, long);
    }
}

class Manipulador extends Hunter {
    #alvoAtual;

    constructor(nome) {
        super(nome, null, null);
        this.#alvoAtual = null;
    }

    rastrearLocal(lat, long) {
        return super.rastrearLocal(lat, long);
    }
}

const IRastreavel = class {
    rastrearLocal(latitude, longitude) {};
}

class Batalhao {
    #hunters;

    constructor() {
        this.#hunters = new Set();
    }

    adicionarHunter(hunter) {
        if (hunter instanceof Hunter) {
            const existe = Array.from(this.#hunters).some(h => h.getNome() === hunter.getNome());
            if (!existe) {
                this.#hunters.add(hunter);
            }
        }
    }

    getNumHunters() {
        return this.#hunters.size;
    }

    iniciarRastreamento(lat, long) {
        const resultados = [];
        for (const hunter of this.#hunters) {
            resultados.push(hunter.rastrearLocal(lat, long));
        }
        return resultados;
    }
}
