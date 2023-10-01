using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
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

namespace Wpfsession1
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

        private async void Button_Download_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var client = new HttpClient();
                string adress = textBoxAdress.Text;
                HttpResponseMessage response = await client.GetAsync(adress);                
                
                var content = await response.Content.ReadAsStringAsync();
                textBoxContent.Text = content;

                var statusCode = response.StatusCode;
                textBoxResponse.Text = "Код ответа: " + (int)statusCode + " " + statusCode.ToString();

                var my_headers = response.Headers;
                textBoxHeaders.Text = "Заголовки: \r\n" + my_headers.ToString();
            }
            catch (HttpRequestException ex)
            {
                MessageBox.Show("Ошибка соединения с сервером. Интернет-соединение отсутсвует или сервер недоступен.");
            }
            catch (UriFormatException ex)
            {
                MessageBox.Show("Некорректно введен адрес, проверьте и попробуйте снова.");
            }
            
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR", MessageBoxButton.OK, MessageBoxImage.Error);
            } 
        }

        private async void Button_Save_Click(object sender, RoutedEventArgs e)
        {
        try
            {
                using (System.IO.StreamWriter streamWriter = new System.IO.StreamWriter("report.txt"))
                {
                    await streamWriter.WriteLineAsync(textBoxContent.Text);
                    MessageBox.Show("Результат сохранен.");
                }
            }
        catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Ошибка, результат не сохранен.", MessageBoxButton.OK, MessageBoxImage.Error);
            } 
    }
}
