using Oracle.ManagedDataAccess.Client;

namespace Oracle_Principiante
{
    internal class Consultas
    {
        public void ConsultaLibros()
        {
            Conexion conectar = new Conexion();
            try
            {
                conectar.AbrirConexion();
                string consulta = "select * from libros";
                OracleCommand mando = new OracleCommand(consulta, conectar.oracleConnection);
                OracleDataReader lector = mando.ExecuteReader();

                Console.WriteLine("\nID_Libro\t\tTítulo\t\t\tAutor\t\tFecha\t\tGénero");
                Console.WriteLine("==============================================================================");

                
                while(lector.Read()) {
                    int id = lector.GetInt32(0);
                    string titulo = lector.GetString(1);
                    int autor = lector.GetInt32(2);
                    DateTime fecha = lector.GetDateTime(3);
                    string genero = lector.GetString(4);

                    Console.WriteLine($"{id}\t{titulo}\t\t\t\t\t{autor}\t\t{fecha.ToShortDateString()}\t{genero}");
                }
            } 
            catch(Exception ex)
            {
                Console.WriteLine("Error al consultar libros: " + ex.ToString());
            }
            finally
            {
                conectar.CerrarConexion();
            }
        }
    }
}
