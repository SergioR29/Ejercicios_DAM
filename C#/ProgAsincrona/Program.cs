class Asincrona
{
    static async Task Main()
    {
        Console.WriteLine("Iniciando...");

        Task proceso1 = Conteo(2000, "2 segundos");
        Task proceso2 = Conteo(5000, "5 segundos");

        await Task.WhenAll(proceso1, proceso2); //espera a que ambas tareas terminen (se hacen a la vez y cada una termina cuando puede, no siempre las dos a la vez)



        static async Task Conteo(int tiempo, string mensaje)
        {
            await Task.Delay(tiempo); //espera de forma asíncrona
            Console.WriteLine(mensaje);
        }
    }
}