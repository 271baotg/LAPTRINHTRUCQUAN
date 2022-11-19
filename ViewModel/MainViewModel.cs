using FontAwesome.Sharp;
using QUANLICAPHE.View;
using QUANLICAPHE.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace QUANLICAPHE.ViewModel
{
    public class MainViewModel : BaseViewModel
    {
        private BaseViewModel _currentChildView;
        private string _caption;
        private IconChar _icon;



        public BaseViewModel CurrentChildView
        {
            get
            {
                return _currentChildView;
            }
            set
            {
                _currentChildView = value;
                OnPropertyChanged(nameof(CurrentChildView));
            }
        }
        public string Caption
        {
            get
            {
                return _caption;
            }
            set
            {
                _caption = value;
                OnPropertyChanged(nameof(Caption));
            }
        }
        public IconChar Icon
        {
            get
            {
                return _icon;
            }
            set
            {
                _icon = value;
                OnPropertyChanged(nameof(Icon));
            }
        }

        public ICommand ShowHomeViewCommand { get; }
        public ICommand ShowMenuViewCommand { get; }
        public ICommand ShowOrdersViewCommand { get; }
    
        public ICommand ShowCustomerViewCommand { get; }
        public ICommand ShowTableViewCommand { get; }
        public ICommand LoadedWindowCommand { get; }

        public bool IsLoaded = false;

        public MainViewModel()
        {

            LoadedWindowCommand = new RelayCommand<Window>((p) => { return true; }, (p) => {
                IsLoaded = true;
                if (p == null)
                    return;
                p.Hide();
                LoginView LoginWindow = new LoginView();
                LoginWindow.ShowDialog();

                if (LoginWindow.DataContext == null)
                    return;
                var loginVM = LoginWindow.DataContext as LoginViewModel;

                if (loginVM.IsLogin)
                {
                    p.Show();
                }
                else
                {
                    p.Close();
                }
            }
              );

            //ShowHome
            ShowHomeViewCommand = new RelayCommand<UserControl>((p) => { return true; }, (p) =>
            {
                CurrentChildView = new HomeViewModel();
                Caption = "Home";
                Icon = IconChar.Home;

            });

            //ShowMenu
            ShowMenuViewCommand = new RelayCommand<UserControl>((p) => { return true; }, (p) =>
            {
                CurrentChildView = new MenuViewModel();
                Caption = "Menu";
                Icon = IconChar.Bars;

            });

            //ShowOrders
            ShowOrdersViewCommand = new RelayCommand<UserControl>((p) => { return true; }, (p) =>
            {
                CurrentChildView = new OrdersViewModel();
                Caption = "Orders";
                Icon = IconChar.ClockRotateLeft;

            });

            //ShowCustomer
            ShowCustomerViewCommand = new RelayCommand<UserControl>((p) => { return true; }, (p) =>
            {
                CurrentChildView = new CustomerViewModel();
                Caption = "Customer";
                Icon = IconChar.UserGroup;

            });

            //ShowTable
            ShowTableViewCommand = new RelayCommand<UserControl>((p) => { return true; }, (p) =>
            {
                CurrentChildView = new TableViewModel();
                Caption = "Table";
                Icon = IconChar.Couch;
            });

            
        }

    }
}