class Hilos
{
    public void Conteo()
    {
        Thread hilo1 = new Thread(Ejecucion_hilo);
        hilo1.Start();

        Console.WriteLine("Hilo iniciado");
        hilo1.Join();

        Console.WriteLine("Fin del programa");
    }

    static void Ejecucion_hilo()
    {
        Thread.Sleep(5000);
        Console.WriteLine("pasaron 5 segundos");
    }

    static void Main(string[] args)
    {
        Hilos ejecuta = new Hilos();
        ejecuta.Conteo();
    }
}