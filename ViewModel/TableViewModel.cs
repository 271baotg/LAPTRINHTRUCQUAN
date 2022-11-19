using QUANLICAPHE.Model;
using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Navigation;

namespace QUANLICAPHE.ViewModel 
{

   
    public class TableViewModel : BaseViewModel, INotifyPropertyChanged
    {
        private ObservableCollection<BAN> _banlist;
        public ObservableCollection<BAN> BanList { get => _banlist; set { _banlist = value; OnPropertyChanged(); } }

        public ICommand LoadTableView { get;}


        public TableViewModel()
        {



            
        }
    }
}
