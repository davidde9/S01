use std::io;

fn eh_par(numero: i32) -> bool {
  numero % 2 == 0
}

fn main() {
  let mut numero1 = String::new();
  let mut numero2 = String::new();
  let mut jogador1 = String::new();
  io::stdin()
  .read_line(&mut jogador1)
  .expect("Falha ao ler a entrada");

  io::stdin()
  .read_line(&mut numero1)
  .expect("Falha ao ler a entrada");

  io::stdin()
  .read_line(&mut numero2)
  .expect("Falha ao ler a entrada");

  let numero1: i32 = numero1.trim().parse().expect("Por favor, digite um número válido");
  let numero2: i32 = numero2.trim().parse().expect("Por favor, digite um número válido");
  
  let soma = numero1 + numero2;
  let soma_par = eh_par(soma);
  
  if soma_par && jogador1.trim() == "par" {
    println!("Jogador 1 venceu e a soma foi {}" , soma);
  }

  else if !soma_par && jogador1.trim() == "impar" {
    println!("Jogador 1 venceu e a soma foi {}" , soma);
}

  else {
    println!("Jogador 2 venceu e a soma foi {}" , soma);
  }
}
