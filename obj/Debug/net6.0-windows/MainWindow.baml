   M S B A M L   `   `   `  ����F  BWpfsession1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Wpfsession1Wpfsession1  5   	       Wpfsession1.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:Wpfsession1     5   	     � Title$  Noname��5   	   $	��450��6   $	��800��6%    � 	Resources 5
         Style_Default �� 
TargetType �� Property �� Value  Style_ButtonDefault  Style_TextBox  Style_Label��%�  &	        &	 t     &	 �     &	 \    �� 5   
   " ��6&   .�5      ��  � ��$ 
15,15,15,5q�6'   �� 5       � ��$ 14(�6)   5      �� 5   
   " ��6,   .�5      ��  � ��$ 
15,11,4,11q�6'   �� 5       � ��$ 11(�6)   5      �� 5   
   " ��6&   .�5      ��  � ��$ 
15,11,4,11q�6'   �� 5       � ��$ 14(�6)   5      �� 5   
   " ��6$   .�5      ��  � ��$ 
15,11,4,11q�6'   �� 5       � ��$ 10(�6)   5      5      .��5!      �  � ColumnDefinitions 5"   
   �� 5#      $��* �6   �� 5$      $��* �6   �� 5%      $��* �6    � RowDefinitions 5'   
   �� 5(      $
��0.5* �6   �� 5)      $
��0.5* �6   �� 5*      $
��0.5* �6   �� 5+      $��* �6   �� 5,      $��* �6   .+�5/   
   �� -   5         ��Name$ Button_Download��5/      $��0��50      $��5��6   $%��Скачать страницу��51      #��[ 52      54      �� 56   
   -   5        $ Button_Save��56      $��1��57      $��5��6   $+��%Сохранить результат��58      #��[ 59      5;      �� 5=   
   -   5         ��Name$ textBoxAdress��5=      $��0��5>      $��0��6   $��2��5?      #��[ 5@      �� 5B   
   -   5        $ textBoxContent��5B      $��1��5C      $��0��6   $��2��5D      $��4��5E      $	 �� HorizontalScrollBarVisibility$	 Visible=�5F      "
 �� VerticalScrollBarVisibility$
 Visible=�5G      #��[ 5H      �� 5J   
   -   5        $ textBoxResponse��5J      $��2��5K      $��2��6   #��[ 5L      �� 5N   
   -   5        $ textBoxHeaders��5N      $��3��5O      $��2��6   $��4��5P      $	 Visible=�5Q      $
 Visible=�5R      #��[ 5S      5U      5V      