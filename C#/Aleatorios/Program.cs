class Aleatorios
{
    static void Main(string[] args)
    {
        Random random = new Random();

        int numero1 = random.Next();
        Console.WriteLine("Nº aleatorio (entero cualquiera): " + numero1);

        double numero2 = random.NextDouble() * 10;
        Console.WriteLine("Nº aleatorio entre 0.00 y 10.00: " + numero2);

        int numero3 = random.Next(1, 4);
        Console.WriteLine("Nº aleatorio entre 1 y 4: " + numero3);



        Console.ReadKey();
    }
}