using System;

public abstract class MonstroSombrio
{
    public string Nome { get; set; }

    public MonstroSombrio(string nome)
    {
        Nome = nome;
    }

    public abstract void Mover();
}

public class Zumbi : MonstroSombrio
{
    public Zumbi(string nome) : base(nome) { }

    public override void Mover()
    {
        Console.WriteLine($"{Nome} se arrasta lentamente pela masmorra...");
    }
}

public class Espectro : MonstroSombrio
{
    public Espectro(string nome) : base(nome) { }

    public override void Mover()
    {
        Console.WriteLine($"{Nome} desliza rapidamente através das sombras!");
    }
}

public class Program
{
    static void Main(string[] args)
    {
        MonstroSombrio[] horda = new MonstroSombrio[]
        {
            new Zumbi("Zumbi Lento"),
            new Espectro("Espectro Veloz")
        };

        foreach (MonstroSombrio monstro in horda)
        {
            monstro.Mover();
        }
    }
}
