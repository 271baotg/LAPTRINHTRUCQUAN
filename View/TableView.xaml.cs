using QUANLICAPHE.Model;
using QUANLICAPHE.ViewModel;
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

namespace QUANLICAPHE.View
{
    /// <summary>
    /// Interaction logic for TableView.xaml
    /// </summary>
    
    
    public partial class TableView : UserControl
    {
        public string backcolor;
        public TableView()
        {
            InitializeComponent();
            LoadTable();
        }

        

        public void LoadTable()
        {
            ListTableProduct.ItemsSource = DataProvider.Ins.DB.TableFoods.ToList();
            
            foreach (var product in DataProvider.Ins.DB.TableFoods)
            {
                
                if (product.status == "Trống")
                    product.color = "#e07109";
                else
                    product.color = "#93c971";
            }

            
        }

        private void TABLE_Click(object sender, RoutedEventArgs e)
        {
            //int tableid = (sender as TableFood).id;
            //ShowBill(tableid);
        }

        //private void ShowBill(int id)
        //{
        //    if (DataProvider.Ins.DB.BillInfoes.Where(b => b.id == id).)
        //}
    }
}
