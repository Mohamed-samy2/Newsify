   M S B A M L   `   `   `  ����B  >Newsify, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:NewsifyNewsify  5          Newsify.News_page   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      'localclr-namespace:Newsify     5        � Title$  Newsify��5      $	��600��6   $
��1200��6*    � WindowStartupLocation$ CenterScreen=�67    � Icon$ Resources\logo3.jpg��6\   ��5
   
   �� 5       �� ImageSource$ Resources/background3.jpg��6   .��5   
   �  � RowDefinitions 5      �� 5      $��80 �6    �� 5      $��60 �6    �� 5      $��* �6     � ColumnDefinitions 5      �� 5      $��* �6#   �� 5      $��* �6#   .+�5      �� -   5        $��logo_nav_pl��5      $��0��6,   $��0��69   .+�5      �� -   5        $��newsify_about_lb��5      $��Newsify��60   $��Garamond)�5      $��35(�5      $
��auto��5      $
��auto��5       $��Center=�5!      $��Center=�5"      $��-350,10,0,10q�5$      $��0��5%      $��0��5&      $
��Bold"�5'       J� Effect 5(      3  -System.Windows.Media.Effects.DropShadowEffect  5)         Opacity$	 0.2Q�6+   5+      �� 5,      -   5        $��stay_informed_about_lb��5,      $��Stay Informed, Stay Ahead��66   $��Garamond)�5-      $��12(�5.      $
��auto��5/      $
��auto��50      $��Center=�51      $��Center=�52      $��-350,-15,0,0q�54      $��0��55      $��0��56      $
��Bold"�57       58        59      $	 0.1Q�6+   5;      �� 5<      
���   �$��1q�6-   $��1��6A   $��50��6K   $��-180,-60,0,0q�6W    J� Opacity$	 0.5Q�6m   �� 5=      
���   �$��1q�6-   $	��150��6A   $	��0.5��6M   $��-350,-42,0,0q�6Z   $	 0.8Q�6p   5?      �� 5@      -   5        $��about_us_pl��5@   =   $��1��6   $��2��6)   $��10,-1,-10,0q�6P   .+�5B      �� -   5        $��news_title_lp��5B      $����Australia news LIVE: Russia-Ukraine war spills into seventh straight day of conflict as more explosions reported in Kyiv; NSW, Queensland floods worsen as Sydney braces for torrential rain��6-   $��Baskerville Old Face)�5C      $��15(�5D      $
��auto��5F      $
��auto��5G      $��Center=�5H      $��0,8,0,0q�5I      $
��Bold"�5J       5K        5L      $	 0.2Q�6+   5N      5P      �� 5Q      $��0��5R      $��2��5S      ._�5V      �� $��2��6   $��0��6*   .+�5W      �� -   5        	 ��Name$	 news_img��5W      $��Resources/news2.jpg��6.   $	��300��6K   $	��550��6X   $��
-30 10 0 0q�6d   $
��Fill=�6x   $��Center=�6�   $��Center=�6�   �� 5X      -   5        $��news_author��5Y      $��NEWS AUTHOR��5Z      $	��160��5[      $��Baskerville Old Face)�5\      $
��Bold"�5]      $
��Left=�5^      $��-400 0 0 0 q�5_      $��Center=�5`      $��15(�5a      5d      �� 5e      -   5        $��author_name��5j      $	��380��5g      $
��Bold"�5h      $��Baskerville Old Face)�5i      $
��Left=�5k      $��Center=�5l      $��zeiad mahomud��5m      $��25(�5n      5o      �� 5p      
���   �$��1q�61   $��1��6E   $	��400��6O   $��570,-375,0,0q�6\   $	 0.8Q�6r   5q      5r      �� 5s      $��1��5t      $��2��5u      ._�5w      �� .+�5x      �� -	   5        $��average_reat_lb��5y      $��70��5z      $��35��5{      $
��Left=�5|      $��Center=�5}      $��-460 10 0 0q�5~      $	��2/5��5      $��Baskerville Old Face)�5�      $��25(�5�      $
��Bold"�5�      5�      �� 5�      -
   5        $	 avr_s��5�      $��20��5�      $��20��5�      $��-565 -35 0 0q�5�      $��Resources/star.png��6/   �� 5�      -   5        $	 first_s��5�      $��20��5�      $��20��5�      $��-300 -35 0 0q�5�      $��Resources/white0.png��5�   *   
 � Cursor$

 Hand��5�      5�   !   �� 5�      -   5        $	 sec_s��5�      $��20��5�      $��20��5�      $��-250 -35 0 0q�5�      $��Resources/white0.png��5�   (   $

 Hand��5�      �� 5�      -   5        $	 third_s��5�      $��20��5�      $��20��5�      $��-200 -35 0 0q�5�      $��Resources/white0.png��5�   *   $

 Hand��5�      �� 5�      -   5        $	 fourth_s��5�      $��20��5�      $��20��5�      $��-150 -35 0 0q�5�      $��Resources/white0.png��5�   +   $

 Hand��5�      �� 5�      -   5        $	 fifth_s��5�      $��20��5�      $��20��5�      $��-100 -35 0 0q�5�      $��Resources/white0.png��5�   *   $

 Hand��5�      �� 5�      $��Hidden=�5�      ��. .��5�      �� -   5        $��new_description_lb��5�      $	��580��5�      $	��100��5�       �� TextWrapping$
 Wrap=�5�      $��18(�5�      $��Medium"�5�      $��Garamond)�5�      ��.  �� 
IsReadOnly . $��0q�5�      " �� VerticalScrollBarVisibility$
 Auto=�5�      ��5�      Z� .��5�      ��5�      �� 5�      .��5�   .   ��Russiaâ€™s invasion of Ukraine is likely to mean that central banks will take longer to tighten the ultra-loose monetary policy they deployed during the coronavirus pandemic, according to the chief executive of Man Group, one of the worldâ€™s biggest hedge fund managers. Luke Ellis, whose firm has $148.6bn in assets and reported record client inflows and a 230 per cent rise in profits for last year, said on Tuesday he was â€œscepticalâ€ of whether markets had really seen the end of â€œeasy moneyâ€, despite strong central bank rhetoric in recent months that interest rates would have to rise to combat inflation. â€œThe Ukraine situation pushes that out,â€ Ellis told the Financial Times. â€œItâ€™s likely that central banks will be less aggressive than they would have been, even though their problem is worse. â€œThis [war in Ukraine] is clearly inflationary,â€ he added. Majority His comments come after central banks have targeted tighter monetary policy to try and control a surge in inflation, which hit a higher than forecast rate of 7.5 per cent in the US in January - a 40-year high. A recent poll of 45 economists by the FT and the Initiative on Global Markets at the University of Chicago Booth School of Business found that a majority expected the federal funds rate to increase from its current near-zero level to a minimum of 1.5 per cent by the end of this year. Ellis also said that Man Groupâ€™s funds had sold out of virtually all of their positions in Russia and Ukraine before Christmas, on fears that rising tensions would lead to capital controls. He said the firm still had what he described as a â€œde minimisâ€ position in Russian equities, which it had not managed to sell but which â€œmakes no differenceâ€. Man on Tuesday reported record net inflows during the year of $13.7 billion (â‚¬12.2 billion), with $7.2 billion of these coming in the fourth quarter alone. Last yearâ€™s flows equal almost the entirety of the $13.9 billion net inflows recorded by the whole of the $3.6tn hedge fund industry for 2021, as measured by data group eVestment. Statutory pre-tax profit jumped from $179mn in 2020 to $590mn last year, helped by a near-quadrupling of performance fee earnings and a rise in management fees. Gains While hedge funds made gains during the pandemic on average, helped by rising markets, it has often been the biggest firms who have prospered most. Manâ€™s rivals Citadel and Millennium, for instance, have posted large gains, helped by their diversification across assets, an ability to raise or cut risk quickly and their ability to hire traders. Man posted strong gains in a number of its funds last year, aided by rising markets and a move by investors into cheaper, so-called value stocks. Its $4.7 billion AHL Evolution fund, which bets on trends in almost 800 niche markets, rose 17 per cent, while its GLG Japan CoreAlpha fund gained 28.2 per cent. Its AHL TargetRisk strategy, which aims to balance risk across equities, government bonds, credit and inflation-linked bonds, gained 14.4 per cent and grew from $11.2 billion to $18.7 billion in assets during the year. Ellis said that after two consecutive quarters of record net inflows at the end of last year, the firm was â€œback to normal nowâ€ but added that clients had not â€œhit the panic buttonâ€ in response to a choppy start to 2022 in markets. Man Groupâ€™s share price was up 1 per cent to 195.05p at around midday on Tuesday. â€“ Copyright The Financial Times Limited 20225�      5�      �� 5�      
���   �$��1q�6-   $	��575��6A   $��1��6M   $��0,10,0,0q�6X   $	 0.8Q�6j   �� 5�      -   5        $��
comment_lp��5�      $��
Comments :��5�      $
��Bold"�5�      $��Garamond)�5�      $��20(�5�      $
��auto��5�      $	��120��5�      $��
-450 0 0 0q�5�      $
��Left=�5�      $��Center=�5�      5�      �� 5�      -   5        $��username1_lp��5�      $��	zeiad1706��5�      $��Garamond)�5�      $��15(�5�      $��30��5�      $	��100��5�      $��
-440 0 0 0q�5�      $
��Left=�5�      $��Center=�5�      5�      �� 5�      
���   �$��1q�61   $	��200��6E   $��1��6Q   $��
-320,0,0,0q�6\   $	 0.8Q�6p   �� 5�      -   5        $��user1_cooment_txtb��5�      $
��Wrap=�5�      $��50��5�      $	��500��5�      $��	-20 0 0 0q�5�      $]��Whhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh��5�      5�      �� 5�      -   5        $��username2_lp��5�      $��	zeiad1706��5�      $��Garamond)�5�      $��15(�5�      $��30��5�      $	��100��5�      $��
-440 0 0 0q�5�      $
��Left=�5�      $��Center=�5�      5�      �� 5�      
���   �$��1q�61   $	��200��6E   $��1��6Q   $��
-320,0,0,0q�6\   $	 0.8Q�6p   �� 5     -   5        $��user2_cooment_txtb��5     $
��Wrap=�5     $��50��5     $	��500��5     $��	-20 0 0 0q�5     $]��Whhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh��5     5     �� 5     -   5        $��comment_txt��5     $��20(�5     $	��500��5     $��30��5     $��Center=�5     $
��Left=�5     $��Garamond)�5     $��
-90,17,0,0q�5     $��0q�5     $��ADD COMMENT...��5     $	 0.7Q�5     ��6,   Z� ��5     Z� �� 5     -   5        $��add_btn��5     $��80��6,   $��30��6M   $��500,-30,0,0q�6Y   $

 Hand��6n   
���   ���5     �� 5     ��5     �� 5       �� 
TargetType" ��6.   .R�5!  "   ��  �� CornerRadius$ 0��6)   #��z��5"     #��z��5#     #��z��5$     ._�5%  &   �� $��Center=�67   $��Center=�6T   5&  #    �� Triggers 5'  "   P� 5(  &    P� Property �@J�IsMouseOver P� Value . . �5*  *   ��  �� Property �@J�Effect �� Value 5+  .     5,  2      ShadowDepth$ 2Q�6C      Color$ Black��6S      	Direction$	 150Q�6a   $ 1Q�6q   5.  +   5/  '   P� 50  &    �@J�IsMouseOver .  . �51  *   ��  �@J�Effect 52  .     53  2   $ 2Q�6C   $ Black��6S   $	 150Q�6a   $	 0.3Q�6q   55  +   56  '   58     .��5:  +   ADD5<     �� 5=     -   5        $��up_btn��5=     $��40��6+   $��30��66   $��550,-300,0,0q�6B   $

 Hand��6X   
���   ���5>     �� 5?     $ Resources/up.png��6)   ��5A     �� 5B     " ��6.   .R�5C  "   �� $ 0��6)   #��z��5D     #��z��5E     #��z��5F     ._�5G  &   �� $��Center=�67   $��Center=�6T   5H  #    5I  "   P� 5J  &    �@J�IsMouseOver . . �5L  *   ��  �@J�Effect 5M  .     5N  2   $ 2Q�6C   $ Black��6S   $	 150Q�6a   $ 1Q�6q   5P  +   5Q  '   P� 5R  &    �@J�IsMouseOver .  . �5S  *   ��  �@J�Effect 5T  .     5U  2   $ 2Q�6C   $ Black��6S   $	 150Q�6a   $	 0.3Q�6q   5W  +   5X  '   5Z     .��5\  +          5^     �� 5_     -   5        $��down_btn��5_     $��40��6-   $��30��68   $��550,-230,0,0q�6D   $

 Hand��6Z   
���   ���5`     �� 5a     $ Resources/down.png��6)   ��5c     �� 5d     " ��6.   .R�5e  "   �� $ 0��6)   #��z��5f     #��z��5g     #��z��5h     ._�5i  &   �� $��Center=�67   $��Center=�6T   5j  #    5k  "   P� 5l  &    �@J�IsMouseOver . . �5n  *   ��  �@J�Effect 5o  .     5p  2   $ 2Q�6C   $ Black��6S   $	 150Q�6a   $ 1Q�6q   5r  +   5s  '   P� 5t  &    �@J�IsMouseOver .  . �5u  *   ��  �@J�Effect 5v  .     5w  2   $ 2Q�6C   $ Black��6S   $	 150Q�6a   $	 0.3Q�6q   5y  +   5z  '   5|     .��5~  +          5�     �� 5�     -   5        $��spam_btn��5�  Q   $��1��6   $��2��6-   $��50��6a   $��20��6l   $
��Spam��6x   $��475,-780,0,0q�6�   $

 Hand��6�   
���   �$��Center=�6�   ��5�     �� 5�     ��5�     �� 5�     " ��6.   .R�5�  "   �� $ 0��6)   #��z��5�     #��z��5�     #��z��5�     ._�5�  &   �� $��Center=�67   $��Center=�6T   5�  #    5�  "   P� 5�  &    �@J�IsMouseOver . . �5�  *   ��  �@J�Effect 5�  .     5�  2   $ 2Q�6C   $ Black��6S   $	 150Q�6a   $	 0.7Q�6q   5�  +   5�  '   P� 5�  &    �@J�IsMouseOver .  . �5�  *   ��  �@J�Effect 5�  .     5�  2   $ 2Q�6C   $ Black��6S   $	 150Q�6a   $	 0.3Q�6q   5�  +   5�  '   5�     5�     5�     5�     �� 5�     -   5        $��home_tb��5�     $��1��5�     $��0��5�     $	��100��5�     $��	350 0 0 0q�5�     $��35��6,   $��30(�5�     $��Garamond)�5�     $
��Bold"�5�     $
��HOME��5�     $

 Hand��5�      5�       5�     $ 4Q�5�     $	 330Q�5�     $ Black��5�     $	 0.4Q�5�        
BlurRadius$ 4Q�5�  
   ��5�     �� 5�      �� 
TargetType" ��6    �� Triggers 5�     P� 5�      �@J�IsMouseOver . . �5�  "   ��  � ��$
 None{�6N   5�     5�     5�     �� 5�     -   5        $��rate_btn��5�  I   $��1��6   $��2��6%   $��50��6Y   $��20��6d   $��Submit��6p   $��
0,-365,0,0q�6�   $

 Hand��6�   
���   �$��Center=�6�   ��5�     �� 5�     ��5�     �� 5�     " ��6&   .R�5�     �� $ 0��6!   #��z��5�     #��z��5�     #��z��5�     ._�5�     �� $��Center=�6/   $��Center=�6L   5�      5�     P� 5�      �@J�IsMouseOver . . �5�  "   ��  �@J�Effect 5�  &     5�  *   $ 2Q�6;   $ Black��6K   $	 150Q�6Y   $	 0.7Q�6i   5�  #   5�     P� 5�      �@J�IsMouseOver .  . �5�  "   ��  �@J�Effect 5�  &     5�  *   $ 2Q�6;   $ Black��6K   $	 150Q�6Y   $	 0.3Q�6i   5�  #   5�     5�     5�     5�     5�     