using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Cinema_app
{
    /// <summary>
    /// Logika interakcji dla klasy MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        masterEntities cokolwiek = new masterEntities();

        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            var query =
            from DANE_OSOBOWE in cokolwiek.DANE_OSOBOWE
            where DANE_OSOBOWE.NUMER_TEL >  1
            select new { DANE_OSOBOWE.IMIE, DANE_OSOBOWE.NAZWISKO, DANE_OSOBOWE.NUMER_TEL };

            dataGrid1.ItemsSource = query.ToList();
        }
    }
}
