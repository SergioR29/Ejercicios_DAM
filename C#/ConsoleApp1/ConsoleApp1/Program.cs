//-------------------------------------------------------------------------------------------------
//1

/*Console.WriteLine(45);
Console.WriteLine("Hola");
Console.WriteLine(50 + 60);*/

//-------------------------------------------------------------------------------------------------
//2

/*string nombre = "Sergio";
int edad = 20;
bool activo = false;
DateTime fecha = DateTime.Now;
float precio = 1.500f;
decimal descuento = 10.50m;
double descuento_2 = 10.50;

Console.WriteLine(nombre); //Para mostrar contenido por consola
//Console.WriteLine(nombre = "Sergio Romero"); //Cambiar valor de variable por consola directamente
Console.WriteLine(edad);
edad = 50;
Console.WriteLine(edad);
Console.WriteLine(fecha);
Console.WriteLine(precio);
Console.WriteLine(descuento);
Console.WriteLine(descuento_2);*/

//-------------------------------------------------------------------------------------------------
//3

/*string nombre = "Ana";
int edad = 30;

Console.WriteLine("Nombre de usuario: " + nombre + "\nEdad: " + edad);
//Console.Write("\nDatos del usuario\n");
Console.WriteLine($"\nNombre de usuario: {nombre}, edad: {edad}"); //Igual que el f-string de python*/

//-------------------------------------------------------------------------------------------------
//4

/*var numero = 15.20; //Variable que puede contener datos de cualquier tipo
Console.WriteLine(numero);

numero = 3000;
Console.WriteLine(numero);

//Constantes
const double PI = Math.PI;
const int constante = 0;
const bool interruptor = false;

Console.WriteLine("Número PI: " + PI);
Console.Write("¿Interruptor inicializado?: " + interruptor + " ; Nº" + constante);*/

//-------------------------------------------------------------------------------------------------
//5

/*int valor = 200;
double total = valor; //Casting implícito
Console.WriteLine("Casting Implícito: " + total);

double precio = 500.23;
int descuento = (int) precio;
Console.WriteLine("Casting Explícito: " + descuento);

char letra = 'A';
int codigoAscii = letra;
Console.WriteLine(codigoAscii);

string palabra = "123456";
int numero = Convert.ToInt32(palabra);
Console.WriteLine(numero);

string textoDecimal = "150,60";
double valor2 = double.Parse(textoDecimal);
//valor2 = Convert.ToDouble(valor2);
Console.WriteLine(valor2);*/

//-------------------------------------------------------------------------------------------------
//6

//int valor1 = 90, valor2 = 70, valor3 = 10;
//var residuo = valor2 % valor3; /* El tipo var también lo podemos poner como tipo si no sabemos que tipo va a devolver una determinada operación. 
//* Se calcula el resto de una división, en este caso 70/10 
//*/
//Console.WriteLine("Resto: " + residuo);

//-------------------------------------------------------------------------------------------------
//7

/*Console.Write("Nombre: ");
string nombre = Console.ReadLine();

Console.Write("Edad: ");
int edad = Convert.ToInt32(Console.ReadLine());

Console.Write("Salario: ");
double salario = Convert.ToDouble(Console.ReadLine());

Console.WriteLine("===================================================");
Console.WriteLine("Nombre introducido: " + nombre);
Console.WriteLine("Edad introducida: " + edad);
Console.WriteLine("Salario introducido: " + salario);*/

//-------------------------------------------------------------------------------------------------
//8

/*int a = 10, b = 20;
string resultado = (a != b) ? "Sí" : "NO"; //operador ternario, también se puede poner sin ()
Console.WriteLine(resultado);*/

//-------------------------------------------------------------------------------------------------
//9

/*int numero1 = 400, numero2 = 90, numero3 = 50;
bool resultado;

resultado = numero1 < numero2 && numero1 < numero3; //AND
Console.WriteLine(resultado);

resultado = numero1 < numero2 || numero1 < numero3; //OR
Console.WriteLine(resultado);

resultado = numero1 < numero2 || numero1 < numero3;
Console.WriteLine(!resultado); //NOT*/

//-------------------------------------------------------------------------------------------------
//10

//Los condicionales if, else, else if, switch y case son iguales que en java.
//Switch y case presentan algunas variaciones, se pueden usar igual que en java.

/*int valor = -1;
switch(valor)
{
    case 1:
        Console.WriteLine("Hola");
        break;
    case > 1:
        Console.WriteLine("Adiós");
        break;
    default:
        Console.WriteLine("Sin respuesta");
        break;
}

int nota = 10;
string resultado = nota switch 
{

    >= 8 => "Matrícula de Honor",
    >= 5 and < 8 => "Aprobado",
    _ => "Suspendido"
};
Console.WriteLine(resultado);*/

//-------------------------------------------------------------------------------------------------
//11

//Los bucles while, for y do-while son iguales que en java
//Las funciones de control break; y continue; son iguales que en java y python

//-------------------------------------------------------------------------------------------------
//12

//La clase Math es igual a la de Java, tiene un método nuevo llamado "DivRem".

//-------------------------------------------------------------------------------------------------
//13

/*string texto = @"Hola
Adiós
Un saludo"; //Igual que el """ """ de python
Console.WriteLine(texto);

//La variable string tiene los mismos métodos que la clase String de java
Console.WriteLine("Longitud de caracteres: " + texto.Length);*/

//-------------------------------------------------------------------------------------------------
//14

//Los arrays se declaran igual que en java
//La clase base es "Array" (en java "Arrays") con los métodos a utilizar
//Para mostrar el array con separador personalizado: string.join("separador", array)

/*int[] numeros = new int[5]; //no se pueden poner los corchetes izquierdos después del nombre de la variable
numeros[0] = 120;
numeros[1] = 12; //Las posiciones vacías del array automáticamente se llenan con 0

Array.Sort(numeros);
Console.WriteLine($"Array ordenado: [{string.Join(", ", numeros)}]");

Array.Reverse(numeros);
Console.WriteLine("Array invertido: [" + string.Join(", ", numeros) + "]");

Array.Clear(numeros);
Console.WriteLine("Array limpio: [" + string.Join(", ", numeros) + "]");

Array.Fill(numeros, 180);
Console.WriteLine("\nArray con los valores iguales: [" + string.Join(", ", numeros) + "]");
Console.WriteLine($"Cantidad de elementos: {numeros.Length}");

//Operaciones con arrays
int total = numeros.Sum();
Console.WriteLine("Total de suma de valores: " + total);

var mayor12 = numeros.Where(x => x > 12).ToArray();
Console.WriteLine($"Mayores que 12: {string.Join(", ", mayor12)}");

int[] clonados = (int[]) numeros.Clone();
Console.WriteLine("Array numeros: " + string.Join(", ", numeros));
Console.WriteLine("Array clonados: " + string.Join(", ", clonados));*/

//-------------------------------------------------------------------------------------------------
//15

//Las clases son muy parecidas a las de java
/*class Persona
{
    string nombre = "Homero Simpson";
    int edad = 38;
    double salario = 1200;
    bool activo = true;
    string direccion = "Calle siempre viva no. 742";

    static void Main() //se puede poner string[] args como parámetro al igual que en java
    {
        Persona persona = new Persona(); //los objetos también se crean igual en java
        string activo = (persona.activo) ? "Sí" : "No";

        Console.WriteLine($"Nombre: {persona.nombre}\n" + 
            $"Edad: {persona.edad}\n" + 
            $"Dirección: {persona.direccion}\n" + 
            $"Salario: {persona.salario}\n" + 
            $"¿Activo?: {activo}");

        Console.ReadKey();
    }
}*/

//-------------------------------------------------------------------------------------------------
//16

//La estructura de los métodos son muy parecidos a java y el encapsulamiento también (public, private)
/*class Prueba
{
    void saludar() 
    {
        Console.WriteLine("Hola a todos!");
    }

    public string despedida()
    {
        string mensaje = "Adiós a todos!";
        return mensaje;
    }

    public static void Main(string[] args)
    {
        Prueba prueba = new Prueba();
        prueba.saludar();
        Console.WriteLine(prueba.despedida());


        Console.ReadKey();
    }
}*/

//-------------------------------------------------------------------------------------------------
//17

//El paso de parámetros también es igual que en java
/*class Prueba
{
    int valor; //variable global
    void saludar(string nombre, int edad)
    {
        Console.WriteLine("Hola " + nombre + ", tienes " + edad + " años");
        Console.WriteLine("Tu ticket de espera es el " + (valor = 44));
    }

    int suma(int n1, int n2)
    {
        return n1 + n2;
    }

    public static void Main(string[] args)
    {
        Prueba prueba = new Prueba();
        prueba.saludar("Sergio", 20);

        int suma = prueba.suma(1, 2);
        Console.WriteLine($"La suma es {suma}");

        Console.ReadKey(true);
    }
}*/

//-------------------------------------------------------------------------------------------------
//18

//El método constructor de una clase y el this son iguales que en java y el paso de parámetros a ese método mediante la creación de objetos también
//La colaboración e interación de más de 1 clase y objetos es igual que en java

/*class Prueba
{
    int numero;
    string etiqueta;

    public Prueba()
    {
    }

    public Prueba(int numero, string etiqueta)
    {
        this.numero = numero;
        this.etiqueta = etiqueta;

    }

    public string toString()
    {
        return "Nº" + numero + "\nEtiqueta: " + etiqueta;
    }

    public static void Main(string[] args)
    {
        Prueba prueba = new Prueba(1, "#AAFD");
        Console.WriteLine(prueba.toString());

        Prueba2 prueba2 = new Prueba2(12);
        prueba2.mostrarDatos();
        
        Console.ReadKey();
    }
}

class Prueba2
{
    public int numero = 0;
    public Prueba2(int numero) 
    {
        this.numero = numero;
    }

    public void mostrarDatos()
    {
        Console.WriteLine($"NºAfortunado: {numero}");
    }
}*/

//-------------------------------------------------------------------------------------------------
//19

//En las listas se pueden utilizar tipos primitivos, en java no se pueden utilizar tipos primitivos
//En las listas es obligatorio poner el tipo de la misma en el lado derecho también entre los <>
//En las listas se pueden guardar valores duplicados, el bucle foreach es distinto al de java
/*class Listas
{
    void Datos()
    {
        List<string> Simpsons = new List<string>();
        Simpsons.Add("Homero"); //Añadir elementos
        Simpsons.Add("Marge");
        Simpsons.Add("Lisa");
        Simpsons.Add("Bart");
        Simpsons.Add("Maggie");

        foreach (string s in Simpsons)
        {
            Console.WriteLine(s);
        }
        Console.WriteLine("==========================================================");

        //Otro ejemplo
        List<int> numeros = new List<int>();
        numeros.Add(11);
        numeros.Add(222);
        numeros.Add(3);
        numeros.Add(444);
        numeros.Add(55);

        foreach (int n in numeros)
        {
            Console.WriteLine(n);
        }

        //Eliminar un elemento específico
        numeros.Remove(3);
        Console.WriteLine("\nElemento 3 eliminado");

        Console.WriteLine("========================================================");
        foreach (int n in numeros)
        {
            Console.WriteLine(n);
        }

        //Eliminar un elemento de una posición de la lista
        numeros.RemoveAt(2);
        Console.WriteLine("\nElemento de la posición 2 eliminado");

        Console.WriteLine("========================================================");
        foreach (int n in numeros)
        {
            Console.WriteLine(n);
        }

        //Ordenar elementos (de menor a mayor)
        numeros.Sort();

        Console.WriteLine("\nElementos ordenados de menor a mayor");
        Console.WriteLine("========================================================");
        foreach (int n in numeros)
        {
            Console.WriteLine(n);
        }

        //Insertar un elemento nuevo en una determinada posición ya existente
        numeros.Insert(0, 777);

        Console.WriteLine("\nElemento 777 insertado en el índice (posición) 0");
        Console.WriteLine("========================================================");
        foreach (int n in numeros)
        {
            Console.WriteLine(n);
        }

        //Comprobar que un determinado valor de la lista exista
        Console.WriteLine("\n¿Está Lisa en la lista?");
        Console.WriteLine("========================================================");

        bool existe = Simpsons.Contains("Lisa");
        Console.WriteLine(existe ? "Sí" : "No");

        //Comprobar el índice de un elemento de la lista
        Console.WriteLine("\nÍndice del elemento Bart");
        Console.WriteLine("========================================================");

        int indice = Simpsons.IndexOf("Bart");
        Console.WriteLine(indice != -1 ? indice : "No existe el elemento");

        //Invertir los elementos de la lista
        numeros.Reverse();

        Console.WriteLine("\nElementos invertidos");
        Console.WriteLine("========================================================");
        foreach (int n in numeros)
        {
            Console.WriteLine(n);
        }

        //Limpiar la lista
        numeros.Clear();
        Console.WriteLine("\n\nLista limpia");



        Console.ReadKey();

    }

    static void Main(string[] args)
    {
        Listas listas = new Listas();
        listas.Datos();
        
    }
}*/

//-------------------------------------------------------------------------------------------------
//20
/*
class Mapas
{
    static void Main(string[] args)
    {
        Dictionary<int, string> Frutas = new Dictionary<int, string>();
        Frutas.Add(1, "Manzanas"); //añadir elementos (pares clave - valor)
        Frutas.Add(2, "Peras");
        Frutas.Add(3, "Bananas");
        Frutas.Add(4, "Uvas");
        Frutas.Add(5, "Fresas");

        //para ver sólo 1 valor específico
        Console.WriteLine(Frutas[1]); //Índices: 1 hasta el último, no va desde 0 hasta el final, es parecido a los arrays
        Console.WriteLine("\n");

        //visualización de los pares clave - valor
        foreach (var f in Frutas)
        {
            Console.WriteLine(f); //para ver los pares clave - valor a la vez
            Console.WriteLine($"Clave: {f.Key}, Valor: {f.Value} \n"); //para seleccionar qué ver de cada par (sólo la clave o el valor o los dos)
        }

        /*Métodos de las listas válidos para los mapas
          ============================================
          
            - Add (añadir elementos)
            - Remove (eliminar elementos)
        */
/*
        //Método para comprobar si la clave de un par existe
        Console.WriteLine("\n¿Existe la clave nº3?: " + Frutas.ContainsKey(3));

        //Método para comprobar si un valor específico existe
        Console.WriteLine("¿Existe el valor \"Uvas\"?: " + Frutas.ContainsValue("Uvas"));

        //Método para comprobar cuántos elementos hay en el diccionario (mapa)
        Console.WriteLine("\nNº de elementos del diccionario (mapa): " + Frutas.Count());

        //Método Clear() de las listas es de los mapas también
        Frutas.Clear();
        Console.WriteLine("Mapa limpio, nº de elementos es " + Frutas.Count());

        Console.ReadKey();
    }
}*/

//-------------------------------------------------------------------------------------------------
//20

DateTime ahora = DateTime.Now; //fecha y hora actuales
Console.WriteLine(ahora.ToString());

DateTime fecha_hoy = DateTime.Today; //fecha actual abreviada y la hora de inicio cronológico del día
Console.WriteLine(fecha_hoy.ToShortDateString()); //fecha actual abreviada

DateTime fechaHoy_larga = DateTime.Today; //fecha actual completa y la hora de inicio cronológico del día
Console.WriteLine(fechaHoy_larga.ToLongDateString()); //fecha actual completa

DateTime maniana = ahora.AddDays(5);
Console.WriteLine("Dentro de 5 días: " + maniana);

DateTime hora_hoy = DateTime.Now;
Console.WriteLine(hora_hoy.ToShortTimeString()); //hora actual abreviada

DateTime horaHoy = DateTime.Now;
Console.WriteLine(hora_hoy.ToLongTimeString()); //hora actual completa

//Sacar cada dato de la fecha uno a uno
Console.WriteLine($"\nAño: {ahora.Year} \n" + 
                  $"Mes: {ahora.Month} \n" + 
                  $"Día: {ahora.Day} \n\n" + 
                  $"Hora: {ahora.Hour} \n" + 
                  $"Minutos: {ahora.Minute} \n" + 
                  $"Segundos: {ahora.Second} \n" + 
                  $"Día de la semana: {ahora.DayOfWeek} \n" + 
                  $"Día del año: {ahora.DayOfYear} \n");

//Rangos de fechas
DateTime fecha = new DateTime(2025, 3, 2); //Utilizando el constructor de la clase
DateTime fechaHoy = DateTime.Now;
TimeSpan diferencia = fechaHoy - fecha;

Console.WriteLine(fecha);
Console.WriteLine("Diferencia de días: " + diferencia.Days + " días");
Console.WriteLine("Horas transcurridas: " + diferencia.Hours + " horas");











Console.ReadKey(); /*(Siempre al final) Para ocultar la información del repositorio, para mostrarla 
                     pulsar una tecla. Espera a leer la tecla pulsada en la consola*/