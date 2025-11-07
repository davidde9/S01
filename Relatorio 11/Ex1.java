import java.util.ArrayList;

class Personagem {
    private String nome;
    private int idade;

    public Personagem(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public String getNome() {
        return nome;
    }

    public int getIdade() {
        return idade;
    }
}

class Mago extends Personagem {
    private String magia;

    public Mago(String nome, int idade, String magia) {
        super(nome, idade);
        this.magia = magia;
    }

    public String lancarFeitico() {
        return getNome() + " spammou " + magia + "!";
    }
}

class Divisao {
    private String nome;

    public Divisao(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

}

class Castelo {
    private String nome;
    private ArrayList<Divisao> divisoes;

    public Castelo(String nome) {
        this.nome = nome;
        this.divisoes = new ArrayList<>();
    }

    public void adicionarDivisao(Divisao divisao) {
        divisoes.add(divisao);
    }

    public void mostrarDivisoes() {
        System.out.println("Divisões do castelo " + nome + ":");
        for (Divisao d : divisoes) {
            System.out.println(" - " + d.getNome());
        }
    }

    public String getNome() {
        return nome;
    }

}

public class Ex1 {
    public static void main(String[] args) {

        Mago howl = new Mago("Howl", 27, "Disfarce");
        System.out.println(howl.lancarFeitico());


        Castelo castelo = new Castelo("Animado");

        Divisao um = new Divisao("Quarto do Rei");
        Divisao dois = new Divisao("Quarto do Filho do Rei");
        Divisao tres = new Divisao("Banheiro do Primo do Tio do Rei");

        castelo.adicionarDivisao(um);
        castelo.adicionarDivisao(dois);
        castelo.adicionarDivisao(tres);

        castelo.mostrarDivisoes();
    }
}
