use std::io;

fn verificar_senha(senha: &str) -> bool {
  senha.chars().any(|c| c.is_digit(10)) && senha.chars().any(|c| c.is_ascii_uppercase()) && senha.len() >= 8
}

fn main() {
  loop {
    let mut senha = String::new();
    io::stdin()
    .read_line(&mut senha)
    .expect("Falha ao ler a entrada");
    if verificar_senha(senha.trim()) {
      println!("Senha válida! Acesso concedido.");
      break;
    }
  }
}
