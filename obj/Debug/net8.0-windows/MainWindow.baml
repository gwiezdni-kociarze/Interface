   M S B A M L   `   `   `  ����?  ;meow, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:meowmeow  5   	       meow.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   $localclr-namespace:meow     5   	     � WindowState$  	Maximized=�5   	    � WindowStyle$
 None=�5	   	    � Title$ MEOW Invaders��5
   	   $
��1080��6   $
��1920��6-   
���   � � Icon$ /Images/logo.png��5   	    � 	Resources 5         BreathingAnimation g� RepeatBehavior g� AutoReverse �� 
TargetName �� TargetProperty	 W� From	
 W� To g� Duration " FadeOutLoadingScreenStoryboard  FadeInMenuStoryboard��%�  &	        &	 )    &	 /    �� 5   
   $ Forever��60   $
 True��6I   .��5      W� $ 	LogoLabel��6   $ RenderTransform.ScaleX�5      	 15      
 1.16'   $ 0:0:1D�60   W� 5      $ 	LogoLabel��6   $ RenderTransform.ScaleY�5      	 15      
 1.16'   $ 0:0:1D�60   5      �� 5   
   .��5      W� -   5        $ LoadingScreen��5      $ Opacity�5      	 1.05      
 0.06%   $ 0:0:2D�6.   5      W� 5      $
 Menu��6   $ Opacity�5      	 0.05      
 1.06%   $ 0:0:2D�6.   5      �� 5    
   .��5!      W� $
 Menu��6   $ Opacity�5"      	 0.05#      
 1.06%   $ 0:0:2D�6.   5$      5%      .��5'      � .+�5(   
   � -   5         �Name$ LoadingScreen��5(      
���   �.+�5)      �� $��
Loading...��6   $��70(�6*   
�������$
��Left=�6K   $	��Top=�6f   $��Pixelify Sans)�6~   $	��100��6�   $	��315��6�   $��1317,964,0,0q�6�   � 5*      -   5        $��LoadingProgressBar��5*      $	��372��64   $��49��6@   $
��Left=�6L   $	��Top=�6g   $��10,1014,0,0q�6   $y�Hidden=�6�   �� 5-      -   5         ��Name$ 	LogoLabel��5-      $�� ��6'   $
��Left=�62   $��1561,769,0,0q�6M   $	��Top=�6c   $	��433��6{   $	��440��6�    J� RenderTransformOrigin$ 0.5,0.5&�5.      z�5/      �� 50       �� ScaleX$ 1Q�6%    �� ScaleY$ 1Q�60    � Triggers 52      :� 53       :� RoutedEvent$ Label.Loaded��6#   .[�54      �� #��[  6*   55      ��57      �� 58       �� ImageSource$ /Images/logo.png��6!   5:      5;      � 5=   
   -   5        $
 Menu��5=      $y�Hidden=�6    J� Opacity$	 1.0Q�61   ��5>      �� 5?      $ /Images/galaxy.png��6   .+�5C      ��  �� Orientation$ 
Horizontal=�6   $
��Left=�62   $	��Top=�6M   $��500,110,0,0q�6e   $ 0.5,0.5&�6z   z�5D      V� 5E      .~�5F      �� �� 5G       �� AngleY$ -5Q�6(   �� 5H      T� 5I      5J      .+�5L      �� $��M��6   $	��120(�6%   $��Pixelify Sans)�64   
�������$
��Bold"�6b   z�5M      T� 5N      -   5        
translateM��5N   -   5P      �� 5Q      $��E��6   $	��120(�6%   $��Pixelify Sans)�64   
�������$
��Bold"�6b   z�5R      T� 5S      -   5        
translateE��5S   -   5U      �� 5V      $��O��6   $	��120(�6%   $��Pixelify Sans)�64   
�������$
��Bold"�6b   z�5W      T� 5X      -   5        
translateO��5X   -   5Z      �� 5[      $��W��6   $	��120(�6%   $��Pixelify Sans)�64   
�������$
��Bold"�6b   z�5\      T� 5]      -	   5        
translateW��5]   -   5_      5`      �� 5a      $��Invaders��6   $
��Left=�6'   $��455,214,0,0q�6B   $	��Top=�6W   $	��188��6o   $	��543��6|   $	��110(�6�   $��Pixelify Sans)�6�   
�������$ 0.5,0.5&�6�   z�5b      V� 5c      .~�5d      �� �� 5e      $ -5Q�6(   �� 5f      T� 5g      5h      5j      �� 5k      -
   5        $��111,0,1351,102q�5k      $	��181��60   $��Bottom=�6=   �� 5l      $	��166��6   $	��172��6%   ��5m      �� 5n      $ Images/cross.png��6%   5p       �� 5q      
�������$	��120(�6+   $
��Quit��6:   $	��160��6I   $��Pixelify Sans)�6V   $	��262��6q   6   5r      �� 5s      -   5        $��56,0,1345,0q�5s      $	��236��6-   $��Center=�6:   �� 5t      $	��244��6   $	��230��6%   ��5u      �� 5v      $ /Images/Play.png��6%   5x       �� 5y      
�������$	��120(�6+   $
��Play��6:   $	��182��6I   $��Pixelify Sans)�6V   $	��243��6q   6   5z      5{      �� 5}   
   -   5         ��Name$
 Game��5}      
���   �$y�Hidden=�62   .+�5      � $	��750��6   $
��1500��6     �� Left$	 162��6-   
 �� Top$	 165��6?   .+�5�      �� 
�������$��1q�6-   �� 5�      
�������$��1q�6-   $��0,771,1371,-132q�6A    �� CornerRadius$ 8,8,3,3��6Z   ��5�      �� 5�      $ /Images/cat.png��6%   5�      �� 5�      
�������$��1q�6-   $��622,771,557,-132q�6A   $ 8,8,3,3��6[   ��5�      �� 5�      $A ;Images/360_F_470736409_BjMO4XuHintvApcIyuJM7DR65rTfWdXQ.jpg��6!   5�      �� 5�      $��Score:��6   $
��Left=�6%   $��
346,10,0,0q�6@   $	��Top=�6T   $��90��6l   $	��248��6x   
�������$��70(�6�   $��Pixelify Sans)�6�   �� 5�      $��Time:��6   $
��Left=�6$   $��1353,10,0,0q�6?   $	��Top=�6T   $��90��6l   $	��177��6x   
�������$��70(�6�   $��Pixelify Sans)�6�   �� 5�      $
��Left=�6   $	��100��6/   $��420,941,0,0q�6<   $	��Top=�6Q   $	��100��6i   $)��#Images/pixel-heart-2779422_1280.png��6u   �� 5�      $
��Left=�6   $	��100��6/   $��525,941,0,0q�6<   $	��Top=�6Q   $	��100��6i   $)��#Images/pixel-heart-2779422_1280.png��6u   �� 5�      $
��Left=�6   $	��100��6/   $��630,941,0,0q�6<   $	��Top=�6Q   $	��100��6i   $)��#Images/pixel-heart-2779422_1280.png��6u   �� 5�      
�������$��1q�6)   $ 8,8,3,3��6=   $	��114��6T   $
 1266��6a   $	 934��6t   $	��130��6�   $��Center=�6�   $	��Top=�6�   �� 5�      
�������$��1q�6)   $ 8,8,3,3��6=   $	��114��6T   $
 1401��6a   $	 934��6t   $	��129��6�   $��Center=�6�   $	��Top=�6�   �� 5�      
�������$��1q�6)   $ 8,8,3,3��6=   $	��114��6T   $
 1535��6a   $	 934��6t   $	��127��6�   $��Center=�6�   $	��Top=�6�   �� 5�      $
��0000��6   $
��Left=�6#   $��
392,92,0,0q�6>   $	��Top=�6R   $	��116��6j   $��60��6v   
�������$��45(�6�   $��Pixelify Sans)�6�   �� 5�      -   5        $
 Time��5�      $��00:00��6"   $
��Left=�62   $��1374,92,0,0q�6M   $	��Top=�6b   $	��135��6z   $��60��6�   
�������$��45(�6�   $��Pixelify Sans)�6�   �� 5�      -   5        $�� ��5�      $
��Left=�6   $	��Top=�6:   $	��112��6R   $	��121��6_   $��Pixelify Sans)�6k   $
 1789��6�   $ 19��6�   ��5�      �� 5�      $ Images/cross.png��6!   5�      �� 5�      -   5        $�� ��5�      $
��Left=�6   $	��Top=�6:   $	��130��6R   $	��141��6_   $��Pixelify Sans)�6k   $
 1643��6�   $ 10��6�   ��5�      �� 5�      $ /Images/Arrow.png��6!   5�      �� 5�      $��Label��6   $
��Left=�6$   $��630,122,0,0q�6?   $	��Top=�6T   5�      5�      5�      