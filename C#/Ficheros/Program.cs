class Ficheros
{
    void Inicio()
    {
        string ruta = "C:/Users/neptu/Documents/Mis archivos C#/fichero.txt";
        File.WriteAllText(ruta, "Hola a todos!"); //escribir texto en el fichero a crear

        string contenido = File.ReadAllText(ruta); //leer el contenido del fichero
        Console.WriteLine(contenido + "\n\n");

        //Añadir texto al fichero (editarlo)
        File.AppendAllText(ruta, "\n------------------\nNueva línea");

        contenido = File.ReadAllText(ruta);
        Console.WriteLine(contenido);

        //Borrar el fichero
        Console.Write("\n\n¿Desea borrar el fichero? (S/N): ");
        string tecla = Console.ReadLine();

        if(tecla.Equals("S"))
        {
            try
            {
                File.Delete(ruta);
                Console.WriteLine("Fichero borrado");

            } catch(Exception ERROR)
            {
                Console.WriteLine("Error al borrar el archivo: " + ERROR.ToString());
            }
        } else
        {
            Console.WriteLine("Se ha elegido no borrar el fichero");
        }
    }


    static void Main(string[] args)
    {
        Ficheros ficheros = new Ficheros();
        ficheros.Inicio();
    }
}