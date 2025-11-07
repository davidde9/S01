import java.util.ArrayList;

class Cafe {
    private String nome;
    private double precoBase;

    public Cafe(String nome, double precoBase) {
        this.nome = nome;
        this.precoBase = precoBase;
    }

    public double calcularPrecoFinal() {
        return precoBase;
    }

    public String getNome() {
        return nome;
    }
}

class CafeGourmet extends Cafe {
    private double bonusAroma;

    public CafeGourmet(String nome, double precoBase, double bonusAroma) {
        super(nome, precoBase);
        this.bonusAroma = bonusAroma;
    }

    @Override
    public double calcularPrecoFinal() {
        return super.calcularPrecoFinal() + bonusAroma;
    }
}

class Menu {
    private ArrayList<Cafe> itens;

    public Menu() {
        this.itens = new ArrayList<>();
    }

    public void adicionarItem(Cafe cafe) {
        itens.add(cafe);
    }

    public void mostrarMenu() {
        System.out.println("Menu da Cafeteria:");
        for (Cafe c : itens) {
            System.out.println(c.getNome() + ": R$" + c.calcularPrecoFinal());
        }
    }
}

class CafeLeblanc {
    private Menu menu;

    public CafeLeblanc(Menu menu) {
        this.menu = menu;
    }

    public void receberPedido(Cafe cafe) {
        menu.adicionarItem(cafe);
    }

    public void exibirMenu() {
        menu.mostrarMenu();
    }
}

public class Ex2 {
    public static void main(String[] args) {
        Menu menu = new Menu();
        CafeLeblanc leblanc = new CafeLeblanc(menu);

        Cafe comum = new Cafe("Café Preto", 5.0);
        
        Cafe vlad = new Cafe("Café Vladimir", 6.66);
        
        CafeGourmet gourmet = new CafeGourmet("Café Gourmet", 8.0, 2.5);
        
        CafeGourmet inatel = new CafeGourmet("Café do Inatel", 0.0, 100000.0);

        leblanc.receberPedido(comum);
        leblanc.receberPedido(vlad);
        leblanc.receberPedido(gourmet);
        leblanc.receberPedido(inatel);

        leblanc.exibirMenu();
    }
}
