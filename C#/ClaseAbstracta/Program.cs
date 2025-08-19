//El funcionamiento de las clases abstractas es muy parecido a Java, el override cambia de lugar (en vez de ser una anotación es un modificador (de método) para implementar los métodos abstractos en clases que heredan de la clase abstracta
public abstract class Abstracta
{
    public string nombre {get; set;}

    public void Comer()
    {
        Console.WriteLine($"{nombre} está comiendo");
    }
    public abstract void HacerSonido();

    static void Main(string[] args)
    {
        Abstracta miPerro = new Perro {nombre = "Snoopy"};
        Abstracta miGato = new Gato { nombre = "Garfield" };

        miPerro.Comer();
        miPerro.HacerSonido();

        miGato.Comer();
        miGato.HacerSonido();

        Console.ReadKey();
    }
}

class Perro : Abstracta
{
    public override void HacerSonido()
    {
        Console.WriteLine($"{nombre} está ladrando");
    }
}

class Gato : Abstracta
{
    public override void HacerSonido()
    {
        Console.WriteLine($"{nombre} está maullando");
    }
}