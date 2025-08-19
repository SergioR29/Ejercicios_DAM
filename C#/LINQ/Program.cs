class Linq
{
    static void Main(string[] args)
    {
        List<string> nombres = new List<string>
        {
            "Ana", "Carlos", "Pedro", "Clara", "Andrés"
        };

        var resultado = from nombre in nombres
                        where nombre.StartsWith("C")
                        orderby nombre descending
                        select nombre;

        foreach(var n in resultado)
        {
            Console.WriteLine(n);
        }
        Console.WriteLine();

        //Otro ejemplo
        List<int> numeros = new List<int>
        {
            1, 5, 10, 25, 22, 20, 30, 42
        };

        var pares = from p in numeros
                    where p % 2 == 0
                    orderby p
                    select p;

        foreach(var num in pares)
        {
            Console.WriteLine(num);
        }

        Console.ReadKey();
    }
}