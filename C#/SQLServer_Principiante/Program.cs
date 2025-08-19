using Microsoft.Data.SqlClient;
using SQLServer_Principiante;

public class Conexion
{
    private readonly string datosConexion;
    private SqlConnection conectar;

    public Conexion()
    {
        datosConexion = "Server = localhost;" +
            "Database = Farmacia;" +
            "Trusted_Connection = True;" +
            "TrustServerCertificate = True";
        conectar = new SqlConnection(datosConexion);
    }

    public SqlConnection AbrirConexion()
    {
        try
        {
            if (conectar.State == System.Data.ConnectionState.Closed)
            {
                conectar.Open();
                Console.WriteLine("Sistema conectado a SQL Server\n");
            }

        } catch(Exception ex)
        {
            Console.WriteLine("Error al conectar a SQL Server: " + ex + "\n");
        }
        return conectar;
    }

    public void CerrarConexion()
    {
        try
        {
            if (conectar.State == System.Data.ConnectionState.Open)
            {
                conectar.Close();
                Console.WriteLine("\nSistema desconectado de SQL Server");
            }

        }
        catch (Exception ex)
        {
            Console.WriteLine("\nError al desconectar de SQL Server: " + ex);
        }
    }

    static void Main(string[] args)
    {
        Conexion conexion = new Conexion();
        Consultas consultas = new Consultas();
    }
}