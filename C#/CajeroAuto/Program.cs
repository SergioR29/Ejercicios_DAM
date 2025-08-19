class CajeroAuto
{
    double salario = 10000;

    void Menu()
    {
        int opcion = 0;
        do
        {
            Console.Clear();
            Console.WriteLine(@"=====SELECCIONE LA OPERACIÓN=====
1. CONSULTAR SALDO
2. DEPOSITAR
3. RETIRAR
4. SALIR");

            try
            {
                Console.WriteLine("Seleccione una opción");
                opcion = Convert.ToInt32(Console.ReadLine());
            } catch(Exception ex)
            {
                Console.WriteLine("La opción debe ser numérica, no alfanumérica");
            }
            

            switch(opcion)
            {
                case 1:
                    ConsultarSaldo();
                    break;
                case 2:
                    Depositar();
                    break;
                case 3:
                    Retirar();
                    break;
                case 4:
                    Salir();
                    break;
                default:
                    Console.WriteLine("NO SE HA ENCONTRADO ESA OPCIÓN, PRESIONE ENTER PARA CONTINUAR");
                    Console.ReadKey();
                    break;
            }

        } while (opcion != 4); //si la variable "opcion" es de tipo string: (opcion != "4")
    }

    void ConsultarSaldo()
    {
        Console.Clear(); //limpiamos el menú
        Console.WriteLine("El saldo es " + salario);
        OtraOperacion();
    }

    void Depositar()
    {
        Console.Clear();
        Console.Write("¿Cuánto saldo quiere depositar?: ");
        double depositar = 0;
        try
        {
            depositar = Convert.ToDouble(Console.ReadLine());
            if(depositar > 0)
            {
                salario += depositar;
                Console.WriteLine("Deposito finalizado correctamente, el nuevo saldo ahora es de " + salario);
                OtraOperacion();
            } else
            {
                Console.WriteLine("Se ha cancelado la operación de depositar");
            }
        } catch(Exception ex)
        {
            Console.WriteLine("El saldo debe ser numérico o decimal, no alfanumérico");
            Depositar();
        }
    }

    void Retirar()
    {
        Console.Clear();
        Console.Write("¿Cuánto saldo quiere retirar?: ");
        double retirar = 0;
        try
        {
            retirar = Convert.ToDouble(Console.ReadLine());
            if (retirar <= salario)
            {
                if (retirar <= 0)
                {
                    Console.WriteLine("Operación de retiro cancelada");
                } else
                {
                    salario -= retirar;
                    Console.WriteLine("Retiro finalizado correctamente, el nuevo saldo ahora es de " + salario);
                    OtraOperacion();
                }
                
            }
            else
            {
                Console.WriteLine("Fondos insuficientes, inténtelo de nuevo . . . .");
                Retirar();
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine("El saldo debe ser numérico o decimal, no alfanumérico");
            Retirar();
        }
    }

    void Salir()
    {
        Console.Clear();
        Console.WriteLine("Programa finalizado");

        Environment.Exit(0);
    }

    void OtraOperacion()
    {
        int respuesta = 0;
        while (true)
        {
            try
            {
                Console.WriteLine("¿DESEA REALIZAR MÁS OPERACIONES? (1=SI / 2=NO)");
                respuesta = Convert.ToInt32(Console.ReadLine());

                if(respuesta == 1)
                {
                    Menu();
                } else
                {
                    Salir();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("El valor debe ser numérico");
            }
        }
    }

    static void Main(string[] args) //atajo: svm
    {
        CajeroAuto cajeroAuto = new CajeroAuto();
        cajeroAuto.Menu();
    }
}