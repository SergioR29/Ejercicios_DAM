class Instalador
{
    Thread HiloAnalisis = new Thread(AnalyzeFile);
    Thread HiloInstalador = new Thread(Instalacion);

    static void AnalyzeFile()
    {
        Console.WriteLine("Analizando archivo...");
        Thread.Sleep(5000);
        Console.WriteLine("Archivo analizado. No hay amenazas");
    }
    static void Instalacion()
    {
        Console.WriteLine("Instalando programa...");
        Thread.Sleep(7000);
        Console.WriteLine("Programa instalado correctamente");
    }

    static void Main(string[] args)
    {
        Instalador instalador = new Instalador();
        instalador.HiloAnalisis.Start();
        instalador.HiloAnalisis.Join();

        instalador.HiloInstalador.Start();
        instalador.HiloInstalador.Join();
    }
}