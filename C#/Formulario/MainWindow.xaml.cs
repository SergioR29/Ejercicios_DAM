using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Formulario
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void txtEdad(object sender, TextChangedEventArgs e)
        {

        }

        private void txtNombre(object sender, TextChangedEventArgs e)
        {

        }

        private void b_ingresar(object sender, RoutedEventArgs e)
        {
            if(!string.IsNullOrEmpty(nombre.Text) && !string.IsNullOrEmpty(edad.Text))
            {
                try
                {
                    int edad_int = int.Parse(edad.Text);
                    L_resultado.Content = "Datos introducidos correctamente";

                } catch(Exception ex)
                {
                    L_resultado.Content = "Edad mal introducida (tiene que ser un nº entero)";
                }
            } else if (!string.IsNullOrEmpty(nombre.Text) || !string.IsNullOrEmpty(edad.Text))
            {
                if (string.IsNullOrEmpty(nombre.Text))
                {
                    L_resultado.Content = "Falta el nombre";
                }

                if (string.IsNullOrEmpty(edad.Text))
                {
                    L_resultado.Content = "Falta la edad";
                }

            } else
            {
                L_resultado.Content = "No se han introducido datos";
            }
        }

        private void b_borrar(object sender, RoutedEventArgs e)
        {
            L_resultado.Content = "";
            nombre.Text = "";
            edad.Text = "";
        }
    }
}