   M S B A M L   `   `   `  ����G  CDesktop_4162, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Desktop_4162Desktop_4162  5   	   +clr-namespace:Desktop_4162Desktop_4162  62   #    Desktop_4162.AddStudentWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:Desktop_4162     5   	   -local1clr-namespace:Desktop_4162     62   $	��600��5   E   $
��1000��6R     � Title  6	   �� *Title+ �� UpdateSourceTrigger$ PropertyChanged=� � DataContext 5         Desktop_4162.AddStudentVM  5   
   .��5      �  � ColumnDefinitions 5   
   �� 5      �� 5      $
��Auto �6   .+�5   
   ��  �� CornerRadius$ 15��6   $��4q�6#   $��2��67   
���   ���5      �� 5       �� Color$ 	#FF09090A��6"    �� Opacity$ 1Q�64   5      �� 5   
   $	��900��6   $	��500��6!   $
��Left=�6.   $	��Top=�5       �� Orientation$ Vertical=�6%   $��2��6<   $��50,0,0,0q�6P   .+�5      �� $��	20,35,5,5q�6   $&�� Enter the student details below.��6+   $��Italic$�6S   $��14(�6f   
�������$��37��6�   �� 5      $��First Name:��6   $��20,5,5,5q�6+   ���	#FFCEDCDC$��Italic$�6T   �� 5      $��20,5,5,5q�6V   $��1��6h   ���	#FF2D3233
����������	#FF808184��6   �� *	Firstname+$ PropertyChanged=�6�   �� 5      $��
Last Name:��6   $��20,5,5,5q�6*   $��1��6<   ���	#FFCEDCDC$��Italic$�6`   �� 5      $��20,5,5,5q�6U   $��1��6g   ���	#FF2D3233
����������	#FF808184��6   �� *
Lastname+$ PropertyChanged=�6�   �� 5       $
��Age:��6   $��20,5,5,5q�6$   $��1��66   ���	#FFCEDCDC$��Italic$�6Z   �� 5!      $��20,5,5,5q�6P   $��1��6b   $��1��6o   ���	#FF2D3233
����������	#FF808184��6   �� *Age+$ PropertyChanged=�6�   �� 5"      $��DateOfBirth:��6   $��20,5,5,5q�6,   $��1��6>   ���	#FFCEDCDC$��Italic$�6b   �� 5#      $��20,5,5,5q�6X   $��1��6j   $��1��6w   
����������	#FF2D3233���	#FF808184��6   �� *Dateofbirth+$ PropertyChanged=�6�   �� 5$      $
��GPA:��6   $��20,5,5,5q�6$   $��1��66   ���	#FFCEDCDC$��Italic$�6Z   �� 5%      $��20,5,5,5q�6P   $��1��6b   $��1��6o   ���	#FF2D3233
����������	#FF808184��6   �� *Gpa+$ PropertyChanged=�6�   �� 5&      -   5        $��Insert Picture��5&      $	��100��6.   $
��Left=�6:   $��20,5,5,5q�6|   $��3��6�   $��Bottom=�6�   $��2��6�   ���	#FFF7F7F7
���   ����	#FF289DA5 � Cursor$
 Hand��6!  ��6U   �� *UploadPhotoCommand+6!  �� 5'      $��40��6   $
��Left=�6    $	��100��6;   $	��Top=�6G   $��
120 12 0 0q�6_   ��6s   �� *SelectedImage+$ PropertyChanged=��� 5)      -   5        
�������$
��Save��5)   (   $��400,5,400,5q�6W   $��3��6l   $��Bottom=�6y   $��2��6�   
���   ����	#FF289DA5$
 Hand��6�   ��67   �� *SaveCommand+6�   �� 5*      -   5        
�������$
��Back��5*   (   $��400,5,400,5q�6W   $��3��6l   $��Bottom=�6y   $��2��6�   
���   ����	#FF289DA5$
 Hand��6�   ��67   �� *SaveCommand+6�   5-      5/      50      