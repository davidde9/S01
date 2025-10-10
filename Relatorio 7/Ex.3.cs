using System;
using System.Collections.Generic;

public class Feitico
{
    public string Nome { get; set; }

    public Feitico(string nome)
    {
        Nome = nome;
    }
}

public class Grimorio
{
    public List<Feitico> Feiticos { get; private set; }

    public Grimorio()
    {
        Feiticos = new List<Feitico>();
    }

    public void AdicionarFeitico(Feitico f)
    {
        Feiticos.Add(f);
    }
}

public class Ferramenta
{
    public string Nome { get; set; }

    public Ferramenta(string nome)
    {
        Nome = nome;
    }
}

public class Maga
{
    public string Nome { get; set; }
    public Grimorio Grimorio { get; private set; }
    public List<Ferramenta> Ferramentas { get; private set; }

    public Maga(string nome, List<Ferramenta> ferramentas)
    {
        Nome = nome;
        Grimorio = new Grimorio();
        Ferramentas = ferramentas;
    }
}

public class Program
{
    static void Main(string[] args)
    {
        List<Ferramenta> ferramentas = new List<Ferramenta>
        {
            new Ferramenta("Lanterna"),
            new Ferramenta("Mapa"),
            new Ferramenta("Capa de Viagem")
        };

        Maga frieren = new Maga("Frieren", ferramentas);

        frieren.Grimorio.AdicionarFeitico(new Feitico("Explosão Mágica"));
        frieren.Grimorio.AdicionarFeitico(new Feitico("Escudo Arcano"));

        Console.WriteLine("Feitiços no Grimório:");
        foreach (Feitico f in frieren.Grimorio.Feiticos)
        {
            Console.WriteLine($"- {f.Nome}");
        }

        Console.WriteLine("\nFerramentas agregadas:");
        foreach (Ferramenta ferr in frieren.Ferramentas)
        {
            Console.WriteLine($"- {ferr.Nome}");
        }
    }
}
