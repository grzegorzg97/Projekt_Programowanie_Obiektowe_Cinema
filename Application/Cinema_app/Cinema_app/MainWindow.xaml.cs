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
        CinemaDB cokolwiek = new CinemaDB();

        public MainWindow()
        {
            InitializeComponent();

            KLIENCI klient = new KLIENCI();


           
        }  
        CinemaDB CDB = new CinemaDB();

        private void btnZaloguj_Click_1(object sender, RoutedEventArgs e)
        {
            foreach (var klient in CDB.KLIENCI)
            {
                if (klient.EMAIL == txtEmail.Text && klient.HASLO == txtpassword.Password)
                {
                    MessageBox.Show("Działa");
                }
               
            }
        }
    }  
}
