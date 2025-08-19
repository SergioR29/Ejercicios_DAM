using MySql.Data.MySqlClient;

public class Conexion
{
    private MySqlConnection conectar;
    private string datosC;
    
    public Conexion()
    {
        datosC = "server = localhost;" +
            "port = 3306;" +
            "database = colegio_amanecer;" +
            "user = root;" +
            "password = root;";
        conectar = new MySqlConnection(datosC);
    }

    public MySqlConnection iniciarBD()
    {
        try
        {
            if(conectar.State == System.Data.ConnectionState.Closed)
            {
                conectar.Open();
                //Console.WriteLine("Conexión a la BD correcta");
            }
        } catch(Exception ex)
        {
            Console.WriteLine("Error de conexión BD: " + ex.Message);
        }
        return conectar;
    }

    public void apagarBD()
    {
        try
        {
            if (conectar.State == System.Data.ConnectionState.Open)
            {
                conectar.Close();
                Console.WriteLine("Conexión a la BD cerrada");
            }
        } catch(Exception ex)
        {
            Console.WriteLine("Error de desconexión BD: " + ex.Message);
        }
        
    }
}

class Consulta
{
    public void ConsultAlumnos()
    {
        Conexion conexion = new Conexion();
        string sentenciaSQL = "SELECT nombre, edad, grado FROM alumnos ORDER BY edad"; //"select * from alumnos";

        try
        {
            MySqlCommand consultar = new MySqlCommand(sentenciaSQL, conexion.iniciarBD());
            MySqlDataReader lectorDatos = consultar.ExecuteReader();

            string cabecera = string.Format("{0,-20} {1,-10} {2,-10}\n{3,-20} {4,-10} {5,-10}", "NOMBRE", "EDAD", "CURSO", "======", "====", "=====");
            Console.WriteLine("\n" + cabecera);

            while (lectorDatos.Read())
            {
                string datos = string.Format("{0, -20} {1, -10} {2, -20}", $"{lectorDatos["nombre"]}", $"{lectorDatos["edad"]}", $"{lectorDatos["grado"]}");
                Console.WriteLine(datos);
            }
            Console.WriteLine();

        } catch(Exception ex)
        {
            Console.WriteLine($"Error al consultar: {ex}");
        }
    }
}

public class Principal
{
    static void Main(string[] args)
    {
        Conexion conexion = new Conexion();
        MySqlConnection conectar = conexion.iniciarBD();

        if(conectar != null && conectar.State == System.Data.ConnectionState.Open)
        {
            Console.WriteLine("BD conectada correctamente");
            Consulta consulta = new Consulta();

            consulta.ConsultAlumnos();
            conexion.apagarBD();
        } else
        {
            Console.WriteLine("Error de conexión a la BD");
        }
        Console.ReadKey();
    }
}