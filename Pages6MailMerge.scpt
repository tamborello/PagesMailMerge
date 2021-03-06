FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Title
Pages6MailMerge.scpt

Author
Frank Tamborello, PhD, CSP
Cogscent, LLC

Description
Applescript script to open a Pages 6 template and find and replace sender and recipient names and addresses for each recipient in a user-selected Apple Contacts group. 

Caveats
1. If you have more than a few dozen recipients, it could take a while to open and process all those documents. 
2. If you haven't quite got your formatting right and need to start the run over again, you can close all Pages windows by uncommenting this code and executing it in a separate Script Editor window:
tell application "Pages"	close every window saving noend tell
3. This script assumes you have a Contacts card set as a "my card" to fill the sender's fields and that you have a nickname (preferred) or first and last names and at least one address for every recipient.

References1. https://iworkautomation.com/pages/examples-mail-merge.html2. http://macosxautomation.com/applescript/iwork/pages/text-item-replace.html     � 	 	� 
 T i t l e 
 P a g e s 6 M a i l M e r g e . s c p t 
 
 A u t h o r 
 F r a n k   T a m b o r e l l o ,   P h D ,   C S P 
 C o g s c e n t ,   L L C 
 
 D e s c r i p t i o n 
 A p p l e s c r i p t   s c r i p t   t o   o p e n   a   P a g e s   6   t e m p l a t e   a n d   f i n d   a n d   r e p l a c e   s e n d e r   a n d   r e c i p i e n t   n a m e s   a n d   a d d r e s s e s   f o r   e a c h   r e c i p i e n t   i n   a   u s e r - s e l e c t e d   A p p l e   C o n t a c t s   g r o u p .   
 
 C a v e a t s 
 1 .   I f   y o u   h a v e   m o r e   t h a n   a   f e w   d o z e n   r e c i p i e n t s ,   i t   c o u l d   t a k e   a   w h i l e   t o   o p e n   a n d   p r o c e s s   a l l   t h o s e   d o c u m e n t s .   
 2 .   I f   y o u   h a v e n ' t   q u i t e   g o t   y o u r   f o r m a t t i n g   r i g h t   a n d   n e e d   t o   s t a r t   t h e   r u n   o v e r   a g a i n ,   y o u   c a n   c l o s e   a l l   P a g e s   w i n d o w s   b y   u n c o m m e n t i n g   t h i s   c o d e   a n d   e x e c u t i n g   i t   i n   a   s e p a r a t e   S c r i p t   E d i t o r   w i n d o w : 
 t e l l   a p p l i c a t i o n   " P a g e s "  	 c l o s e   e v e r y   w i n d o w   s a v i n g   n o  e n d   t e l l 
 3 .   T h i s   s c r i p t   a s s u m e s   y o u   h a v e   a   C o n t a c t s   c a r d   s e t   a s   a   " m y   c a r d "   t o   f i l l   t h e   s e n d e r ' s   f i e l d s   a n d   t h a t   y o u   h a v e   a   n i c k n a m e   ( p r e f e r r e d )   o r   f i r s t   a n d   l a s t   n a m e s   a n d   a t   l e a s t   o n e   a d d r e s s   f o r   e v e r y   r e c i p i e n t .  
 
 R e f e r e n c e s  1 .   h t t p s : / / i w o r k a u t o m a t i o n . c o m / p a g e s / e x a m p l e s - m a i l - m e r g e . h t m l  2 .   h t t p : / / m a c o s x a u t o m a t i o n . c o m / a p p l e s c r i p t / i w o r k / p a g e s / t e x t - i t e m - r e p l a c e . h t m l     
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��      USER SETABLE PROPERTIES     �   0   U S E R   S E T A B L E   P R O P E R T I E S      l     ��  ��    t n format is: declaration | variable's name | variable's value, ie text in the document to find for replacement      �   �   f o r m a t   i s :   d e c l a r a t i o n   |   v a r i a b l e ' s   n a m e   |   v a r i a b l e ' s   v a l u e ,   i e   t e x t   i n   t h e   d o c u m e n t   t o   f i n d   f o r   r e p l a c e m e n t        j     �� �� 60 sendernicknameplaceholder senderNickNamePlaceholder  m        �    S E N D E R N I C K N A M E      j    �� �� <0 senderfulladdressplaceholder senderFullAddressPlaceholder  m         � ! ! " S E N D E R F U L L A D D R E S S   " # " l     ��������  ��  ��   #  $ % $ j    �� &�� <0 recipientnicknameplaceholder recipientNickNamePlaceholder & m     ' ' � ( ( " R E C I P I E N T N I C K N A M E %  ) * ) j   	 �� +�� B0 recipientfulladdressplaceholder recipientFullAddressPlaceholder + m   	 
 , , � - - ( R E C I P I E N T F U L L A D D R E S S *  . / . l     ��������  ��  ��   /  0 1 0 l     ��������  ��  ��   1  2 3 2 l     ��������  ��  ��   3  4 5 4 l     �� 6 7��   6   initialize variables    7 � 8 8 *   i n i t i a l i z e   v a r i a b l e s 5  9 : 9 p     ; ; �� <�� 0 peoplecount peopleCount < ������  0 recipientgroup recipientGroup��   :  = > = l     ��������  ��  ��   >  ? @ ? l    A���� A O     B C B k    D D  E F E I   	������
�� .miscactvnull��� ��� null��  ��   F  G�� G Q   
 H I J H k   q K K  L M L l   ��������  ��  ��   M  N O N l   �� P Q��   P ) # CHECK AND RETRIEVE THE SENDER DATA    Q � R R F   C H E C K   A N D   R E T R I E V E   T H E   S E N D E R   D A T A O  S T S l   �� U V��   U Z T assumes that the sender is the default Contact card, what contacts calls "my card."    V � W W �   a s s u m e s   t h a t   t h e   s e n d e r   i s   t h e   d e f a u l t   C o n t a c t   c a r d ,   w h a t   c o n t a c t s   c a l l s   " m y   c a r d . " T  X Y X r     Z [ Z 1    ��
�� 
az54 [ o      ���� 0 
thisperson 
thisPerson Y  \ ] \ Z   # ^ _���� ^ =    ` a ` o    ���� 0 
thisperson 
thisPerson a m    ��
�� 
msng _ R    ���� b
�� .ascrerr ****      � ****��   b �� c��
�� 
errn c m    ����'��  ��  ��   ]  d e d l  $ $��������  ��  ��   e  f g f l  $ $�� h i��   h   get the sender�s data    i � j j ,   g e t   t h e   s e n d e r  s   d a t a g  k l k O   $ � m n m k   ( � o o  p q p r   ( - r s r 1   ( +��
�� 
az43 s o      ����  0 sendernickname senderNickname q  t u t Z   . > v w���� v =  . 1 x y x o   . /����  0 sendernickname senderNickname y m   / 0��
�� 
msng w R   4 :���� z
�� .ascrerr ****      � ****��   z �� {��
�� 
errn { m   6 7����'��  ��  ��   u  | } | l  ? ?��������  ��  ��   }  ~  ~ r   ? H � � � l  ? F ����� � I  ? F�� ���
�� .corecnte****       **** � 2  ? B��
�� 
az27��  ��  ��   � l      ����� � o      ���� 0 addresscount addressCount��  ��     � � � Z   I � � � � � � =  I L � � � l  I J ����� � o   I J���� 0 addresscount addressCount��  ��   � m   J K����   � R   O U���� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   Q R����'��   �  � � � =  X [ � � � l  X Y ����� � o   X Y���� 0 addresscount addressCount��  ��   � m   Y Z����  �  ��� � r   ^ f � � � l  ^ d ����� � n   ^ d � � � 1   b d��
�� 
az65 � l  ^ b ����� � 4  ^ b�� �
�� 
az27 � m   ` a���� ��  ��  ��  ��   � o      ���� 0 senderaddress senderAddress��   � l  i � � � � � k   i � � �  � � � r   i r � � � l  i n ����� � n   i n � � � 1   l n��
�� 
az65 � 2   i l��
�� 
az27��  ��   � o      ����  0 theseaddresses theseAddresses �  � � � r   s � � � � l 	 s � ����� � l  s � ����� � I  s ��� � �
�� .gtqpchltns    @   @ ns   � o   s v����  0 theseaddresses theseAddresses � �� � �
�� 
prmp � l 	 y | ����� � m   y | � � � � � > P i c k   t h e   s e n d e r   a d d r e s s   t o   u s e :��  ��   � �� ���
�� 
inSL � l   � ����� � n    � � � � 4   � ��� �
�� 
cobj � m   � �����  � o    �����  0 theseaddresses theseAddresses��  ��  ��  ��  ��  ��  ��   � o      ���� 0 senderaddress senderAddress �  � � � Z  � � � ����� � =  � � � � � o   � ����� 0 senderaddress senderAddress � m   � ��
� boovfals � R   � ��~�} �
�~ .ascrerr ****      � ****�}   � �| ��{
�| 
errn � m   � ��z�z���{  ��  ��   �  ��y � r   � � � � � c   � � � � � o   � ��x�x 0 senderaddress senderAddress � m   � ��w
�w 
TEXT � o      �v�v 0 senderaddress senderAddress�y   � 6 0 multiple addresses, prompt the user to pick one    � � � � `   m u l t i p l e   a d d r e s s e s ,   p r o m p t   t h e   u s e r   t o   p i c k   o n e �  ��u � l  � ��t�s�r�t  �s  �r  �u   n o   $ %�q�q 0 
thisperson 
thisPerson l  � � � l  � ��p�o�n�p  �o  �n   �  � � � l  � ��m � ��m   � ( " CHECK AND PROMPT FOR TARGET GROUP    � � � � D   C H E C K   A N D   P R O M P T   F O R   T A R G E T   G R O U P �  � � � r   � � � � � I  � ��l ��k
�l .corecnte****       **** � 2  � ��j
�j 
azf5�k   � o      �i�i 0 
groupcount 
groupCount �  � � � Z   �J � � � � � =  � � � � � l  � � ��h�g � o   � ��f�f 0 
groupcount 
groupCount�h  �g   � m   � ��e�e   � R   � ��d�c �
�d .ascrerr ****      � ****�c   � �b ��a
�b 
errn � m   � ��`�`'�a   �  � � � =  � � � � � l  � � ��_�^ � o   � ��]�] 0 
groupcount 
groupCount�_  �^   � m   � ��\�\  �  ��[ � k   � � � �  � � � r   � � � � � 4   � ��Z �
�Z 
azf5 � m   � ��Y�Y  � o      �X�X  0 recipientgroup recipientGroup �  ��W � r   � � � � � n   � � � � � 1   � ��V
�V 
pnam � o   � ��U�U  0 recipientgroup recipientGroup � o      �T�T (0 recipientgroupname recipientGroupName�W  �[   � l  �J � � � � k   �J � �  � � � r   � � � � � l  � � ��S�R � n   � � � � � 1   � ��Q
�Q 
pnam � 2   � ��P
�P 
azf5�S  �R   � o      �O�O "0 thesegroupnames theseGroupNames �  � � � r   � � � � l 	 � �N�M  l  ��L�K I  ��J
�J .gtqpchltns    @   @ ns   o   ��I�I "0 thesegroupnames theseGroupNames �H
�H 
prmp l 	�G�F m   � D P i c k   t h e   r e c i p i e n t   C o n t a c t s   g r o u p :�G  �F   �E	�D
�E 
inSL	 l 

�C�B
 n  
 4  �A
�A 
cobj m  �@�@  o  
�?�? "0 thesegroupnames theseGroupNames�C  �B  �D  �L  �K  �N  �M   � o      �>�> (0 recipientgroupname recipientGroupName �  Z 1�=�< = " o   �;�; (0 recipientgroupname recipientGroupName m   !�:
�: boovfals R  %-�9�8
�9 .ascrerr ****      � ****�8   �7�6
�7 
errn m  '*�5�5���6  �=  �<    r  2= c  29 o  25�4�4 (0 recipientgroupname recipientGroupName m  58�3
�3 
TEXT o      �2�2 (0 recipientgroupname recipientGroupName �1 r  >J 4  >F�0
�0 
azf5 o  BE�/�/ (0 recipientgroupname recipientGroupName o      �.�.  0 recipientgroup recipientGroup�1   � 3 - multiple groups, prompt the user to pick one    � �   Z   m u l t i p l e   g r o u p s ,   p r o m p t   t h e   u s e r   t o   p i c k   o n e � !"! l KK�-�,�+�-  �,  �+  " #$# l KK�*%&�*  %   CHECK GROUP FOR PEOPLE   & �'' .   C H E C K   G R O U P   F O R   P E O P L E$ ()( r  KZ*+* l KV,�)�(, I KV�'-�&
�' .corecnte****       ****- n  KR./. 2 NR�%
�% 
azf4/ o  KN�$�$  0 recipientgroup recipientGroup�&  �)  �(  + o      �#�# 0 peoplecount peopleCount) 010 Z  [o23�"�!2 = [`454 l [^6� �6 o  [^�� 0 
groupcount 
groupCount�   �  5 m  ^_��  3 R  ck��7
� .ascrerr ****      � ****�  7 �8�
� 
errn8 m  eh��'�  �"  �!  1 9�9 l pp����  �  �  �   I R      �:;
� .ascrerr ****      � ****: o      �� 0 errormessage errorMessage; �<�
� 
errn< o      �� 0 errornumber errorNumber�   J k  y== >?> Z  y�@AB�@ = y|CDC o  yz�� 0 errornumber errorNumberD m  z{��'A k  �EE FGF r  �HIH m  �JJ �KK  N O   D E F A U L T   C A R DI o      �� 0 errornumber errorNumberG L�
L r  ��MNM l 	��O�	�O m  ��PP �QQ$ N o   p e r s o n   i n   t h i s   C o n t a c t s   d a t a b a s e   i s   s e t   t o   b e   t h e   d e f a u l t   c a r d   o r    M y   C a r d .    S e l e c t   a   p e r s o n   a n d   c h o o s e    M a k e   T h i s   M y   C a r d    f r o m   t h e   C a r d   m e n u .�	  �  N o      �� 0 errormessage errorMessage�
  B RSR = ��TUT o  ���� 0 errornumber errorNumberU m  ����'S VWV k  ��XX YZY r  ��[\[ 1  ���
� 
az54\ 1  ���
� 
az48Z ]^] r  ��_`_ m  ��aa �bb & M I S S I N G   S E N D E R   I N F O` o      �� 0 errornumber errorNumber^ c�c r  ��ded l 	��f� ��f m  ��gg �hh � T h e   c u r r e n t   d e f a u l t   c a r d   i s   m i s s i n g   a   v a l u e   f o r   t h e   F i r s t   N a m e   o r   L a s t   N a m e   f i e l d s .�   ��  e o      ���� 0 errormessage errorMessage�  W iji = ��klk o  ������ 0 errornumber errorNumberl m  ������'j mnm k  ��oo pqp r  ��rsr 1  ����
�� 
az54s 1  ����
�� 
az48q tut r  ��vwv m  ��xx �yy . M I S S I N G   M A I L I N G   A D D R E S Sw o      ���� 0 errornumber errorNumberu z��z r  ��{|{ l 	��}����} m  ��~~ � � T h e   c u r r e n t   d e f a u l t   c a r d   i s   m i s s i n g   a   v a l u e   f o r   t h e   a d d r e s s   f i e l d s .��  ��  | o      ���� 0 errormessage errorMessage��  n ��� = ����� o  ������ 0 errornumber errorNumber� m  ������'� ��� k  ���� ��� r  ����� m  ���� ���  M I S S I N G   G R O U P S� o      ���� 0 errornumber errorNumber� ���� r  ����� l 	�������� m  ���� ��� h T h e r e   a r e   n o   g r o u p s   i n   t h e   c u r r e n t   c o n t a c t   d a t a b a s e .��  ��  � o      ���� 0 errormessage errorMessage��  � ��� = ����� o  ������ 0 errornumber errorNumber� m  ������'� ���� k  ���� ��� r  ����� m  ���� ���  M I S S I N G   P E O P L E� o      ���� 0 errornumber errorNumber� ���� r  ����� l 	�������� m  ���� ��� Z T h e   c h o s e n   C o n t a c t s   g r o u p   c o n t a i n s   n o   p e o p l e .��  ��  � o      ���� 0 errormessage errorMessage��  ��  �  ? ��� Z  �������� > ����� o  ������ 0 errornumber errorNumber� m  ��������� I �����
�� .sysodisAaleR        TEXT� l ������� c  ���� o  � ���� 0 errornumber errorNumber� m   ��
�� 
TEXT��  ��  � �����
�� 
mesS� o  ���� 0 errormessage errorMessage��  ��  ��  � ���� R  �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  ��������  ��  ��   C m     ��z                                                                                  adrb  alis      Squid                          BD ����Contacts.app                                                   ����            ����  
 cu             Applications  /:Applications:Contacts.app/    C o n t a c t s . a p p    S q u i d  Applications/Contacts.app   / ��  ��  ��   @ ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   SWITCH TO PAGES   � ���     S W I T C H   T O   P A G E S� ��� l     ������  � Note: The statement to open a document with a template appears to be incompatible with Pages 4 (iWork '09)! I don't know about Pages 5, but it does work with Pages 6. So if you, like me, have both Pages '09 and Pages 6, ensure you point the tell application statement to your fully-specified Pages 6 path and name! Otherwise Script Editor will throw a syntax error. If this is not your full path to your local Pages 6 executable, then you must replace this path with the HFS-formatted path to your local Pages 6 executable.   � ���   N o t e :   T h e   s t a t e m e n t   t o   o p e n   a   d o c u m e n t   w i t h   a   t e m p l a t e   a p p e a r s   t o   b e   i n c o m p a t i b l e   w i t h   P a g e s   4   ( i W o r k   ' 0 9 ) !   I   d o n ' t   k n o w   a b o u t   P a g e s   5 ,   b u t   i t   d o e s   w o r k   w i t h   P a g e s   6 .   S o   i f   y o u ,   l i k e   m e ,   h a v e   b o t h   P a g e s   ' 0 9   a n d   P a g e s   6 ,   e n s u r e   y o u   p o i n t   t h e   t e l l   a p p l i c a t i o n   s t a t e m e n t   t o   y o u r   f u l l y - s p e c i f i e d   P a g e s   6   p a t h   a n d   n a m e !   O t h e r w i s e   S c r i p t   E d i t o r   w i l l   t h r o w   a   s y n t a x   e r r o r .   I f   t h i s   i s   n o t   y o u r   f u l l   p a t h   t o   y o u r   l o c a l   P a g e s   6   e x e c u t a b l e ,   t h e n   y o u   m u s t   r e p l a c e   t h i s   p a t h   w i t h   t h e   H F S - f o r m a t t e d   p a t h   t o   y o u r   l o c a l   P a g e s   6   e x e c u t a b l e .� ��� l ������� O  ���� k  &��� ��� I &+������
�� .miscactvnull��� ��� null��  ��  � ��� l ,,������  �   BEGIN MERGE   � ���    B E G I N   M E R G E� ���� Y  ,��������� k  8��� ��� O  8|��� k  <{�� ��� r  <F��� n  <D��� 4  ?D���
�� 
azf4� o  BC���� 0 i  � l <?������ o  <?����  0 recipientgroup recipientGroup��  ��  � o      ���� 0 
thisperson 
thisPerson� ��� r  GN��� n  GJ��� 1  HJ��
�� 
az43� o  GH���� 0 
thisperson 
thisPerson� o      ���� &0 recipientnickname recipientNickName� ��� Z On������� = OT��� o  OR���� &0 recipientnickname recipientNickName� m  RS��
�� 
msng� r  Wj��� b  Wf��� b  W`��� n  W\��� 1  X\��
�� 
azf7� o  WX���� 0 
thisperson 
thisPerson� m  \_�� ���   � n  `e��� 1  ae��
�� 
azf8� o  `a���� 0 
thisperson 
thisPerson� o      ���� &0 recipientnickname recipientNickName��  ��  � ��� r  oy��� l ou������ n  ou� � 1  su��
�� 
az65  l os���� n  os 4 ps��
�� 
az27 m  qr����  o  op���� 0 
thisperson 
thisPerson��  ��  ��  ��  � o      ���� ,0 recipientfulladdress recipientFullAddress� �� l zz����   7 1			display alert (recipientFullAddress as string)    � b 	 	 	 d i s p l a y   a l e r t   ( r e c i p i e n t F u l l A d d r e s s   a s   s t r i n g )��  � m  89		z                                                                                  adrb  alis      Squid                          BD ����Contacts.app                                                   ����            ����  
 cu             Applications  /:Applications:Contacts.app/    C o n t a c t s . a p p    S q u i d  Applications/Contacts.app   / ��  � 

 l }}��������  ��  ��    l }}����   2 , open a new document with the named template    � X   o p e n   a   n e w   d o c u m e n t   w i t h   t h e   n a m e d   t e m p l a t e  r  }� l }����� I }�����
�� .corecrel****      � null��   ��
�� 
kocl m  ����
�� 
docu ����
�� 
prdt K  �� ����
�� 
Tmpl 4  ����
�� 
tmpl m  �� � 0 5   x   7   E n v e l o p e   f r o m   T r a y��  ��  ��  ��   o      ���� 0 thisdocument thisDocument   O  ��!"! r  ��#$# l 	��%����% l ��&����& I ����'��
�� .corecnte****       ****' l ��(����( 6��)*) 2  ����
�� 
cwor* = ��+,+  g  ��, o  ������ B0 recipientfulladdressplaceholder recipientFullAddressPlaceholder��  ��  ��  ��  ��  ��  ��  $ o      ���� L0 $recipientfulladdressplaceholdercount $recipientFullAddressPlaceholderCount" n  ��-.- 1  ����
�� 
pTxt. o  ������ 0 thisdocument thisDocument  /��/ O  ��010 k  ��22 343 l ����56��  5 4 . replace the placeholders with the person data   6 �77 \   r e p l a c e   t h e   p l a c e h o l d e r s   w i t h   t h e   p e r s o n   d a t a4 898 r  ��:;: J  ��<< =>= J  ��?? @A@ o  ������ 60 sendernicknameplaceholder senderNickNamePlaceholderA B��B o  ������  0 sendernickname senderNickname��  > CDC J  ��EE FGF o  ������ <0 senderfulladdressplaceholder senderFullAddressPlaceholderG H��H o  ������ 0 senderaddress senderAddress��  D IJI J  ��KK LML o  ������ <0 recipientnicknameplaceholder recipientNickNamePlaceholderM N�N o  ���~�~ &0 recipientnickname recipientNickName�  J O�}O J  ��PP QRQ o  ���|�| B0 recipientfulladdressplaceholder recipientFullAddressPlaceholderR S�{S o  ���z�z ,0 recipientfulladdress recipientFullAddress�{  �}  ; o      �y�y T0 (placeholderwordreplacementstringpairings (placeholderWordReplacementStringPairings9 TUT l ���xVW�x  V * $ search and replace in the body text   W �XX H   s e a r c h   a n d   r e p l a c e   i n   t h e   b o d y   t e x tU YZY O  �H[\[ t   G]^] l F_`a_ Y  Fb�wcd�vb k  Aee fgf s  5hih n  jkj 4  �ul
�u 
cobjl o  �t�t 0 i  k o  �s�s T0 (placeholderwordreplacementstringpairings (placeholderWordReplacementStringPairingsi l 	    m�r�qm J      nn opo o      �p�p "0 placeholderword placeholderWordp q�oq o      �n�n &0 replacementstring replacementString�o  �r  �q  g r�mr n 6Asts I  7A�lu�k�l B0 replacewordwithstringinbodytext replaceWordWithStringInBodyTextu vwv o  7:�j�j "0 placeholderword placeholderWordw x�ix o  :=�h�h &0 replacementstring replacementString�i  �k  t  f  67�m  �w 0 i  c m  �g�g d l y�f�ey I �dz�c
�d .corecnte****       ****z o  �b�b T0 (placeholderwordreplacementstringpairings (placeholderWordReplacementStringPairings�c  �f  �e  �v  ` 1 + allow up to 1 minute to process a document   a �{{ V   a l l o w   u p   t o   1   m i n u t e   t o   p r o c e s s   a   d o c u m e n t^ m   �a�a <\ 1  ���`
�` 
pTxtZ |}| l II�_�^�]�_  �^  �]  } ~~ l II�\���\  � y s search and replace in all the text items (text boxes), useful for recipient name and address layout on an envelope   � ��� �   s e a r c h   a n d   r e p l a c e   i n   a l l   t h e   t e x t   i t e m s   ( t e x t   b o x e s ) ,   u s e f u l   f o r   r e c i p i e n t   n a m e   a n d   a d d r e s s   l a y o u t   o n   a n   e n v e l o p e ��� Y  I���[���Z� k  Y��� ��� s  Yz��� n  Ya��� 4  \a�Y�
�Y 
cobj� o  _`�X�X 0 i  � o  Y\�W�W T0 (placeholderwordreplacementstringpairings (placeholderWordReplacementStringPairings� J      �� ��� o      �V�V "0 placeholderword placeholderWord� ��U� o      �T�T &0 replacementstring replacementString�U  � ��� r  {���� l {���S�R� 6 {���� 2  {��Q
�Q 
shtx� E  ����� 1  ���P
�P 
pDTx� o  ���O�O "0 placeholderword placeholderWord�S  �R  � o      �N�N  0 thesetextitems theseTextItems� ��M� Y  ����L���K� k  ���� ��� r  ����� n  ����� 4  ���J�
�J 
cobj� o  ���I�I 0 i  � o  ���H�H  0 thesetextitems theseTextItems� o      �G�G 0 thistextitem thisTextItem� ��F� O  ����� O  ����� r  ����� o  ���E�E &0 replacementstring replacementString� l     ��D�C� 6����� 2  ���B
�B 
cpar� = �����  g  ��� o  ���A�A "0 placeholderword placeholderWord�D  �C  � n ����� 1  ���@
�@ 
pDTx�  g  ��� o  ���?�? 0 thistextitem thisTextItem�F  �L 0 i  � m  ���>�> � l ����=�<� I ���;��:
�; .corecnte****       ****� o  ���9�9  0 thesetextitems theseTextItems�:  �=  �<  �K  �M  �[ 0 i  � m  LM�8�8 � l MT��7�6� I MT�5��4
�5 .corecnte****       ****� o  MP�3�3 T0 (placeholderwordreplacementstringpairings (placeholderWordReplacementStringPairings�4  �7  �6  �Z  � ��2� l ���1�0�/�1  �0  �/  �2  1 o  ���.�. 0 thisdocument thisDocument��  �� 0 i  � m  /0�-�- � l 03��,�+� o  03�*�* 0 peoplecount peopleCount�,  �+  ��  ��  � 4  #�)�
�) 
capp� m  "�� ��� , A p p l i c a t i o n s : P a g e s . a p p��  ��  � ��� l     �(�'�&�(  �'  �&  � ��� l     �%�$�#�%  �$  �#  � ��� i    ��� I      �"��!�" B0 replacewordwithstringinbodytext replaceWordWithStringInBodyText� ��� o      � �  0 
searchword 
searchWord� ��� o      �� &0 replacementstring replacementString�  �!  � O     l��� k    k�� ��� I   ���
� .miscactvnull��� ��� null�  �  � ��� O    h��� O    g��� k    f�� ��� l   ����  � / ) start at the end and go to the beginning   � ��� R   s t a r t   a t   t h e   e n d   a n d   g o   t o   t h e   b e g i n n i n g� ��� Y    f������ O   * a��� T   1 `�� Q   6 [���� Z   9 R����� I  9 >���
� .coredoexnull���     ****� o   9 :�� 0 
searchword 
searchWord�  � r   A N��� o   A B�� &0 replacementstring replacementString� l     ���� 6 B M��� 4  B F��
� 
cwor� m   D E����� =  G L���  g   H H� o   I K�� 0 
searchword 
searchWord�  �  �  �  S   Q R� R      ���
� .ascrerr ****      � ****� o      �� 0 errormessage errorMessage�  �  S   Z [� 4   * .�
�
�
 
cpar� o   , -�	�	 0 i  � 0 i  � l   $���� l   $���� I   $���
� .corecnte****       ****� 2    �
� 
cpar�  �  �  �  �  � m   $ %�� � m   % &� � ���  � 1    ��
�� 
pTxt� l   ������ 4   ���
�� 
docu� m    ���� ��  ��  � ���� L   i k�� m   i j��
�� boovtrue��  � 4     ���
�� 
capp� m    �� ��� , A p p l i c a t i o n s : P a g e s . a p p�    l     ��������  ��  ��   �� l ������ L  �� o  ������ 0 peoplecount peopleCount��  ��  ��       ��    ' ,��   �������������� 60 sendernicknameplaceholder senderNickNamePlaceholder�� <0 senderfulladdressplaceholder senderFullAddressPlaceholder�� <0 recipientnicknameplaceholder recipientNickNamePlaceholder�� B0 recipientfulladdressplaceholder recipientFullAddressPlaceholder�� B0 replacewordwithstringinbodytext replaceWordWithStringInBodyText
�� .aevtoappnull  �   � **** �������	���� B0 replacewordwithstringinbodytext replaceWordWithStringInBodyText�� ��
�� 
  ������ 0 
searchword 
searchWord�� &0 replacementstring replacementString��   ���������� 0 
searchword 
searchWord�� &0 replacementstring replacementString�� 0 i  �� 0 errormessage errorMessage	 ���������������������
�� 
capp
�� .miscactvnull��� ��� null
�� 
docu
�� 
pTxt
�� 
cpar
�� .corecnte****       ****
�� .coredoexnull���     ****
�� 
cwor  �� 0 errormessage errorMessage��  �� m)��/ f*j O*�k/ U*�, N K*�-j kih *�/ 1 .hZ �j  �*�i/�[\Z�81FY W X 
 [OY��U[OY��UUOeU ��������
�� .aevtoappnull  �   � **** k    �  ? � ����  ��  ��   �������� 0 errormessage errorMessage�� 0 errornumber errorNumber�� 0 i   P����������������������������������� �����������������������������������JP��agx~������������������������������������������������������������
�� .miscactvnull��� ��� null
�� 
az54�� 0 
thisperson 
thisPerson
�� 
msng
�� 
errn��'
�� 
az43��  0 sendernickname senderNickname��'
�� 
az27
�� .corecnte****       ****�� 0 addresscount addressCount��'
�� 
az65�� 0 senderaddress senderAddress��  0 theseaddresses theseAddresses
�� 
prmp
�� 
inSL
�� 
cobj�� 
�� .gtqpchltns    @   @ ns  ����
�� 
TEXT
�� 
azf5�� 0 
groupcount 
groupCount��'��  0 recipientgroup recipientGroup
�� 
pnam�� (0 recipientgroupname recipientGroupName�� "0 thesegroupnames theseGroupNames
�� 
azf4�� 0 peoplecount peopleCount��'�� 0 errormessage errorMessage ������
�� 
errn�� 0 errornumber errorNumber��  
�� 
az48
�� 
mesS
�� .sysodisAaleR        TEXT
�� 
capp�� &0 recipientnickname recipientNickName
�� 
azf7
�� 
azf8�� ,0 recipientfulladdress recipientFullAddress
�� 
kocl
�� 
docu
�� 
prdt
�� 
Tmpl
�� 
tmpl
�� .corecrel****      � null�� 0 thisdocument thisDocument
�� 
pTxt
�� 
cwor�� L0 $recipientfulladdressplaceholdercount $recipientFullAddressPlaceholderCount�� T0 (placeholderwordreplacementstringpairings (placeholderWordReplacementStringPairings�� <�� "0 placeholderword placeholderWord�� &0 replacementstring replacementString�� B0 replacewordwithstringinbodytext replaceWordWithStringInBodyText
�� 
shtx
�� 
pDTx��  0 thesetextitems theseTextItems�� 0 thistextitem thisTextItem
�� 
cpar����*j Oi*�,E�O��  )��lhY hO� �*�,E�O��  )��lhY hO*�-j E�O�j  )��lhY T�k  *�k/�,E�Y C*�-�,E` O_ a a a _ a k/a  E�O�f  )�a lhY hO�a &E�OPUO*a -j E` O_ j  )�a lhY }_ k  *a k/E` O_ a ,E` Y \*a -a ,E` O_ a a  a _ a k/a  E` O_ f  )�a lhY hO_ a &E` O*a _ /E` O_ a !-j E` "O_ j  )�a #lhY hOPW �X $ %��  a &E�Oa 'E�Y k��  *�,*a (,FOa )E�Oa *E�Y M��  *�,*a (,FOa +E�Oa ,E�Y /�a   a -E�Oa .E�Y �a #  a /E�Oa 0E�Y hO�a  �a &a 1�l 2Y hO)�a lhUO)a 3a 4/�*j O�k_ "kh � A_ a !�/E�O��,E` 5O_ 5�  �a 6,a 7%�a 8,%E` 5Y hO��k/�,E` 9OPUO*a :a ;a <a =*a >a ?/la  @E` AO_ Aa B, *a C-a D[\Zb  81j E` EUO_ Ab   �lvb  �lvb  _ 5lvb  _ 9lva vE` FO*a B, Ia Gn Ak_ Fj kh _ Fa �/E[a k/EQ` HZ[a l/EQ` IZO)_ H_ Il+ J[OY��oUO �k_ Fj kh _ Fa �/E[a k/EQ` HZ[a l/EQ` IZO*a K-a D[a L,\Z_ H@1E` MO Ek_ Mj kh _ Ma �/E` NO_ N *a L, _ I*a O-a D[\Z_ H81FUU[OY��[OY�yOPU[OY�PUO_ "ascr  ��ޭ