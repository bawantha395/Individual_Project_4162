   M S B A M L   `   `   `  ����G  CDesktop_4162, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Desktop_4162Desktop_4162  5   	       Desktop_4162.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:Desktop_4162     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � Title$ 
MainWindow��5	   	   $	��600��6   $
��1000��6)    � DataContext 5
         Desktop_4162.MainWindowVM  5   
   .��5      � .+�5   
   ��  �� CornerRadius$ 15��6   $��4q�6#    � Cursor$ Arrow��67   ��5      �� 5       �� 
StartPoint$	 0,0&�6&    �� EndPoint$ 900,500&�67   .��5      �  � Color$ DimGray��6#    � Offset$ 0.004Q�63   � 5      $ 	#FF3A9481��6#   $ 0.000007Q�65   5      5      �� 5   
   $	��260��6   $	��500��6!   $
��Left=�5      
������ 	 �� Orientation$	 Vertical=�5      $��730,42,0,42q�6-   .+�5      �� -   5        $��Add Student��5      $��60,10,50,30q�6R      
mainbutten#��[  6g   $	��120��6�   $	��130��6�   $
 Hand��6�   ��6+   �� *AddStudentCommand+6�   �� 5      $��Edit Student��6   #��[  6-   $��60,10,50,30q�6Q   $	��120��6�   $	��130��6�   $
 Hand��6�   ��6f   �� *" ExecuteEditStudentCommandCommand+6�   �� 5      -   5        $��Delete Student��5      #��[  6/   $��60,10,50,30q�6S   $	��120��6�   $	��130��6�   $
 Hand��6�   ��6h   �� *DeleteCommand+6�   5      �� 5   
   $	��500��6   ���	#FF1D7173$��Center=�69   $	 Vertical=�6T   $��
10,0,258,0q�6k   $ Arrow��6   .+�5       �� $ ��Student Information System��6   $��
40,20,0,20q�6:   ���	#FFEAEEF1$
��Bold"�6e   $��30(�6w   $��Cascadia Code)�6�   $��39��6�   $	��494��6�   $
��Wrap=�6�   $
��Left=�6�   $ Arrow��6�   $��Center=�6�   �� 5!      $	��640��6   
����� �$	 
Horizontal=�6<   $��37��6U   $ Arrow��6a   .+�5"      �� $��          FirstName��6   ���	#FFCCCEDB  ListView#��[ 6Q   $	��116��6s   �� 5#      $��       LastName��6   ���	#FFCCCEDB#��[ 6L   $��95��6n   �� 5$      $��
       Age��6   ���	#FFCCCEDB#��[ 6F   $��83��6h   $��20��6s   �� 5%      $��           DateOfBirth��6   ���	#FFCCCEDB#��[ 6S   $��20��6u   $	��133��6�   �� 5&      $��  GPA��6   ���	#FFCCCEDB#��[ 6A   $��24��6c   $��76��6o   5)      �� 5+      -   5        
 ��Name$
 Listview��5+      $��0 30 0 0q�6*   ���	#FF115052
������ $	��317��6m   $	��636��5,   ?   $ Arrow��6�   $��Calibri Light)�6�   ��5+   z   �� *
Students+ �� SelectedItem 5,      �� *SelectedStudent+��5-      �� 5.      .R�5/      �� 
������ $��1q�6;    �� Padding$	 0.1q�50   !   $ 5��6/   $	��600��6@   $��35��6L   ._�51      �� $	��600��6)   
������ $	 
Horizontal=�6O   $��33��6h   $��	9,1,-11,0q�6t   $	��Top=�6�   .+�53   "   �� $��20��6(   $��30��63   $��1q�6?   ��6J   �� *Image+�� 54   "   #��[ 6-   
���������6O   �� *	FirstName+6j   �� 55   "   #��[ 6G   
���������6,   �� *
LastName+6i   �� 56   "   #��[ 6g   
���������6,   �� *Age+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 57   "   #��[ 6J   
���������6,   �� *DateOfBirth+6l   �� 58   "   #��[ 6g   
���������6,   �� *GPA+$ PropertyChanged=�6�   5:      5<      5=      5@      5A      5C      5E      