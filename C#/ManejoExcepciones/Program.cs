class ManejoExcepciones
{
    void Operaciones()
    {
        try
        {
            int resultado, valor1 = 20, valor2 = 0;
            resultado = valor1 / valor2;
            Console.WriteLine(resultado);

            int[] array = { 1, 2, 3 };
            Console.WriteLine(array[5]);

        }
        catch (Exception e)
        {
            Console.WriteLine("Error: " + e.ToString());
        }
    }

    static void Main(string[] args)
    {
        ManejoExcepciones manejoExcepciones = new ManejoExcepciones();
        manejoExcepciones.Operaciones();

        Console.ReadKey();
    }
}