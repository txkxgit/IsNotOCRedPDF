FasdUAS 1.101.10   ��   ��    k             l     ��  ��    K E#####################################################################     � 	 	 � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   
  
 l     ��  ��      IsOCRedPDF     �      I s O C R e d P D F      l     ��������  ��  ��        l     ��  ��    _ Y Based on dropped files determine if the file is searchable or not. Files not searchable      �   �   B a s e d   o n   d r o p p e d   f i l e s   d e t e r m i n e   i f   t h e   f i l e   i s   s e a r c h a b l e   o r   n o t .   F i l e s   n o t   s e a r c h a b l e        l     ��������  ��  ��        l     ��  ��      2014-12-24     �      2 0 1 4 - 1 2 - 2 4      l     ��   ��      Timo Kahle      � ! !    T i m o   K a h l e   " # " l     ��������  ��  ��   #  $ % $ l     �� & '��   &   Changes    ' � ( (    C h a n g e s %  ) * ) l     ��������  ��  ��   *  + , + l     �� - .��   -   v1.0 (2014-12-24)    . � / / $   v 1 . 0   ( 2 0 1 4 - 1 2 - 2 4 ) ,  0 1 0 l     �� 2 3��   2   o Initial version    3 � 4 4 $   o   I n i t i a l   v e r s i o n 1  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9   v2.0 (2018-11-20)    : � ; ; $   v 2 . 0   ( 2 0 1 8 - 1 1 - 2 0 ) 8  < = < l     �� > ?��   > � � + Added Applet functionality (When run by double-clicking, a Spotlight search identifies all PDFs under the current user's home directory and performs the OCR check)    ? � @ @L   +   A d d e d   A p p l e t   f u n c t i o n a l i t y   ( W h e n   r u n   b y   d o u b l e - c l i c k i n g ,   a   S p o t l i g h t   s e a r c h   i d e n t i f i e s   a l l   P D F s   u n d e r   t h e   c u r r e n t   u s e r ' s   h o m e   d i r e c t o r y   a n d   p e r f o r m s   t h e   O C R   c h e c k ) =  A B A l     �� C D��   C   + Add MinOS check    D � E E $   +   A d d   M i n O S   c h e c k B  F G F l     �� H I��   H F @ + Add check if required brew component "pdftotext" is installed    I � J J �   +   A d d   c h e c k   i f   r e q u i r e d   b r e w   c o m p o n e n t   " p d f t o t e x t "   i s   i n s t a l l e d G  K L K l     �� M N��   M + % + Add check if homebrew is installed    N � O O J   +   A d d   c h e c k   i f   h o m e b r e w   i s   i n s t a l l e d L  P Q P l     �� R S��   R   + Add Notifications    S � T T (   +   A d d   N o t i f i c a t i o n s Q  U V U l     �� W X��   W 9 3 o Improved detection mechanism for non-OCR'ed PDFs    X � Y Y f   o   I m p r o v e d   d e t e c t i o n   m e c h a n i s m   f o r   n o n - O C R ' e d   P D F s V  Z [ Z l     �� \ ]��   \ / ) o Exchange Droplet.icns with Applet.icns    ] � ^ ^ R   o   E x c h a n g e   D r o p l e t . i c n s   w i t h   A p p l e t . i c n s [  _ ` _ l     �� a b��   a    - Removed deprecated code    b � c c 4   -   R e m o v e d   d e p r e c a t e d   c o d e `  d e d l     �� f g��   f       g � h h    e  i j i l     ��������  ��  ��   j  k l k l     ��������  ��  ��   l  m n m l     �� o p��   o   ToDo    p � q q 
   T o D o n  r s r l     �� t u��   t #  o Improve shell script calls    u � v v :   o   I m p r o v e   s h e l l   s c r i p t   c a l l s s  w x w l     �� y z��   y ' ! o Improve overall code stability    z � { { B   o   I m p r o v e   o v e r a l l   c o d e   s t a b i l i t y x  | } | l     �� ~ ��   ~   o Simplify code     � � �     o   S i m p l i f y   c o d e }  � � � l     �� � ���   � > 8 o Remove external script and replace with internal code    � � � � p   o   R e m o v e   e x t e r n a l   s c r i p t   a n d   r e p l a c e   w i t h   i n t e r n a l   c o d e �  � � � l     �� � ���   �   o Rework Droplet code    � � � � ,   o   R e w o r k   D r o p l e t   c o d e �  � � � l     �� � ���   � ' ! + Add HTML Output instead of txt    � � � � B   +   A d d   H T M L   O u t p u t   i n s t e a d   o f   t x t �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � K E#####################################################################    � � � � � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Environment    � � � �    E n v i r o n m e n t �  � � � j     �� ��� 0 app_name APP_NAME � m      � � � � �  I s O C R e d P D F �  � � � j    �� ��� 0 app_version APP_VERSION � m     � � � � �  2 . 0 �  � � � j    �� ��� 0 app_icon APP_ICON � m     � � � � �  a p p l e t . i c n s �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  	 Commands    � � � �    C o m m a n d s �  � � � j   	 �� ��� (0 file_search_script FILE_SEARCH_SCRIPT � m   	 
 � � � � � $ I s P D F S e a r c h a b l e . s h �  � � � j    �� ��� 00 cmd_spotlight_find_pdf CMD_SPOTLIGHT_FIND_PDF � m     � � � � � ^ / b i n / b a s h   - l   - c   ' m d f i n d   k i n d : p d f   - o n l y i n   $ H O M E ' �  � � � j    �� ��� 20 cmd_issearchable_prefix CMD_ISSEARCHABLE_PREFIX � m     � � � � � 0 / u s r / l o c a l / b i n / p d f t o t e x t �  � � � j    �� ��� 40 cmd_issearchable_postfix CMD_ISSEARCHABLE_POSTFIX � m     � � � � �  -   |   g r e p   - q E   \ S �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Other    � � � �    O t h e r �  � � � j    �� ��� 00 url_summary_file_ocred URL_SUMMARY_FILE_OCRED � m     � � � � � 2 $ H O M E / D o w n l o a d s / O C R e d . c s v �  � � � j    �� ��� 60 url_summary_file_notocred URL_SUMMARY_FILE_NOTOCRED � m     � � � � � 8 $ H O M E / D o w n l o a d s / N o t O C R e d . c s v �  � � � j    !�� ��� 0 
helper_app 
HELPER_APP � m      � � � � � < S c r i p t s / h o m e b r e w - S e t u p . c o m m a n d �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Required components    � � � � (   R e q u i r e d   c o m p o n e n t s �  � � � j   " +�� ��� *0 components_required COMPONENTS_REQUIRED � J   " * � �  � � � m   " % � � � � �  b r e w �  ��� � m   % ( � � � � �  p d f t o t e x t��   �  � � � j   , 0�� ��� &0 macos_version_min MACOS_VERSION_MIN � m   , / � � � � � 
 1 0 . 1 3 �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 	  UI    � � � �    U I �    j   1 A���� 40 ui_txt_info_notsupported UI_TXT_INFO_NOTSUPPORTED b   1 @ b   1 < b   1 : b   1 6	
	 m   1 4 �  '
 o   4 5���� 0 app_name APP_NAME m   6 9 � � '   i s   n o t   s u p p o r t e d   o n   y o u r   v e r s i o n   o f   m a c O S   a n d   c a n n o t   b e   r u n .   P l e a s e   u p d a t e   y o u r   m a c O S   v e r s i o n   t o   u s e   ' o   : ;���� 0 app_name APP_NAME m   < ? �  ' .  j   B F���� "0 ui_icon_warning UI_ICON_WARNING m   B E �   &��    j   G K���� 0 ui_icon_error UI_ICON_ERROR m   G J �   �=ޫ    j   L P���� 0 ui_icon_info UI_ICON_INFO m   L O �   $�    !  j   Q W��"�� &0 ui_title_subtitle UI_TITLE_SUBTITLE" m   Q T## �$$ P S u m m a r y   c r e a t e d   i n   y o u r   D o w n l o a d s   f o l d e r! %&% j   X ^��'�� ,0 ui_summary_no_errors UI_SUMMARY_NO_ERRORS' m   X [(( �)) 8 F i n i s h e d   c h e c k i n g   d o c u m e n t s .& *+* j   _ e��,�� $0 ui_title_summary UI_TITLE_SUMMARY, m   _ b-- �.. & O C R e d   P D F   d o c u m e n t s+ /0/ l     ��������  ��  ��  0 121 l     ��34��  3   Button texts   4 �55    B u t t o n   t e x t s2 676 j   f l��8�� 0 btn_ok BTN_OK8 m   f i99 �::  O K7 ;<; j   m s��=�� 0 btn_continue BTN_CONTINUE= m   m p>> �??  C o n t i n u e< @A@ j   t z��B�� 0 btn_quit BTN_QUITB m   t wCC �DD  Q u i tA EFE j   { ���G�� 0 btn_open BTN_OPENG m   { ~HH �II  O p e nF JKJ j   � ���L�� 0 
btn_cancel 
BTN_CANCELL m   � �MM �NN  C a n c e lK OPO l     ��������  ��  ��  P QRQ l     ��������  ��  ��  R STS l     ��������  ��  ��  T UVU l     ��WX��  W   Droplet   X �YY    D r o p l e tV Z[Z i   � �\]\ I     ��^��
�� .aevtodocnull  �    alis^ o      ���� 0 selecteditems selectedItems��  ] k     �__ `a` l     ��bc��  b $  Define icon resources & title   c �dd <   D e f i n e   i c o n   r e s o u r c e s   &   t i t l ea efe l     ��gh��  g 0 *set dlgIcon to (path to resource APP_ICON)   h �ii T s e t   d l g I c o n   t o   ( p a t h   t o   r e s o u r c e   A P P _ I C O N )f jkj l     ��lm��  l 9 3set dlgTitle to APP_NAME & " (" & APP_VERSION & ")"   m �nn f s e t   d l g T i t l e   t o   A P P _ N A M E   &   "   ( "   &   A P P _ V E R S I O N   &   " ) "k opo l     ��������  ��  ��  p qrq l     ��st��  s ? 9 Path to the script that does the PDF determination magic   t �uu r   P a t h   t o   t h e   s c r i p t   t h a t   d o e s   t h e   P D F   d e t e r m i n a t i o n   m a g i cr vwv r     xyx n     z{z 1    �
� 
strq{ l    |�~�}| c     }~} n     � 1   	 �|
�| 
psxp� l    	��{�z� I    	�y��x
�y .sysorpthalis        TEXT� o     �w�w (0 file_search_script FILE_SEARCH_SCRIPT�x  �{  �z  ~ m    �v
�v 
TEXT�~  �}  y o      �u�u 0 searchscript searchScriptw ��� r    ��� m    �� ���  � o      �t�t 0 thesum theSum� ��� r    ��� m    �s�s  � o      �r�r 0 cnt  � ��� l   �q�p�o�q  �p  �o  � ��� X    }��n�� k   * x�� ��� r   * /��� [   * -��� o   * +�m�m 0 cnt  � m   + ,�l�l � o      �k�k 0 cnt  � ��� r   0 3��� m   0 1�� ���  � o      �j�j 0 	theresult 	theResult� ��� r   4 7��� m   4 5�� ���  � o      �i�i 0 thefile theFile� ��� l  8 8�h�g�f�h  �g  �f  � ��� r   8 A��� c   8 ?��� n   8 =��� 1   ; =�e
�e 
strq� l  8 ;��d�c� n   8 ;��� 1   9 ;�b
�b 
psxp� o   8 9�a�a 0 i  �d  �c  � m   = >�`
�` 
ctxt� o      �_�_ 0 thefile theFile� ��� l  B B�^�]�\�^  �]  �\  � ��� l  B B�[���[  � 6 0 Check PDF filetype based on the files extension   � ��� `   C h e c k   P D F   f i l e t y p e   b a s e d   o n   t h e   f i l e s   e x t e n s i o n� ��� r   B G��� c   B E��� o   B C�Z�Z 0 i  � m   C D�Y
�Y 
alis� o      �X�X 0 thefilecheck theFileCheck� ��� r   H P��� I   H N�W��V�W 0 	ispdffile 	IsPDFFile� ��U� o   I J�T�T 0 thefilecheck theFileCheck�U  �V  � o      �S�S 0 	fileispdf 	fileIsPDF� ��� Z   Q v���R�Q� =  Q T��� o   Q R�P�P 0 	fileispdf 	fileIsPDF� m   R S�O
�O boovtrue� k   W r�� ��� l  W W�N�M�L�N  �M  �L  � ��� l  W W�K���K  � &   Call the PDF OCR check function   � ��� @   C a l l   t h e   P D F   O C R   c h e c k   f u n c t i o n� ��� r   W `��� I   W ^�J��I�J (0 execembeddedscript ExecEmbeddedScript� ��� o   X Y�H�H 0 searchscript searchScript� ��G� o   Y Z�F�F 0 thefile theFile�G  �I  � o      �E�E 0 	theresult 	theResult� ��� l  a a�D�C�B�D  �C  �B  � ��A� Z   a r���@�?� =  a d��� o   a b�>�> 0 	theresult 	theResult� m   b c�=
�= boovfals� k   g n�� ��� l  g g�<���<  � � �display dialog "cnt: " & cnt & return & return & theResult & return & return & theFile & " : NOT searchable" with title appDetails buttons {"OK"} default button {"OK"} #with icon dlgIcon   � ���t d i s p l a y   d i a l o g   " c n t :   "   &   c n t   &   r e t u r n   &   r e t u r n   &   t h e R e s u l t   &   r e t u r n   &   r e t u r n   &   t h e F i l e   &   "   :   N O T   s e a r c h a b l e "   w i t h   t i t l e   a p p D e t a i l s   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   { " O K " }   # w i t h   i c o n   d l g I c o n� ��;� r   g n��� b   g l��� b   g j��� o   g h�:�: 0 thesum theSum� o   h i�9�9 0 thefile theFile� o   j k�8
�8 
ret � o      �7�7 0 thesum theSum�;  �@  �?  �A  �R  �Q  � ��6� l  w w�5�4�3�5  �4  �3  �6  �n 0 i  � o    �2�2 0 selecteditems selectedItems� ��� l  ~ ~�1�0�/�1  �0  �/  � ��� l  ~ ~�.���.  � � �display dialog "Finished checking PDFs. A summary txt file will be created on your Desktop when you select 'OK'." & return & return & theSum buttons {"OK"} default button {"OK"}   � ���b d i s p l a y   d i a l o g   " F i n i s h e d   c h e c k i n g   P D F s .   A   s u m m a r y   t x t   f i l e   w i l l   b e   c r e a t e d   o n   y o u r   D e s k t o p   w h e n   y o u   s e l e c t   ' O K ' . "   &   r e t u r n   &   r e t u r n   &   t h e S u m   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   { " O K " }� ��� I  ~ ��-��,
�- .sysoexecTEXT���     TEXT� b   ~ ���� b   ~ ���� m   ~ �� �   
 e c h o  � o    ��+�+ 0 thesum theSum� m   � � � <   > >   $ H O M E / D e s k t o p / n o n O C R e d . t x t�,  �  l  � ��*�)�(�*  �)  �(   �' I  � ��&
�& .sysonotfnull��� ��� TEXT o   � ��%�% ,0 ui_summary_no_errors UI_SUMMARY_NO_ERRORS �$	
�$ 
appr b   � �

 o   � ��#�# $0 ui_title_summary UI_TITLE_SUMMARY o   � ��"�" 0 ui_icon_info UI_ICON_INFO	 �!� 
�! 
subt o   � ��� &0 ui_title_subtitle UI_TITLE_SUBTITLE�   �'  [  l     ����  �  �    l     ����  �  �    l     ��     Applet    �    A p p l e t  i   � � I     ���
� .aevtoappnull  �   � ****�  �   k    s  l     ��   $  Define icon resources & title    � <   D e f i n e   i c o n   r e s o u r c e s   &   t i t l e  !  l     �"#�  " 0 *set dlgIcon to (path to resource APP_ICON)   # �$$ T s e t   d l g I c o n   t o   ( p a t h   t o   r e s o u r c e   A P P _ I C O N )! %&% l     �'(�  ' 9 3set dlgTitle to APP_NAME & " (" & APP_VERSION & ")"   ( �)) f s e t   d l g T i t l e   t o   A P P _ N A M E   &   "   ( "   &   A P P _ V E R S I O N   &   " ) "& *+* l     ����  �  �  + ,-, l     ����  �  �  - ./. l     �01�  0 , & Check macOS Version for compatibility   1 �22 L   C h e c k   m a c O S   V e r s i o n   f o r   c o m p a t i b i l i t y/ 343 l     �
56�
  5   ===================   6 �77 (   = = = = = = = = = = = = = = = = = = =4 898 Z     B:;�	�: =    <=< I     
�>�� (0 osversionsupported OSVersionSupported> ?�? o    �� &0 macos_version_min MACOS_VERSION_MIN�  �  = m   
 �
� boovfals; I   >�@A
� .sysodlogaskr        TEXT@ o    �� 40 ui_txt_info_notsupported UI_TXT_INFO_NOTSUPPORTEDA � BC
�  
apprB b     DED o    ���� 0 app_name APP_NAMEE o    ���� "0 ui_icon_warning UI_ICON_WARNINGC ��FG
�� 
btnsF J   ! (HH I��I o   ! &���� 0 btn_ok BTN_OK��  G ��JK
�� 
cbtnJ J   ) 0LL M��M o   ) .���� 0 btn_ok BTN_OK��  K ��NO
�� 
dfltN J   1 8PP Q��Q o   1 6���� 0 btn_ok BTN_OK��  O ��R��
�� 
dispR m   9 :��
�� stic   ��  �	  �  9 STS l  C C��������  ��  ��  T UVU l  C C��������  ��  ��  V WXW l  C C��YZ��  Y   ===================   Z �[[ (   = = = = = = = = = = = = = = = = = = =X \]\ l  C C��^_��  ^ = 7 Run check for installed dependencies (brew, pdftotext)   _ �`` n   R u n   c h e c k   f o r   i n s t a l l e d   d e p e n d e n c i e s   ( b r e w ,   p d f t o t e x t )] aba l  C C��cd��  c   ===================   d �ee (   = = = = = = = = = = = = = = = = = = =b fgf r   C Fhih m   C D��
�� boovtruei o      ���� >0 isrequiredcomponentsinstalled isRequiredComponentsInstalledg jkj r   G Jlml m   G Hnn �oo  m o      ���� (0 amissingcomponents aMissingComponentsk pqp l  K K��������  ��  ��  q rsr X   K �t��ut k   _ �vv wxw r   _ iyzy I   _ e��{���� 20 isinstalledclicomponent IsInstalledCLIComponent{ |��| o   ` a���� 0 
acomponent 
aComponent��  ��  z o      ����  0 isinstalledcmd isInstalledCMDx }��} Z   j �~����~ =  j o��� o   j m����  0 isinstalledcmd isInstalledCMD� m   m n��
�� boovfals k   r �� ��� r   r u��� m   r s��
�� boovfals� o      ���� >0 isrequiredcomponentsinstalled isRequiredComponentsInstalled� ���� r   v ��� l  v }������ b   v }��� b   v y��� o   v w���� (0 amissingcomponents aMissingComponents� o   w x���� 0 
acomponent 
aComponent� o   y |��
�� 
ret ��  ��  � o      ���� (0 amissingcomponents aMissingComponents��  ��  ��  ��  �� 0 
acomponent 
aComponentu o   N S���� *0 components_required COMPONENTS_REQUIREDs ��� l  � ���������  ��  ��  � ��� l  � �������  � @ : Check if the user wants to install the missing components   � ��� t   C h e c k   i f   t h e   u s e r   w a n t s   t o   i n s t a l l   t h e   m i s s i n g   c o m p o n e n t s� ��� Z   �(������� =  � ���� o   � ����� >0 isrequiredcomponentsinstalled isRequiredComponentsInstalled� m   � ���
�� boovfals� k   �$�� ��� r   � ���� l  � ������� I  � �����
�� .sysodlogaskr        TEXT� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� o   � ����� 40 ui_txt_info_notinstalled UI_TXT_INFO_NOTINSTALLED� o   � ���
�� 
ret � o   � ���
�� 
ret � o   � ����� :0 ui_txt_missing_dependencies UI_TXT_MISSING_DEPENDENCIES� o   � ���
�� 
ret � o   � ����� (0 amissingcomponents aMissingComponents� o   � ���
�� 
ret � o   � ���
�� 
ret � o   � ����� 00 ui_txt_cancel_continue UI_TXT_CANCEL_CONTINUE� ����
�� 
appr� b   � ���� o   � ����� 0 app_name APP_NAME� o   � ����� 0 ui_icon_error UI_ICON_ERROR� ����
�� 
btns� J   � ��� ��� o   � ����� 0 
btn_cancel 
BTN_CANCEL� ���� o   � ����� 0 btn_continue BTN_CONTINUE��  � ����
�� 
dflt� J   � ��� ���� o   � ����� 0 btn_continue BTN_CONTINUE��  � ����
�� 
cbtn� J   � ��� ���� o   � ����� 0 
btn_cancel 
BTN_CANCEL��  � �����
�� 
disp� o   � ����� 0 dlgicon_info dlgIcon_Info��  ��  ��  � o      ���� 00 thedependencyinstaller theDependencyInstaller� ��� r   � ���� n   � ���� 1   � ���
�� 
bhit� l  � ������� o   � ����� 00 thedependencyinstaller theDependencyInstaller��  ��  � o      ���� 0 theuserreply theUserReply� ��� l  � ���������  ��  ��  � ��� Z   �"������� =  � ���� o   � ����� 0 theuserreply theUserReply� o   � ����� 0 btn_continue BTN_CONTINUE� k   ��� ��� l  � �������  � > 8 Run embedded script to install the required dependecies   � ��� p   R u n   e m b e d d e d   s c r i p t   t o   i n s t a l l   t h e   r e q u i r e d   d e p e n d e c i e s� ��� r   ���� n   ���� 1  ��
�� 
psxp� l  ������� I  ������
�� .sysorpthalis        TEXT� o   ����� 0 
helper_app 
HELPER_APP��  ��  ��  � o      ���� 0 cmdsetup cmdSetup� ���� O ��� I �����
�� .aevtodocnull  �    alis� o  ���� 0 cmdsetup cmdSetup��  � m  ���                                                                                      @ alis    <  Macintosh HD                   BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   &/:Applications:Utilities:Terminal.app/    T e r m i n a l . a p p    M a c i n t o s h   H D  #Applications/Utilities/Terminal.app   / ��  ��  ��  ��  � ���� l ##��������  ��  ��  ��  ��  ��  � ��� l ))��������  ��  ��  � ��� l ))��������  ��  ��  � ��� l ))������  � @ : Run mdfind query to get all PDFs in the User's (~) folder   � ��� t   R u n   m d f i n d   q u e r y   t o   g e t   a l l   P D F s   i n   t h e   U s e r ' s   ( ~ )   f o l d e r� ��� l ))������  � N H ToDo: We will later allow the user to choose which folder to start from   � ��� �   T o D o :   W e   w i l l   l a t e r   a l l o w   t h e   u s e r   t o   c h o o s e   w h i c h   f o l d e r   t o   s t a r t   f r o m� ��� l ))��������  ��  ��  � ��� l ))������  � ? 9 Path to the script that does the PDF determination magic   � ��� r   P a t h   t o   t h e   s c r i p t   t h a t   d o e s   t h e   P D F   d e t e r m i n a t i o n   m a g i c� � � r  ). m  )*����   o      �� 0 cntsearchable cntSearchable   r  /4 m  /0�~�~   o      �}�} "0 cntunsearchable cntUnSearchable  l 55�|�{�z�|  �{  �z   	
	 r  5G l 5C�y�x n  5C 2 ?C�w
�w 
cpar I  5?�v�u�v 0 execcommand ExecCommand �t o  6;�s�s 00 cmd_spotlight_find_pdf CMD_SPOTLIGHT_FIND_PDF�t  �u  �y  �x   o      �r�r 0 selecteditems selectedItems
  l HH�q�p�o�q  �p  �o    X  HC�n k  Z>  r  Za m  Z] �   o      �m�m 0 	theresult 	theResult   r  bi!"! m  be## �$$  " o      �l�l 0 thefile theFile  %&% l jj�k�j�i�k  �j  �i  & '(' r  j{)*) c  jw+,+ n  js-.- 1  os�h
�h 
strq. l jo/�g�f/ n  jo010 1  ko�e
�e 
psxp1 o  jk�d�d 0 i  �g  �f  , m  sv�c
�c 
ctxt* o      �b�b 0 thefile theFile( 232 l ||�a�`�_�a  �`  �_  3 454 l ||�^67�^  6 &   Call the PDF OCR check function   7 �88 @   C a l l   t h e   P D F   O C R   c h e c k   f u n c t i o n5 9:9 r  |�;<; I  |��]=�\�] 0 execcommand ExecCommand= >�[> b  }�?@? b  }�ABA b  }�CDC b  }�EFE o  }��Z�Z 20 cmd_issearchable_prefix CMD_ISSEARCHABLE_PREFIXF m  ��GG �HH   D o  ���Y�Y 0 thefile theFileB m  ��II �JJ   @ o  ���X�X 40 cmd_issearchable_postfix CMD_ISSEARCHABLE_POSTFIX�[  �\  < o      �W�W 0 	theresult 	theResult: KLK l ���V�U�T�V  �U  �T  L MNM l ���SOP�S  O   Searchable   P �QQ    S e a r c h a b l eN R�RR Z  �>ST�QUS = ��VWV o  ���P�P 0 	theresult 	theResultW m  ��XX �YY  T k  ��ZZ [\[ r  ��]^] [  ��_`_ o  ���O�O 0 cntsearchable cntSearchable` m  ���N�N ^ o      �M�M 0 cntsearchable cntSearchable\ aba l ���Lcd�L  c N Hdo shell script "echo " & theFile & "::" & " >> $HOME/Desktop/OCRed.csv"   d �ee � d o   s h e l l   s c r i p t   " e c h o   "   &   t h e F i l e   &   " : : "   &   "   > >   $ H O M E / D e s k t o p / O C R e d . c s v "b f�Kf I ���Jg�I
�J .sysoexecTEXT���     TEXTg b  ��hih b  ��jkj b  ��lml b  ��non m  ��pp �qq 
 e c h o  o o  ���H�H 0 thefile theFilem m  ��rr �ss  : :k m  ��tt �uu    > >  i o  ���G�G 00 url_summary_file_ocred URL_SUMMARY_FILE_OCRED�I  �K  �Q  U l �>vwxv k  �>yy z{z l ���F|}�F  | C = Special error (e.g. Strato invoices), still valid searchable   } �~~ z   S p e c i a l   e r r o r   ( e . g .   S t r a t o   i n v o i c e s ) ,   s t i l l   v a l i d   s e a r c h a b l e{ �E Z  �>���D�� G  ����� E  ����� o  ���C�C 0 	theresult 	theResult� m  ���� ���   P e r m i s s i o n   E r r o r� E  ����� o  ���B�B 0 	theresult 	theResult� m  ���� ��� 8 U n k n o w n   c h a r a c t e r   c o l l e c t i o n� k  ��� ��� r  ����� [  ����� o  ���A�A 0 cntsearchable cntSearchable� m  ���@�@ � o      �?�? 0 cntsearchable cntSearchable� ��� l ���>���>  � _ Ydo shell script "echo " & theFile & ":" & theResult & ":" & " >> $HOME/Desktop/OCRed.csv"   � ��� � d o   s h e l l   s c r i p t   " e c h o   "   &   t h e F i l e   &   " : "   &   t h e R e s u l t   &   " : "   &   "   > >   $ H O M E / D e s k t o p / O C R e d . c s v "� ��=� I ��<��;
�< .sysoexecTEXT���     TEXT� b  ���� b  ���� b  ���� b  ����� b  ����� b  ����� m  ���� ��� 
 e c h o  � o  ���:�: 0 thefile theFile� m  ���� ���  :� o  ���9�9 0 	theresult 	theResult� m  ��� ���  :� m  �� ���    > >  � o  �8�8 00 url_summary_file_ocred URL_SUMMARY_FILE_OCRED�;  �=  �D  � k  >�� ��� l �7���7  �   Not searchable   � ���    N o t   s e a r c h a b l e� ��� r  ��� [  ��� o  �6�6 "0 cntunsearchable cntUnSearchable� m  �5�5 � o      �4�4 "0 cntunsearchable cntUnSearchable� ��� l �3���3  � b \do shell script "echo " & theFile & ":" & theResult & ":" & " >> $HOME/Desktop/NotOCRed.csv"   � ��� � d o   s h e l l   s c r i p t   " e c h o   "   &   t h e F i l e   &   " : "   &   t h e R e s u l t   &   " : "   &   "   > >   $ H O M E / D e s k t o p / N o t O C R e d . c s v "� ��2� I >�1��0
�1 .sysoexecTEXT���     TEXT� b  :��� b  4��� b  0��� b  ,��� b  (��� b  $��� m   �� ��� 
 e c h o  � o   #�/�/ 0 thefile theFile� m  $'�� ���  :� o  (+�.�. 0 	theresult 	theResult� m  ,/�� ���  :� m  03�� ���    > >  � o  49�-�- 60 url_summary_file_notocred URL_SUMMARY_FILE_NOTOCRED�0  �2  �E  w   Handle special cases   x ��� *   H a n d l e   s p e c i a l   c a s e s�R  �n 0 i   o  KN�,�, 0 selecteditems selectedItems ��� l DD�+�*�)�+  �*  �)  � ��� l DD�(���(  � L F Display the # of searchable and unsearchable documents in the summary   � ��� �   D i s p l a y   t h e   #   o f   s e a r c h a b l e   a n d   u n s e a r c h a b l e   d o c u m e n t s   i n   t h e   s u m m a r y� ��� l DD�'�&�%�'  �&  �%  � ��$� I Ds�#��
�# .sysonotfnull��� ��� TEXT� b  DY��� b  DU��� b  DQ��� b  DM��� o  DI�"�" ,0 ui_summary_no_errors UI_SUMMARY_NO_ERRORS� m  IL�� ���  O C R ' e d :  � o  MP�!�! 0 cntsearchable cntSearchable� m  QT�� ���    /   n o n - O C R ' e d :  � o  UX� �  "0 cntunsearchable cntUnSearchable� ���
� 
appr� b  Ze��� o  Z_�� $0 ui_title_summary UI_TITLE_SUMMARY� o  _d�� 0 ui_icon_info UI_ICON_INFO� ���
� 
subt� o  hm�� &0 ui_title_subtitle UI_TITLE_SUBTITLE�  �$   ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  � ~ x########################################################################################################################   � ��� � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #� � � l     ��   ~ x########################################################################################################################    � � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   l     ����  �  �    l     �	�   - ' Run a command without admin privileges   	 �

 N   R u n   a   c o m m a n d   w i t h o u t   a d m i n   p r i v i l e g e s  i   � � I      �
�	�
 0 execcommand ExecCommand � o      �� 0 
thisaction 
thisAction�  �	   k       Q      r    
 I   ��
� .sysoexecTEXT���     TEXT l   �� o    �� 0 
thisaction 
thisAction�  �  �   o      �� 0 returnvalue returnValue R      � ��
�  .ascrerr ****      � **** o      ���� 0 errmsg errMsg��   r     b     m       �!!  E r r o r :   o    ���� 0 errmsg errMsg o      ���� 0 returnvalue returnValue "#" l   ��������  ��  ��  # $��$ L    %% o    ���� 0 returnvalue returnValue��   &'& l     ��������  ��  ��  ' ()( l     ��������  ��  ��  ) *+* l     ��,-��  ,   Valid macOS version   - �.. (   V a l i d   m a c O S   v e r s i o n+ /0/ i   � �121 I      ��3���� (0 osversionsupported OSVersionSupported3 4��4 o      ���� 00 minsupportedosxversion minSupportedOSXVersion��  ��  2 k     55 676 r     	898 n     :;: 1    ��
�� 
sisv; l    <����< I    ������
�� .sysosigtsirr   ��� null��  ��  ��  ��  9 o      ���� 0 strosxversion strOSXVersion7 =>= P   
 ?@��? r    ABA @   CDC o    ���� 0 strosxversion strOSXVersionD o    ���� 00 minsupportedosxversion minSupportedOSXVersionB o      ���� .0 issupportedosxversion IsSupportedOSXVersion@ ����
�� consnume��  ��  > EFE l   ��������  ��  ��  F G��G L    HH o    ���� .0 issupportedosxversion IsSupportedOSXVersion��  0 IJI l     ��������  ��  ��  J KLK l     ��������  ��  ��  L MNM l     ��OP��  O * $ Check if a CLI command is installed   P �QQ H   C h e c k   i f   a   C L I   c o m m a n d   i s   i n s t a l l e dN RSR i   � �TUT I      ��V���� 20 isinstalledclicomponent IsInstalledCLIComponentV W��W o      ���� 0 acommand aCommand��  ��  U k     XX YZY r     [\[ o     ���� 0 acommand aCommand\ o      ���� 0 mycmd myCMDZ ]^] Q    _`a_ r    bcb l   d����d I   ��e��
�� .sysoexecTEXT���     TEXTe b    
fgf m    hh �ii 0 / b i n / b a s h   - l   - c   ' w h i c h   'g o    	���� 0 mycmd myCMD��  ��  ��  c o      ���� 0 isinstalled isInstalled` R      ��j��
�� .ascrerr ****      � ****j o      ���� 0 theerror theError��  a k    kk lml l   ��no��  n B <display alert "The command '" & myCMD & "' is not installed"   o �pp x d i s p l a y   a l e r t   " T h e   c o m m a n d   ' "   &   m y C M D   &   " '   i s   n o t   i n s t a l l e d "m q��q L    rr m    ��
�� boovfals��  ^ sts l   ��������  ��  ��  t uvu l   ��wx��  w \ Vdisplay alert "The command " & myCMD & " is installed" & return & return & isInstalled   x �yy � d i s p l a y   a l e r t   " T h e   c o m m a n d   "   &   m y C M D   &   "   i s   i n s t a l l e d "   &   r e t u r n   &   r e t u r n   &   i s I n s t a l l e dv z��z L    {{ m    ��
�� boovtrue��  S |}| l     ��������  ��  ��  } ~~ l     ��������  ��  ��   ��� l     ������  � - ' Run a command without admin privileges   � ��� N   R u n   a   c o m m a n d   w i t h o u t   a d m i n   p r i v i l e g e s� ��� i   � ���� I      ������� (0 execembeddedscript ExecEmbeddedScript� ��� o      ���� 0 thecmd theCMD� ���� o      ���� 0 thefile theFile��  ��  � k     �� ��� r     ��� I    	�����
�� .sysoexecTEXT���     TEXT� l    ������ b     ��� b     ��� o     ���� 0 thecmd theCMD� m    �� ���   � o    ���� 0 thefile theFile��  ��  ��  � o      ���� 0 returnvalue returnValue� ���� Z    ������ E    ��� o    ���� 0 returnvalue returnValue� m    �� ��� 
 f a l s e� L    �� m    ��
�� boovfals��  � L    �� m    ��
�� boovtrue��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � &   Check if file has extension PDF   � ��� @   C h e c k   i f   f i l e   h a s   e x t e n s i o n   P D F� ���� i   � ���� I      ������� 0 	ispdffile 	IsPDFFile� ���� o      ���� 0 afile aFile��  ��  � k     �� ��� O     
��� r    	��� l   ������ n    ��� 1    ��
�� 
nmxt� o    ���� 0 afile aFile��  ��  � o      ���� 0 theextension theExtension� m     ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ���� Z    ������ E    ��� o    ���� 0 theextension theExtension� m    �� ���  p d f� L    �� m    ��
�� boovtrue��  � L    �� m    ��
�� boovfals��  ��       !��� � � � � � � � � � �� ��#(-9>CHM���������  � ��������������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�� 0 app_name APP_NAME�� 0 app_version APP_VERSION�� 0 app_icon APP_ICON�� (0 file_search_script FILE_SEARCH_SCRIPT�� 00 cmd_spotlight_find_pdf CMD_SPOTLIGHT_FIND_PDF�� 20 cmd_issearchable_prefix CMD_ISSEARCHABLE_PREFIX�� 40 cmd_issearchable_postfix CMD_ISSEARCHABLE_POSTFIX�� 00 url_summary_file_ocred URL_SUMMARY_FILE_OCRED�� 60 url_summary_file_notocred URL_SUMMARY_FILE_NOTOCRED�� 0 
helper_app 
HELPER_APP�� *0 components_required COMPONENTS_REQUIRED�� &0 macos_version_min MACOS_VERSION_MIN� 40 ui_txt_info_notsupported UI_TXT_INFO_NOTSUPPORTED�~ "0 ui_icon_warning UI_ICON_WARNING�} 0 ui_icon_error UI_ICON_ERROR�| 0 ui_icon_info UI_ICON_INFO�{ &0 ui_title_subtitle UI_TITLE_SUBTITLE�z ,0 ui_summary_no_errors UI_SUMMARY_NO_ERRORS�y $0 ui_title_summary UI_TITLE_SUMMARY�x 0 btn_ok BTN_OK�w 0 btn_continue BTN_CONTINUE�v 0 btn_quit BTN_QUIT�u 0 btn_open BTN_OPEN�t 0 
btn_cancel 
BTN_CANCEL
�s .aevtodocnull  �    alis
�r .aevtoappnull  �   � ****�q 0 execcommand ExecCommand�p (0 osversionsupported OSVersionSupported�o 20 isinstalledclicomponent IsInstalledCLIComponent�n (0 execembeddedscript ExecEmbeddedScript�m 0 	ispdffile 	IsPDFFile� �l��l �   � �� ��� � ' I s O C R e d P D F '   i s   n o t   s u p p o r t e d   o n   y o u r   v e r s i o n   o f   m a c O S   a n d   c a n n o t   b e   r u n .   P l e a s e   u p d a t e   y o u r   m a c O S   v e r s i o n   t o   u s e   ' I s O C R e d P D F ' .� �k]�j�i���h
�k .aevtodocnull  �    alis�j 0 selecteditems selectedItems�i  � 	�g�f�e�d�c�b�a�`�_�g 0 selecteditems selectedItems�f 0 searchscript searchScript�e 0 thesum theSum�d 0 cnt  �c 0 i  �b 0 	theresult 	theResult�a 0 thefile theFile�` 0 thefilecheck theFileCheck�_ 0 	fileispdf 	fileIsPDF� �^�]�\�[��Z�Y�X���W�V�U�T�S��R�Q�P�O�N
�^ .sysorpthalis        TEXT
�] 
psxp
�\ 
TEXT
�[ 
strq
�Z 
kocl
�Y 
cobj
�X .corecnte****       ****
�W 
ctxt
�V 
alis�U 0 	ispdffile 	IsPDFFile�T (0 execembeddedscript ExecEmbeddedScript
�S 
ret 
�R .sysoexecTEXT���     TEXT
�Q 
appr
�P 
subt�O 
�N .sysonotfnull��� ��� TEXT�h �b  j  �,�&�,E�O�E�OjE�O b�[��l kh �kE�O�E�O�E�O��,�,�&E�O��&E�O*�k+ E�O�e   *��l+ E�O�f  ��%�%E�Y hY hOP[OY��O�%a %j Ob  a b  b  %a b  a  � �M�L�K���J
�M .aevtoappnull  �   � ****�L  �K  � �I�H�I 0 
acomponent 
aComponent�H 0 i  � @�G�F�E�D�C�B�A�@�?�>n�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-��,�+�*�)�(�'�&#�%�$�#GIXprt�"���!����������� ���G (0 osversionsupported OSVersionSupported
�F 
appr
�E 
btns
�D 
cbtn
�C 
dflt
�B 
disp
�A stic   �@ 

�? .sysodlogaskr        TEXT�> >0 isrequiredcomponentsinstalled isRequiredComponentsInstalled�= (0 amissingcomponents aMissingComponents
�< 
kocl
�; 
cobj
�: .corecnte****       ****�9 20 isinstalledclicomponent IsInstalledCLIComponent�8  0 isinstalledcmd isInstalledCMD
�7 
ret �6 40 ui_txt_info_notinstalled UI_TXT_INFO_NOTINSTALLED�5 :0 ui_txt_missing_dependencies UI_TXT_MISSING_DEPENDENCIES�4 00 ui_txt_cancel_continue UI_TXT_CANCEL_CONTINUE�3 0 dlgicon_info dlgIcon_Info�2 00 thedependencyinstaller theDependencyInstaller
�1 
bhit�0 0 theuserreply theUserReply
�/ .sysorpthalis        TEXT
�. 
psxp�- 0 cmdsetup cmdSetup
�, .aevtodocnull  �    alis�+ 0 cntsearchable cntSearchable�* "0 cntunsearchable cntUnSearchable�) 0 execcommand ExecCommand
�( 
cpar�' 0 selecteditems selectedItems�& 0 	theresult 	theResult�% 0 thefile theFile
�$ 
strq
�# 
ctxt
�" .sysoexecTEXT���     TEXT
�! 
bool
�  
subt� 
� .sysonotfnull��� ��� TEXT�Jt*b  k+  f  4b  �b   b  %�b  kv�b  kv�b  kv��� Y hOeE�O�E�O <b  
[��l kh  *�k+ E` O_ f  fE�Oˠ%_ %E�Y h[OY��O�f  �_ _ %_ %_ %_ %�%_ %_ %_ %�b   b  %�b  b  lv�b  kv�b  kv�_ � E` O_ a ,E` O_ b    %b  	j a ,E` Oa  	_ j UY hOPY hOjE` OjE` O*b  k+  a !-E` "O �_ "[��l kh a #E` $Oa %E` &O�a ,a ',a (&E` &O*b  a )%_ &%a *%b  %k+  E` $O_ $a +  (_ kE` Oa ,_ &%a -%a .%b  %j /Y s_ $a 0
 _ $a 1a 2& 0_ kE` Oa 3_ &%a 4%_ $%a 5%a 6%b  %j /Y -_ kE` Oa 7_ &%a 8%_ $%a 9%a :%b  %j /[OY�Ob  a ;%_ %a <%_ %�b  b  %a =b  a > ?� ������� 0 execcommand ExecCommand� ��� �  �� 0 
thisaction 
thisAction�  � ���� 0 
thisaction 
thisAction� 0 returnvalue returnValue� 0 errmsg errMsg� ��� 
� .sysoexecTEXT���     TEXT� 0 errmsg errMsg�  �  �j  E�W X  �%E�O�� �2������ (0 osversionsupported OSVersionSupported� ��� �  �� 00 minsupportedosxversion minSupportedOSXVersion�  � ��
�	� 00 minsupportedosxversion minSupportedOSXVersion�
 0 strosxversion strOSXVersion�	 .0 issupportedosxversion IsSupportedOSXVersion� ��@
� .sysosigtsirr   ��� null
� 
sisv� *j  �,E�O�g ��E�VO�� �U������ 20 isinstalledclicomponent IsInstalledCLIComponent� ��� �  �� 0 acommand aCommand�  � � �������  0 acommand aCommand�� 0 mycmd myCMD�� 0 isinstalled isInstalled�� 0 theerror theError� h������
�� .sysoexecTEXT���     TEXT�� 0 theerror theError��  � �E�O �%j E�W 	X  fOe� ������������� (0 execembeddedscript ExecEmbeddedScript�� ����� �  ������ 0 thecmd theCMD�� 0 thefile theFile��  � �������� 0 thecmd theCMD�� 0 thefile theFile�� 0 returnvalue returnValue� ����
�� .sysoexecTEXT���     TEXT�� ��%�%j E�O�� fY e� ������������� 0 	ispdffile 	IsPDFFile�� ����� �  ���� 0 afile aFile��  � ������ 0 afile aFile�� 0 theextension theExtension� ����
�� 
nmxt�� � ��,E�UO�� eY fascr  ��ޭ