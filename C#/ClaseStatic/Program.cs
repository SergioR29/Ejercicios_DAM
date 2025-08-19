//El modificador static funciona igual que en Java para métodos y atributos
static class Mates
{
    static int a, b;
    public static int sumar(int a, int b)
    {
        return a + b;
    }

    public static void saludar()
    {
        Console.WriteLine("Siéntese en su sitio");
    }

    static void Main(string[] args)
    {
        int suma = sumar(50, 20);
        Console.WriteLine(suma);

        a = 5;
        b = 10;
        Console.WriteLine($"a + b = {a+b}");

        saludar();
        Console.WriteLine("Nota último examen: " + a);


        
        Console.ReadKey();
    }
}