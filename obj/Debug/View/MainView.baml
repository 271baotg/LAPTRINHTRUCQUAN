   M S B A M L   `   `   `  ????F  BQUANLICAPHE, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:QUANLICAPHE.ViewQUANLICAPHE.View  5   	   =#clr-namespace:QUANLICAPHE.ViewModelQUANLICAPHE.ViewModel  5   	       QUANLICAPHE.View.MainView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   *localclr-namespace:QUANLICAPHE.View  5   	   3	viewModel#clr-namespace:QUANLICAPHE.ViewModel  5   	   X TFontAwesome.Sharp, Version=6.1.1.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fEf=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5	   	   -   5          ?Name$  
mainWindow??5   	    ? WindowStyle$
 None=?5   	    ? 
ResizeMode$ NoResize=?5   	    ? WindowStartupLocation$ CenterScreen=?5   	   
??????  ? AllowsTransparency .  ? Title$ 
MainWindow??5   	   $	??600??6   $
??1000??6)   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded??6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction  	   Command	 6$   ?? *LoadedWindowCommand+
   CommandParameter
 6L   ??  ?? ElementName$ 
mainWindow??6?   5       ? DataContext 5      )   #QUANLICAPHE.ViewModel.MainViewModel  5   
    ? 	Resources 5"       ?? DataType)   #QUANLICAPHE.ViewModel.HomeViewModel   QUANLICAPHE.View.HomeView)   #QUANLICAPHE.ViewModel.MenuViewModel	   QUANLICAPHE.View.MenuView-
   'QUANLICAPHE.ViewModel.CustomerViewModel#   QUANLICAPHE.View.CustomerView+   %QUANLICAPHE.ViewModel.OrdersViewModel!   QUANLICAPHE.View.OrdersView*   $QUANLICAPHE.ViewModel.TableViewModel    QUANLICAPHE.View.TableView??%w  (??       5#      *, +)(?? 2     5&      *, +)(?? d     5)      *,
 +)(?? ?     5,      *, +)(?? ?     5/      *, +)?? 5#   
   "  6   .R?5$        5%      ?? 5&   
   "  6   .R?5'      	  5(      ?? 5)   
   " 
 6   .R?5*        5+      ?? 5,   
   "  6   .R?5-        5.      ?? 5/   
   "  6   .R?50        51      53      .??57      ??  ?? CornerRadius$ 10??58      $??0q?59      ??5=   
   ?? 5>       ?? 
StartPoint$	 0,0&?6"    ?? EndPoint$	 1,1&?63   .??5?      ?  ? Color$ Black??6    ? Offset$ 0Q?6-   6:   ? 5@      $ #ffff??6   $
 0.75Q?6-   6=   5B      ._?5E   
   ?  ? ColumnDefinitions 5G      ?? 5H      $	??150 ?6#   ?? 5I      $??* ?6#   .+?5N      ?? $ 	10,0,0,10??6   $??0,0,0,0q?5O      $??0??5P      ??5R      ?? 5S      $	 0,0&?6*   $	 1,1&?6;   .??5U      ? $ #FFFFFF??6'   $
 0.75Q?67   6G   5W      5[      ?? 5]      $ 	0,10,10,0??6   $??0,1,1,1q?5^      ???#cbd1cc$??1??5`      ._?5k      ?  ? RowDefinitions 5l      ?? 5m      $??25 ?6(   ?? 5n      $??45 ?6(   ?? 5o      $??* ?6(   .+?5t      ? $??0??6   .+?5u      ??  ?? Orientation$ 
Horizontal=?6%   ???#6038145v   %   5w      ? 5z      $??1??6    5{      ?? 5|      ?? 5}      .+?5      ?? $??0??6%   $ 
Horizontal=?5?   %   $??Center=?5?   %   .+?5?      !  FontAwesome.Sharp.IconImage  $??30??5?   *   $??30??5?   *   $??	35,0,10,0q?5?   *   ?  ?FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.1.1.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   
Foreground
 ?   ?   Icon 5?   *   ?? *Icon+5?   *   ?? 5?      $??18(?5?   (   $
??Bold"?5?   (   $??15,0,0,0q?5?   (   $??
Montserrat)?5?   (   $??Center=?5?   (   
???   ???5?   (   ?? *	Caption+5?   )   5?      5?      ?? 5?      $??2??5?   %   $??20q?5?   %   ??5?   %   ?? *CurrentChildView+5?   %   5?      5?      ?? 5?      $	??150??6   $	??Top=?6&   .+?5?      ?? $??\Image\LogoShop.png??6   $??
10,25,10,0q?5?      5?      ?? 5?      .+?5?      	?    
menuButton#??[  6   
 ? Tag$ #603814??5?      $??	0,150,0,0q?5?      ??5?      ?? *ShowHomeViewCommand+.??5?      ?? $ 
Horizontal=?6!   .+?5?        $
 Home=?6&     menuIcon#??[ 62   ?? 5?      $
??Home??6$     menuButtonText#??[ 60   5?      5?      	? 5?      #??[  6   $ #603814??5?      $??0,10,0,0q?5?      ??5?      ?? *ShowMenuViewCommand+.??5?      ?? $ 
Horizontal=?6!   .+?5?        $
 Bars=?6&   #??[ 62   ?? 5?      $
??Menu??6$   #??[ 60   5?      5?      	? 5?      #??[  6   $ #603814??5?      $??0,10,0,0q?5?      ??5?      ?? *ShowCustomerViewCommand+.??5?      ?? $ 
Horizontal=?6!   .+?5?        $ PeopleGroup=?6&   #??[ 69   ?? 5?      $??Customer??6$   #??[ 64   5?      5?      	? 5?      #??[  6   $ #603814??5?      $??0,10,0,0q?5?      ??5?      ?? *ShowOrdersViewCommand+.??5?      ?? $ 
Horizontal=?6!   .+?5?        $ ClockRotateLeft=?6&   #??[ 6=   ?? 5?      $??Orders??6$   #??[ 62   5?      5?      	? 5?      #??[  6   $ #603814??5?      $??0,10,0,0q?5?      ??5?      ?? *ShowTableViewCommand+.??5?      ?? $ 
Horizontal=?6!   .+?5?        $ Gears=?6&   #??[ 63   ?? 5?      $??Table??6$   #??[ 61   5?      5?      5?      5?      5?      5?      