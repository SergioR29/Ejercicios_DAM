class Animal
{
    public string nombre { get; set; } //propiedades automáticas de atributos
    public void Dormir()
    {
        Console.WriteLine($"{nombre} está durmiendo");
    }
    public void Comer()
    {
        Console.WriteLine($"{nombre} está comiendo");
    }
    protected void Respirar()
    {
        Console.WriteLine($"{nombre} está respirando");
    }
}

//La clase Perro hereda de la clase Animal
class Perro : Animal
{
    public void Ladrar()
    {
        Console.WriteLine($"{nombre} está ladrando");
    }
}

class Gato : Animal
{
    public void Maullar()
    {
        Console.WriteLine($"{nombre} está maullando");
    }
}

class Principal
{
    static void Main(string[] args)
    {
        Perro perro = new Perro();
        perro.nombre = "Email";
        perro.Dormir();
        perro.Ladrar();

        Gato gato = new Gato();
        gato.nombre = "Mau";
        gato.Comer();
        gato.Maullar();

        Console.ReadKey();
    }
}