using Microsoft.Data.SqlClient;


namespace SQLServer_Principiante
{
    internal class Consultas
    {
        Conexion conexion = new Conexion();
        public Consultas()
        {
            try
            {
                SqlConnection con = conexion.AbrirConexion();
                string consulta = "select nombre, direccion, telefono from clientes";

                SqlCommand comando = new SqlCommand(consulta, con);
                SqlDataReader lectura = comando.ExecuteReader();

                Console.WriteLine("{0, -20} | {1, -30} | {2, -15}", "Nombre", "Dirección", "NºTeléfono");
                Console.WriteLine(new string('-', 70));

                while(lectura.Read())
                {
                    string nombre = lectura["nombre"].ToString();
                    string direccion = lectura["direccion"].ToString();
                    string telefono = lectura["telefono"].ToString();

                    Console.WriteLine("{0, -20} | {1, -30} | {2, -15}", nombre, direccion, telefono);
                }

            } catch(Exception ex)
            {
                Console.WriteLine("Error consultando datos: " + ex);
            }
            finally
            {
                Console.WriteLine();
                conexion.CerrarConexion();
            }
        }
    }
}
