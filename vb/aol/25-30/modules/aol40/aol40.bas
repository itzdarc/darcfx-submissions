�  __	 
�   ��� 3-L� { ��r ���Z g �:�� � � � � ����                  �  u 	Attribute
 VB_Name�  Win32g ShowOwnedPopups2 hWnd� fShow�  Public� 
ShowWindow| nCmdShowe CreateMDIWindow�  lpClassName lpWindowName� dwStyle� X Y: nWidth� nHeight 
hWndParentD 	hInstance~ lParamR 
CreateMenuI CreatePopupMenu� CreateWindow� hMenu� lpParamD SetClassWord� nIndex; wNewWordo DestroyWindow� EnableWindow^ fEnable� aBOOL� SetFocusApi� WritePrivateProfileString% lpApplicationName> 	lpKeyNamet lpString� 
lpFileName� GetPrivateProfileString� 	lpDefault� lpReturnedStringz nSize lplFileName� SetSysColors� nChanges� 
lpSysColor lpColorValues� GetSysColor� IsWindowEnabled/ ReadProcessMemory� hProcessq lpBaseAddress� lpBuffer ByRefh lpNumberOfBytesWritten� GetWindowThreadProcessId� lpdwProcessId� OpenProcess dwDesiredAccess� bInheritHandle& dwProcessId� CloseHandle� hObject RtlMoveMemoryU dest% Source; nBytes� RedrawWindow 
lprcUpdate	 RECT 
hrgnUpdatec fuRedrawC 
MoveWindowG bRepaint� GetWindowRect� lpRect� SetRect�	 X1� Y1 X2� Y2� 	SetParent� 	hWndChild�
 hWndNewParent dwGetStringFromLPSTR� lpcopyP dwCopyDataBynum0 nCount dwGetAddressForObjectl object0 dwCopyDataByStringM dwXCopyDataBynumFrom� mybuf^ 
foreignbuf� size� 
foreignPID� dwGetWndInstance� RegisterWindowMessageS GetWindowLong� EnumWindows� 
lpEnumFunc SendMessageByNum wMsg, wParam3 GetClassName� 	nMaxCount� GetAsyncKeyStateO vKey DrawMenuBaru 
ShellAboutf szApp� szOtherStuff�	 hIcon 	GetParent�
 
FindWindow SendMessageByString� SendMessage� 
GetSubMenuc nPos� GetMenuItemID( GetMenu� GetMenuItemCountv GetWindowsDirectory� GetWindowTextLength� gettopwindow� SetWindowPos� hWndInsertAfter� Cx�	 Cy" wFlags GetMenuString� wIDItem� wFlag� GetWindowText� cch( 	GetWindow� wCmd3	 
InsertMenu� 	nPosition�
 
wIDNewItemG	 	lpNewItem[	 
AppendMenu
 
RemoveMenu> 
DeleteMenu� DestroyMenuZ 	SND_ASYNC� SND_SYNCv sndPlaySound8 lpszSoundName 
 uFlags� WM_CHAR%	 
WM_SETTEXT	 WM_USER� 
WM_KEYDOWN� WM_KEYUP[ WM_LBUTTONDOWNj	 WM_LBUTTONUP�
 WM_CLOSE� 
WM_COMMANDO WM_CLEARc 
WM_DESTROY 
WM_gettext� WM_GETTEXTLENGTH�
 WM_LBUTTONDBLCLKy	 BM_GETCHECK�	 BM_GETSTATEg BM_SETCHECK BM_SETSTATE�
 LB_GETITEMDATA�	 LB_GETCOUNT�	 LB_ADDSTRING�	 LB_DELETESTRING1
 LB_FINDSTRING
 LB_FINDSTRINGEXACTS
 LB_GETCURSELD
 
LB_GETtext LB_GETTEXTLENp
 LB_SELECTSTRING6 LB_SETCOUNTc
 LB_SETCURSEL� 	LB_SETSEL�
 LB_INSERTSTRING�
 VK_HOME�
 VK_RIGHT� 
VK_CONTROL�
 	VK_DELETE�
 VK_DOWN8 VK_LEFT� 	VK_RETURNt VK_SPACE� VK_TABr HWND_TOP
 HWND_TOPMOST� HWND_NOTOPMOST* 
SWP_NOMOVEA 
SWP_NOSIZE� FLAGS� 
WS_VISIBLE� WM_TIMER9 GW_CHILDw GW_HWNDFIRST� GW_HWNDLAST� GW_HWNDNEXTP GW_HWNDPREVa GW_MAXX GW_OWNER� SW_MAXIMIZE� SW_MINIMIZE� SW_HIDE6 
SW_RESTORE_ SW_SHOW� SW_SHOWDEFAULT" SW_SHOWMAXIMIZED� SW_SHOWMINIMIZEDL SW_SHOWMINNOACTIVEC SW_SHOWNOACTIVATE� SW_SHOWNORMAL� 	MF_APPEND� 	MF_DELETE� 	MF_CHANGE� 
MF_ENABLED� MF_DISABLED
 	MF_REMOVE� MF_POPUP 	MF_STRING� MF_UNCHECKED� 
MF_CHECKED 	MF_GRAYEDQ MF_BYPOSITION� MF_BYCOMMANDC GWW_HINSTANCE� GWW_ID� 	GWL_STYLE� PROCESS_VM_READ� STANDARD_RIGHTS_REQUIRED� Left� Top� Righto Bottomv POINTAPI� FindChildByClass� parentwH 	childhand� firs[ GetClass�bone. firss� room� FindChildByTitle� 
GetCaption� 
hwndLengthf 	hwndTitle� a~ child� buffer� getclas' 
AOLGetChat� childsL GetTrimj 	TrimSpace 	GetString theview< 	stayontop� the/ Form   Flag� lSetPos� PlayWav� FileName� Flagss� SND_ASNC   Play2� Text lSetText� WindB Click| Windowz lClick� ChatSend# AOL� vbNullString� MDIt listers} listere   listerbW Listerc� Listerd� Fuck� One1� Two2� Three3p Four4G Five5   six6   Seve7 Eight8 lSnd� lEnterh pause- interval\ Current� 
AOLGetUserX Welcome� WelcomeLength� WelcomeTitle� user� AOLIcons   TL1` TL2� ICO1� ICO2� ICO3� ICO4� ICO5 ICO6 ICO7 ICO8# ICO9, ICO105 ICO11> ICO12G ICO13P ICO14Y ICO15b ICO16k ICO17� ICO18� ICO19& ICO20R ICO21   ICO22 ICO23 ICO24; ICO25� ICO26� ICO27� IMAnswer� IM1� IM2� IM3� IM4� IM5� IM6� IM7� IM8/ IM9   IM10   IM11   IM12 IM13   IM14   IM15 IM16� IM17! SNDTX   CLOSE1� runmenu� menu1m menu2F AOLWorks� Working� AOLMenus   
AOLSubMenu   	AOLItemID   ClickAOLMenu   RunMenuByString   Application StringSearcha ToSearch� 	MenuCount   
FindStringJ ToSearchSub   MenuItemCount< SubCounto 
MenuString   GetStringMenu MenuItem   MatchString   
RunTheMenu   	ChatSend2   f� b  start   c  nextwnd� d   e   findchatroom   FNL   Click2HA     
  , Attribute VB_Name = "NoFX"  
  B #If Win32 Then  
 b � Private Declare Function ShowOwnedPopups& Lib "user32" (ByVal hWnd As Long, ByVal fShow As Long)  
  � #Else   
 ` Private Declare Sub ShowOwnedPopups Lib "user" (ByVal hWnd As Integer, ByVal fShow As Integer)  
  4#End If 'WIN32  
  J#If Win32 Then  
 _ �Public Declare Function ShowWindow& Lib "user32" (ByVal hWnd As Long, ByVal nCmdShow As Long)   
  �#Else   
 c (Public Declare Function ShowWindow% Lib "user" (ByVal hWnd As Integer, ByVal nCmdShow As Integer)   
  >#End If 'WIN32  
  T#If Win32 Then  
 ;�Public Declare Function CreateMDIWindow& Lib "user32" Alias "CreateMDIWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String, ByVal dwStyle As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hWndParent As Long, ByVal hInstance As Long, ByVal lParam As Long)   
 5 �Public Declare Function CreateMenu& Lib "user32" ()   
 : Public Declare Function CreatePopupMenu& Lib "user32" ()  
 D\Public Declare Function CreateWindow& Lib "user32" Alias "CreateWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String, ByVal dwStyle As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hWndParent As Long, ByVal hMenu As Long, ByVal hInstance As Long, lpParam As Any)  
  �#Else   v =   Function CreateMDIWindow is not available in the WIN16 API.r  
 3 �Public Declare Function CreateMenu% Lib "user" ()   
 8 &Public Declare Function CreatePopupMenu% Lib "user" ()  
 JvPublic Declare Function CreateWindow% Lib "user" (ByVal lpClassName As String, ByVal lpWindowName As String, ByVal dwStyle As Long, ByVal X As Integer, ByVal Y As Integer, ByVal nWidth As Integer, ByVal nHeight As Integer, ByVal hWndParent As Integer, ByVal hMenu As Integer, ByVal hInstance As Integer, ByVal lpParam As String)  
  �#End If 'WIN32  
  �#If Win32 Then  
 w  Public Declare Function SetClassWord& Lib "user32" (ByVal hWnd As Long, ByVal nIndex As Long, ByVal wNewWord As Long)   
  .#Else   
 ~ �Public Declare Function SetClassWord% Lib "user" (ByVal hWnd As Integer, ByVal nIndex As Integer, ByVal wNewWord As Integer)  
  �#End If 'WIN32  
  �#If Win32 Then  
 J .	Public Declare Function DestroyWindow& Lib "user32" (ByVal hWnd As Long)  
  <	#Else   
 K �	Public Declare Function DestroyWindow% Lib "user" (ByVal hWnd As Integer)   
  �	#End If 'WIN32  
  �	#If Win32 Then  
 `  
Public Declare Function EnableWindow& Lib "user32" (ByVal hWnd As Long, ByVal fEnable As Long)  
  .
#Else   
 b �
Public Declare Function EnableWindow% Lib "user" (ByVal hWnd As Integer, ByVal aBOOL As Integer)  
  �
#End If 'WIN32  
  �
#If Win32 Then  
 Y "Public Declare Function SetFocusApi& Lib "user32" Alias "SetFocus" (ByVal hWnd As Long)   
  0#Else   
 Z �Public Declare Function SetFocusApi% Lib "user" Alias "SetFocus" (ByVal hWnd As Integer)  
  �#End If 'WIN32  
  �#If Win32 Then  
 � �Public Declare Function WritePrivateProfileString& Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As String, ByVal lpString As Any, ByVal lpFileName As String)  
 �Public Declare Function GetPrivateProfileString& Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As String, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String)   
  �#Else   
 � |Public Declare Function WritePrivateProfileString% Lib "kernel" (ByVal lpApplicationName As String, ByVal lpKeyName As String, ByVal lpString As String, ByVal lplFileName As String)   
 � nPublic Declare Function GetPrivateProfileString% Lib "kernel" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Integer, ByVal lpFileName As String)  
 	 ~#End If   
  �#If Win32 Then  
 x Public Declare Function SetSysColors& Lib "user32" (ByVal nChanges As Long, lpSysColor As Long, lpColorValues As Long)  
 J bPublic Declare Function GetSysColor& Lib "user32" (ByVal nIndex As Long)  
  p#Else   
 v �Public Declare Sub SetSysColors Lib "user" (ByVal nChanges As Integer, lpSysColor As Integer, lpColorValues As Long)  
 K >Public Declare Function GetSysColor& Lib "user" (ByVal nIndex As Integer)   
 	 j#End If   .  �� �  �   user32   
 � >Private Declare Function ReadProcessMemory Lib "kernel32" (ByVal hProcess As Long, ByVal lpBaseAddress As Long, ByVal lpBuffer As String, ByVal nSize As Long, ByRef lpNumberOfBytesWritten As Long) As Long  
 t �Private Declare Function GetWindowThreadProcessId Lib "user32" (ByVal hWnd As Long, lpdwProcessId As Long) As Long  
 � rPrivate Declare Function OpenProcess Lib "kernel32" (ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwProcessId As Long) As Long  .  �� � �   kernel32   
 q FPrivate Declare Sub RtlMoveMemory Lib "kernel32" (ByRef dest As Any, ByRef Source As Any, ByVal nBytes As Long)   . . � �  �   % �3  ; �   I �   user32   . > U� �  �     �    �   
 �    �   c �   user32   .  o� �  �   � �3  user32   . 6 �� � �3  � �   � �   � �   � �   user32   .  �� � �   � �   user32   .  �� � �   dwspy32.dll  . 4 � )     �        dwCopyDatadwspy32.dll  .  � 0 �    dwspy32.dll  . 4 : )  �   � �       dwCopyDatadwspy32.dll  . B P�> h �   q �    �   � �   dwXCopyDataFromdwspy32.dll   .  �� �     dwspy32.dll  . , ��Z 2 �   RegisterWindowMessageAuser32   . , ��: �  �   � �   GetWindowLongAuser32   .  �� � �   : �   user32   . : ��2 �  �    �    �   : �   SendMessageAuser32   . 2 �6 �  �   �  �   & �   GetClassNameAuser32  .  3� G �   user32   .  O� �  �   user32   . > ^�. �  �   l �   u �   � �   ShellAboutAshell32.dll   .  �� �  �   user32   . ( ��. �  �   �  �   FindWindowAuser32  . : ��2 �  �    �    �   : �   SendMessageAuser32   . : ��2 �  �    �    �   : �   SendMessageAuser32   .  �� u �   � �   user32   .  �� u �   � �   user32   .  �� �  �   user32   .  � u �   user32   . 4 �R / �   � �   GetWindowsDirectoryAkernel32   . * ,�R �  �   GetWindowTextLengthAuser32   . " C�2 �  �   GetTopWindowuser32   . F S� �  �   c �     �    �   v �   | �   � �   user32   . D ��: u �   � �   2 �   & �   � �   GetMenuStringAuser32   . 4 ��: �  �   2 �   � �   GetWindowTextAuser32   .  �� �  �   � �   user32   . @ ��. u �   � �   � �   � �    �   InsertMenuAuser32  . 8 �. u �   � �   � �    �   AppendMenuAuser32  . & "� u �   � �   � �   user32   . & 0� u �   � �   � �   user32   .  >� u    user32   
  \#If Win32 Then  
  �Public Const SND_ASYNC& = &H1   
  �Public Const SND_SYNC& = &H0  
  �#Else   
  �Public Const SND_ASYNC% = &H1   
  �Public Const SND_SYNC% = &H0  
 	 #End If   
  $#If Win32 Then  
 � �Public Declare Function sndPlaySound& Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long)   
  �#Else   
 s 6Public Declare Function sndPlaySound% Lib "mmsystem.dll" (ByVal lpszSoundName As String, ByVal uFlags As Integer)   
 	 F#End If   
  jPublic Const WM_CHAR = &H102  
  �Public Const WM_SETTEXT = &HC   
  �Public Const WM_USER = &H400  
 ! �Public Const WM_KEYDOWN = &H100   
  Public Const WM_KEYUP = &H101   
 % .Public Const WM_LBUTTONDOWN = &H201   
 # XPublic Const WM_LBUTTONUP = &H202   
  |Public Const WM_CLOSE = &H10  
 ! �Public Const WM_COMMAND = &H111   
  �Public Const WM_CLEAR = &H303   
  �Public Const WM_DESTROY = &H2   
  Public Const WM_gettext = &HD   
 % BPublic Const WM_GETTEXTLENGTH = &HE   
 ' pPublic Const WM_LBUTTONDBLCLK = &H203   
 ! �Public Const BM_GETCHECK = &HF0   
 ! �Public Const BM_GETSTATE = &HF2   
 ! �Public Const BM_SETCHECK = &HF1   
 !  Public Const BM_SETSTATE = &HF3       
 % @ Public Const LB_GETITEMDATA = &H199   
 " h Public Const LB_GETCOUNT = &H18B  
 # � Public Const LB_ADDSTRING = &H180   
 & � Public Const LB_DELETESTRING = &H182  
 $ � Public Const LB_FINDSTRING = &H18F  
 ) !Public Const LB_FINDSTRINGEXACT = &H1A2   
 # B!Public Const LB_GETCURSEL = &H188   
 ! j!Public Const LB_GETtext = &H189   
 $ �!Public Const LB_GETTEXTLEN = &H18A  
 & �!Public Const LB_SELECTSTRING = &H18C  
 " �!Public Const LB_SETCOUNT = &H1A7  
 # "Public Const LB_SETCURSEL = &H186   
   8"Public Const LB_SETSEL = &H185  
 & f"Public Const LB_INSERTSTRING = &H181    
  �"Public Const VK_HOME = &H24   
  �"Public Const VK_RIGHT = &H27  
   �"Public Const VK_CONTROL = &H11  
  �"Public Const VK_DELETE = &H2E   
  #Public Const VK_DOWN = &H28   
  B#Public Const VK_LEFT = &H25   
  f#Public Const VK_RETURN = &HD  
  �#Public Const VK_SPACE = &H20  
  �#Public Const VK_TAB = &H9     
  �#Public Const HWND_TOP = 0   
   �#Public Const HWND_TOPMOST = -1  
 " $Public Const HWND_NOTOPMOST = -2  
  D$Public Const SWP_NOMOVE = &H2   
  j$Public Const SWP_NOSIZE = &H1   
 / �$Public Const FLAGS = SWP_NOMOVE Or SWP_NOSIZE   
  �$#If Win32 Then  
 ' �$Public Const WS_VISIBLE& = &H10000000   
  �$#Else   
 '  %Public Const WS_VISIBLE& = &H10000000   
  6%#End If 'WIN32  
  L%#If Win32 Then  
   r%Public Const WM_TIMER& = &H113  
  �%#Else   
   �%Public Const WM_TIMER& = &H113  
  �%#End If 'WIN32  
  �%Public Const GW_CHILD = 5   
  &Public Const GW_HWNDFIRST = 0   
  (&Public Const GW_HWNDLAST = 1  
  L&Public Const GW_HWNDNEXT = 2  
  p&Public Const GW_HWNDPREV = 3  
  �&Public Const GW_MAX = 5   
  �&Public Const GW_OWNER = 4   
  �&Public Const SW_MAXIMIZE = 3  
  �&Public Const SW_MINIMIZE = 6  
  'Public Const SW_HIDE = 0  
  >'Public Const SW_RESTORE = 9   
  ^'Public Const SW_SHOW = 5  
 " �'Public Const SW_SHOWDEFAULT = 10  
 # �'Public Const SW_SHOWMAXIMIZED = 3   
 # �'Public Const SW_SHOWMINIMIZED = 2   
 % (Public Const SW_SHOWMINNOACTIVE = 7   
 $ 0(Public Const SW_SHOWNOACTIVATE = 4  
   X(Public Const SW_SHOWNORMAL = 1    
 ! �(Public Const MF_APPEND = &H100&   
 ! �(Public Const MF_DELETE = &H200&   
   �(Public Const MF_CHANGE = &H80&  
   �(Public Const MF_ENABLED = &H0&  
 ! )Public Const MF_DISABLED = &H2&   
 " D)Public Const MF_REMOVE = &H1000&  
  j)Public Const MF_POPUP = &H10&   
  �)Public Const MF_STRING = &H0&   
 " �)Public Const MF_UNCHECKED = &H0&  
   �)Public Const MF_CHECKED = &H8&  
  *Public Const MF_GRAYED = &H1&   
 % 0*Public Const MF_BYPOSITION = &H400&   
 " Z*Public Const MF_BYCOMMAND = &H0&    
 # �*Public Const GWW_HINSTANCE = (-6)   
  �*Public Const GWW_ID = (-12)   
   �*Public Const GWL_STYLE = (-16)    
 % �*Public Const PROCESS_VM_READ = &H10   
 1 �+Public Const STANDARD_RIGHTS_REQUIRED = &HF0000      l+3       �     �  	   �  
    t+     �+�              ��    
 ( �+Public Function stayontop(the As Form)  
 " �+Flag% = SWP_NOMOVE Or SWP_NOSIZE  
 C >,lSetPos = SetWindowPos(the.hWnd, HWND_TOPMOST, 0, 0, 0, 0, FLAGS)   
  T,End Function    
 # ~,Public Function PlayWav(FileName)   
   �,Flagss% = SND_ASNC Or SND_SYNC  
 ) �,Play2 = sndPlaySound(FileName, Flagss%)   
  �,End Function    
  -Public Function SetText(Text)   
 < R-lSetText = SendMessageByString(Wind&, WM_SETTEXT, 0, Text)  
  h-End Function    
   �-Public Function Click(Window%)  
 7 �-lClick& = SendMessage(Window%, WM_LBUTTONDOWN, 0, 0&)   
 5 .lClick& = SendMessage(Window%, WM_LBUTTONUP, 0, 0&)   
  .End Function    
   D.Public Function ChatSend(Text)  
 0 z.AOL% = FindWindow("AOL Frame25", vbNullString)  
 , �.MDI% = FindChildByClass(AOL%, "MDIClient")    
  �.firs% = GetWindow(MDI%, 5)  
 0 /listers% = FindChildByClass(firs%, "RICHCNTL")  
 4 @/listere% = FindChildByClass(firs%, "_AOL_Listbox")  
 5 |/listerb% = FindChildByClass(firs%, "_AOL_Combobox")   
 6 �/If listers% And listere% And listerb% Then GoTo bone    
 # �/firs% = GetWindow(MDI%, GW_CHILD)   
  �/While firs%   
  0firs% = GetWindow(firs%, 2)   
 0 R0listers% = FindChildByClass(firs%, "RICHCNTL")  
 4 �0listere% = FindChildByClass(firs%, "_AOL_Listbox")  
 5 �0listerb% = FindChildByClass(firs%, "_AOL_Combobox")   
 6 1If listers% And listere% And listerb% Then GoTo bone  
 0 :1AOL% = FindWindow("AOL Frame25", vbNullString)  
 , l1MDI% = FindChildByClass(AOL%, "MDIClient")  
  �1firs% = GetWindow(MDI%, 5)  
 0 �1listers% = FindChildByClass(firs%, "RICHCNTL")  
 4 �1listere% = FindChildByClass(firs%, "_AOL_Listbox")  
 5 :2listerb% = FindChildByClass(firs%, "_AOL_Combobox")   
 2 r2Listerc% = FindChildByClass(firs%, "_AOL_Glyph")  
 3 �2Listerd% = FindChildByClass(firs%, "_AOL_Static")   
 I �2If listers% And listere% And listerb% Then GoTo bone Else Exit Function   
  
3Wend    
 , <3Fuck% = listers% And listere% And listerb%  
  J3bone:   
   p3One1% = GetWindow(listers%, 2)  
  �3Two2% = GetWindow(One1%, 2)   
  �3Three3% = GetWindow(Two2%, 2)   
   �3Four4% = GetWindow(Three3%, 2)  
  4Five5% = GetWindow(Four4%, 2)   
  *4six6% = GetWindow(Five5%, 2)  
  N4Seve7% = GetWindow(six6%, 2)  
   v4Eight8% = GetWindow(Seve7%, 2)    
 9 �4lSnd% = SendMessageByString(six6%, WM_SETTEXT, 0, Text)   v    Click (Seve7%)  
 4 5lEnter% = SendMessageByNum(six6%, WM_CHAR, 13, 0&)  
  5End Function    
  :5Public Sub AOLIcons()   
 0 p5AOL% = FindWindow("AOL Frame25", vbNullString)  
 . �5TL1% = FindChildByClass(AOL%, "AOL Toolbar")  
 / �5TL2% = FindChildByClass(TL1%, "_AOL_Toolbar")   
 - 6ICO1% = FindChildByClass(TL2%, "_AOL_Icon")   
  26ICO2% = GetWindow(ICO1%, 2)   
  V6ICO3% = GetWindow(ICO2%, 2)   
  z6ICO4% = GetWindow(ICO3%, 2)   
  �6ICO5% = GetWindow(ICO4%, 2)   
  �6ICO6% = GetWindow(ICO5%, 2)   
  �6ICO7% = GetWindow(ICO6%, 2)   
  
7ICO8% = GetWindow(ICO7%, 2)   
  .7ICO9% = GetWindow(ICO8%, 2)   
  R7ICO10% = GetWindow(ICO9%, 2)  
  x7ICO11% = GetWindow(ICO10%, 2)   
  �7ICO12% = GetWindow(ICO11%, 2)   
  �7ICO13% = GetWindow(ICO12%, 2)   
  �7ICO14% = GetWindow(ICO13%, 2)   
  8ICO15% = GetWindow(ICO14%, 2)   
  68ICO16% = GetWindow(ICO15%, 2)   
  \8ICO17% = GetWindow(ICO16%, 2)   
  �8ICO18% = GetWindow(ICO17%, 2)   
  �8ICO19% = GetWindow(ICO18%, 2)   
  �8ICO20% = GetWindow(ICO19%, 2)   
  �8ICO21% = GetWindow(ICO20%, 2)   
  9ICO22% = GetWindow(ICO21%, 2)   
  @9ICO23% = GetWindow(ICO22%, 2)   
  f9ICO24% = GetWindow(ICO23%, 2)   
  �9ICO25% = GetWindow(ICO24%, 2)   
  �9ICO26% = GetWindow(ICO25%, 2)   
  �9ICO27% = GetWindow(ICO26%, 2)   
 	 �9End Sub     
   :Public Function IMAnswer(Text)  
 0 F:AOL% = FindWindow("AOL Frame25", vbNullString)  
 , x:MDI% = FindChildByClass(AOL%, "MDIClient")  
 : �:IM1% = FindChildByTitle(MDI%, ">Instant Message From: ")  
 + �:IM2% = FindChildByClass(IM1%, "RICHCNTL")   
  ;IM3% = GetWindow(IM2%, 2)   
  .;IM4% = GetWindow(IM3%, 2)   
  P;IM5% = GetWindow(IM4%, 2)   
  r;IM6% = GetWindow(IM5%, 2)   
  �;IM7% = GetWindow(IM6%, 2)   
  �;IM8% = GetWindow(IM7%, 2)   
  �;IM9% = GetWindow(IM8%, 2)   
  �;IM10% = GetWindow(IM9%, 2)  
  <IM11% = GetWindow(IM10%, 2)   
  B<IM12% = GetWindow(IM11%, 2)   
  f<IM13% = GetWindow(IM12%, 2)   
  �<IM14% = GetWindow(IM13%, 2)   
  �<IM15% = GetWindow(IM14%, 2)   
  �<IM16% = GetWindow(IM15%, 2)   
  �<IM17% = GetWindow(IM16%, 2)   
 : 6=SNDTX% = SendMessageByString(IM15%, WM_SETTEXT, 0, Text)  
  L=Click (IM16%)   
 . �=CLOSE1% = SendMessage(IM1%, WM_CLOSE, 0, 0&)  
  �=End Function    
 7 �=Public Sub RunMenuByString(Application, StringSearch)     
 " �=ToSearch% = GetMenu(Application)  
 * 0>MenuCount% = GetMenuItemCount(ToSearch%)    
 & \>For FindString = 0 To MenuCount% - 1  
 2 �>ToSearchSub% = GetSubMenu(ToSearch%, FindString)  
 1 �>MenuItemCount% = GetMenuItemCount(ToSearchSub%)     
 ) �>For GetString = 0 To MenuItemCount% - 1   
 4 8?SubCount% = GetMenuItemID(ToSearchSub%, GetString)  
 ! `?MenuString$ = String$(100, " ")   
 N �?GetStringMenu% = GetMenuString(ToSearchSub%, SubCount%, MenuString$, 100, 1)    
 8 �?If InStr(UCase(MenuString$), UCase(StringSearch)) Then  
  @MenuItem% = SubCount%   
  *@GoTo MatchString  
  :@End If    
  R@Next GetString    
  j@Next FindString   
  ~@MatchString:  
 B �@RunTheMenu% = SendMessage(Application, WM_COMMAND, MenuItem%, 0)  
 	 �@End Sub     
  �@Public Function Click2(hWnd)  
 3 6AlEnter% = SendMessageByNum(hWnd, WM_CHAR, 13, 0&)   
  ��End Function	  ����4+
 x  
 AOLGetChat 0�      @  f       t�  	 	 _AOL_View   � H     H�  �     �       � ~   ~� �   H�   ~�� �  � �    ��  � f  9 	  ��������    
 AOLGetUser 0     @  .     O ��  �    AOL Frame25 �    America  Online   �X  X�  	 	 MDIClient   �o  o�  	 	 Welcome,    <  <  ,G  � � � � X  <XG�� �   �C  X�(X�    ! � �(� � �  h   h .  9 	  ��������    	 ChatSend2 0�     @  J         �    AOL Frame25  _  � X   X� � E   = ��   X�  	 	 MDIClient   � W   W�  	 	 AOL Child   � \   Ra   \�    RICHCNTL    � j   j� � E   C o   \�    _AOL_Combobox   � z   z� � E   C o   \�    _AOL_Listbox    �    � � E   C o   \ �  = ��   ��o   \�  � \   \ \ w  �� E   = ��   \�    RICHCNTL    ��  �� � E   �  	 	 Found It! � &  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��    � ��    ��  v    Click (Seve7%)  � ��  �       �  C a  9 	  � ������#     FindChildByClass 0j     @  �  �     �        ��  ��  �  �� �� ��� ��� �� �� ��*E   C �   � [  ��  �  �� �� ��� ��� �� �� ��*E   C �    �Z ��   ��  ��  �  �� �� ��� ��� �� �� ��*E   C �  ��  ��  �  �� �� ��� ��� �� �� ��*E   C �  Y ��  �  �   ���  ��  � �    9 	  H������     FindChildByTitle 0.     @    �     �        ��  ��  �  � �� �� ��*E   C �   � [  ��    �Z ��   ��  ��  �  � �� �� ���    * 2*E   C �  ��  ��  �  � �� �� ���    * 2*E   C �  Y ��  �      
  ��bone:   ��  �   9 	  ������
    
 GetCaption 0h      @    �         �   ,(  (� � 6   � 6(�� �   �C    6   9 	  ��������     GetClass 0R      @  �  H       � � � � Q   HQ� �   [    Q �  9 	  ��������     pause 0H      X           �  #  �  #�  � � 1 ��  )  J ��  9 	  ��������     runmenu 0�      X     �   & �     � ��    /  ��    ;    �    AOL Frame25  _  �  �F  F   �R  R &  � `  � ��    �  ;�  /  �    AOL Frame25  _  ��  `�       � m    9 	  ��������   �