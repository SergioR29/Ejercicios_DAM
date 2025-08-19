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

namespace App_Escritorio1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            b_despedir.IsEnabled = false;
            
        }

        private void b_saludar_Click(object sender, RoutedEventArgs e)
        {
            label_mensaje.Content = "Hola a todos!";
            b_despedir.IsEnabled = true;
            b_saludar.IsEnabled = false;
        }

        private void b_despedir_Click(object sender, RoutedEventArgs e)
        {
            label_mensaje.Content = "Adiós a todos!";
            b_despedir.IsEnabled = false;
            b_saludar.IsEnabled = true;
        }
    }
}