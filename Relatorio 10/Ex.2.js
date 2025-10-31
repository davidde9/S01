class ODM_Gear {
  #gasRestante;
  constructor(modelo) {
    this.modelo = modelo;
    this.#gasRestante = 100;
  }

  usarGas(quantidade) {
    this.#gasRestante -= quantidade;
  }

  getGas() {
    return this.#gasRestante;
  }
}

class Soldado {
  #gear;
  constructor(nome, modeloGear) {
    this.nome = nome;
    this.#gear = new ODM_Gear(modeloGear);
  }

  explorarTerritorio() {
    this.#gear.usarGas(10);
    return "Explorando território";
  }

  verificarEquipamento() {
    return this.#gear.getGas();
  }
}

class Esquadrao {
  constructor(lider, membrosIniciais) {
    this.lider = lider;
    this.membros = membrosIniciais || [];
  }

  adicionarMembro(soldado) {
    this.membros.push(soldado);
  }

  relatarStatus() {
    return this.membros.map(soldado => soldado.verificarEquipamento());
  }

  explorarTerritorio() {
    return "Esquadrão em exploração";
  }
}
