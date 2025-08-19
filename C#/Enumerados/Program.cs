class Enumerados
{

    enum EstadoPedido
    {
        Pendiente, Procesado, Enviado, Recibido
    }
    //los enumerados también se pueden definir fuera de cualquier clase
    //son como los arrays de java que los índices van desde el 0 hasta el final

    static void Main(string[] args)
    {
        EstadoPedido status = EstadoPedido.Enviado;
        Console.WriteLine($"Estado del pedido: {status}");
        Console.WriteLine($"ID del pedido: {(int) status}");

        //para comprobar si existe un valor del enumerado
        bool existe = Enum.IsDefined(typeof(EstadoPedido), 2);
        Console.WriteLine(existe);
    }
}