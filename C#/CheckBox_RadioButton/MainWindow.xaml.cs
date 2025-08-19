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

namespace CheckBox_RadioButton
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

        private void b_cancelar_Click(object sender, RoutedEventArgs e)
        {
            Environment.Exit(0);
        }

        private void b_confirmar_Click(object sender, RoutedEventArgs e)
        {
            if(rb_01.IsChecked == false && rb_02.IsChecked == false && rb_03.IsChecked == false
                && rb_04.IsChecked == false && rb_05.IsChecked == false)
            {
                label_resultado.Content = "No se ha seleccionado un sabor de pizza";
            } else
            {
                label_resultado.Content = "Confirmado!";
            }
        }
    }
}