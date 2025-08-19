using Oracle.ManagedDataAccess.Client;
using Oracle_Principiante;

public class Conexion
{
    private string datosConexion;
    public OracleConnection oracleConnection;

    public Conexion()
    {
        datosConexion = "User Id = Libreria;" +
            "Password = oracle;" +
            "Data Source = localhost:1521/XE";
        oracleConnection = new OracleConnection(datosConexion);
    }

    public void AbrirConexion()
    {
        try
        {
            oracleConnection.Open();
            Console.WriteLine("Sistema conectado a Oracle DB");
        } 
        catch(Exception ex)
        {
            Console.WriteLine("Error al conectar a la BD: " + ex.ToString());
        }
    }

    public void CerrarConexion()
    {
        try
        {
            oracleConnection.Close();
            Console.WriteLine("\nSistema desconectado de Oracle DB");
        }
        catch (Exception ex)
        {
            Console.WriteLine("Error al desonectar la BD: " + ex.ToString());
        }
    }

    static void Main(string[] args)
    {
        Console.WriteLine("Iniciando conexión a la BD....");
        Conexion conexion = new Conexion();

        Consultas consultas = new Consultas();
        consultas.ConsultaLibros(); //para que funcionen las consultas hacer commit si primero se han creado las tablas recientemente
    }
}