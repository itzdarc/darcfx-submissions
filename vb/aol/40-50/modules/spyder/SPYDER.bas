Attribute VB_Name = "SPyDeR"
'This Bas and all the stuff in it are for aol4.0
'If you want some codes for it go to http://knk.tieranet.com/knk4o (the aol4.o part)
'Make sure if you dont already have it to get a copy of my prog Immortal Darkness
'and If you dont know me..your ass better call someone.
'-SPy�eR
Declare Function IsWindowEnabled Lib "user32" (ByVal hwnd As Long) As Long
Private Declare Function ReadProcessMemory Lib "kernel32" (ByVal hProcess As Long, ByVal lpBaseAddress As Long, ByVal lpBuffer As String, ByVal nSize As Long, ByRef lpNumberOfBytesWritten As Long) As Long
Private Declare Function GetWindowThreadProcessId Lib "user32" (ByVal hwnd As Long, lpdwProcessId As Long) As Long
Private Declare Function OpenProcess Lib "kernel32" (ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwProcessId As Long) As Long
Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long
Private Declare Sub RtlMoveMemory Lib "kernel32" (ByRef dest As Any, ByRef Source As Any, ByVal nBytes As Long)
Declare Function RedrawWindow Lib "user32" (ByVal hwnd As Long, lprcUpdate As RECT, ByVal hrgnUpdate As Long, ByVal fuRedraw As Long) As Long
Declare Function MoveWindow Lib "user32" (ByVal hwnd As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal bRepaint As Long) As Long
Declare Function GetWindowRect Lib "user32" (ByVal hwnd As Long, lpRect As RECT) As Long
Declare Function SetRect Lib "user32" (lpRect As RECT, ByVal X1 As Long, ByVal Y1 As Long, ByVal X2 As Long, ByVal Y2 As Long) As Long
Declare Function SetParent Lib "user32" (ByVal hWndChild As Long, ByVal hWndNewParent As Long) As Long
Declare Function dwGetStringFromLPSTR Lib "dwspy32.dll" (ByVal lpcopy As Long) As String
Declare Sub dwCopyDataBynum Lib "dwspy32.dll" Alias "dwCopyData" (ByVal Source&, ByVal dest&, ByVal nCount&)
Declare Function dwGetAddressForObject& Lib "dwspy32.dll" (object As Any)
Declare Sub dwCopyDataByString Lib "dwspy32.dll" Alias "dwCopyData" (ByVal Source As String, ByVal dest As Long, ByVal nCount&)
Declare Function dwXCopyDataBynumFrom& Lib "dwspy32.dll" Alias "dwXCopyDataFrom" (ByVal mybuf As Long, ByVal foreignbuf As Long, ByVal size As Integer, ByVal foreignPID As Long)
Declare Function dwGetWndInstance& Lib "dwspy32.dll" (ByVal hwnd&)
Declare Function RegisterWindowMessage& Lib "user32" Alias "RegisterWindowMessageA" (ByVal lpString As String)
Declare Function GetWindowLong& Lib "user32" Alias "GetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long)
Declare Function EnumWindows& Lib "user32" (ByVal lpEnumFunc As Long, ByVal lParam As Long)
Declare Function SendMessageByNum& Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As Long)
Declare Function GetClassName& Lib "user32" Alias "GetClassNameA" (ByVal hwnd As Long, ByVal lpClassName As String, ByVal nMaxCount As Long)
Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer
Declare Function DrawMenuBar Lib "user32" (ByVal hwnd As Long) As Long
Declare Function ShellAbout Lib "shell32.dll" Alias "ShellAboutA" (ByVal hwnd As Long, ByVal szApp As String, ByVal szOtherStuff As String, ByVal hIcon As Long) As Long
Declare Function GetParent Lib "user32" (ByVal hwnd As Long) As Long
Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
Declare Function SendMessageByString Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As String) As Long
Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Integer, ByVal lParam As Long) As Long
Declare Function CreatePopupMenu Lib "user32" () As Long
Declare Function ShowWindow Lib "user32" (ByVal hwnd As Long, ByVal nCmdShow As Long) As Long
Declare Function GetSubMenu Lib "user32" (ByVal hMenu As Long, ByVal nPos As Long) As Long
Declare Function GetMenuItemID Lib "user32" (ByVal hMenu As Long, ByVal nPos As Long) As Long
Declare Function GetMenu Lib "user32" (ByVal hwnd As Long) As Long
Declare Function GetMenuItemCount Lib "user32" (ByVal hMenu As Long) As Long
Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Declare Function GetWindowTextLength Lib "user32" Alias "GetWindowTextLengthA" (ByVal hwnd As Long) As Long
Declare Function GetTopWindow Lib "user32" (ByVal hwnd As Long) As Long
Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Declare Function SetFocusAPI Lib "user32" Alias "SetFocus" (ByVal hwnd As Long) As Long
Declare Function GetMenuString Lib "user32" Alias "GetMenuStringA" (ByVal hMenu As Long, ByVal wIDItem As Long, ByVal lpString As String, ByVal nMaxCount As Long, ByVal wFlag As Long) As Long
Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
Declare Function GetWindow Lib "user32" (ByVal hwnd As Long, ByVal wCmd As Long) As Long
Declare Function InsertMenu Lib "user32" Alias "InsertMenuA" (ByVal hMenu As Long, ByVal nPosition As Long, ByVal wFlags As Long, ByVal wIDNewItem As Long, ByVal lpNewItem As String) As Long
Declare Function AppendMenu Lib "user32" Alias "AppendMenuA" (ByVal hMenu As Long, ByVal wFlags As Long, ByVal wIDNewItem As Long, ByVal lpNewItem As String) As Long
Declare Function RemoveMenu Lib "user32" (ByVal hMenu As Long, ByVal nPosition As Long, ByVal wFlags As Long) As Long
Declare Function DeleteMenu Lib "user32" (ByVal hMenu As Long, ByVal nPosition As Long, ByVal wFlags As Long) As Long
Declare Function DestroyMenu Lib "user32" (ByVal hMenu%) As Integer
Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long
Declare Function EnableWindow Lib "user32" (ByVal hwnd As Long, ByVal cmd As Long) As Long




Declare Function ExitWindows Lib "user32" (ByVal RestartCode As Long, ByVal DOSReturnCode As Integer) As Integer

Declare Function ShowCursor Lib "user32" (ByVal bShow As Long) As Long







































Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Long, ByVal uParam As Long, lpvParam As Any, ByVal fuWinIni As Long) As Long




Declare Sub ReleaseCapture Lib "user32" ()

Private Declare Function GetSystemMetrics Lib "user32" (ByVal nIndex As Long) As Long
Private Declare Function ShellUse Lib "shell32.dll Alias (ByVal hProcess As Long, ByVal lpBaseAddress As Long, ByVal lpBuffer As String, ByVal nSize As Long, ByRef lpNumberOfBytesWritten As Long) As Long" ()


Private Declare Function OpenFile Lib "kernel32" (ByVal lpFileName As String, lpReOpenBuff As OFSTRUCT, ByVal wStyle As Long) As Long

Private Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long
Private Declare Function GetProfileInt Lib "kernel32" Alias "GetProfileIntA" (ByVal lpAppName As String, ByVal lpKeyName As String, ByVal nDefault As Long) As Long
Private Declare Function GetProfileString Lib "kernel32" Alias "GetProfileStringA" (ByVal lpAppName As String, ByVal lpKeyName As String, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long) As Long
Private Declare Function WriteProfileString Lib "kernel32" Alias "WriteProfileStringA" (ByVal lpszSection As String, ByVal lpszKeyName As String, ByVal lpszString As String) As Long
Private Declare Function GetPrivateProfileInt Lib "kernel32" Alias "GetPrivateProfileIntA" (ByVal lpApplicationName As String, ByVal lpKeyName As String, ByVal nDefault As Long, ByVal lpFileName As String) As Long
Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As String, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpString As String, ByVal lpFileName As String) As Long
Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As String, ByVal lpString As String, ByVal lpFileName As String) As Long



Public Const WM_CHAR = &H102
Public Const WM_SETTEXT = &HC
Public Const WM_USER = &H400
Public Const WM_KEYDOWN = &H100
Public Const WM_KEYUP = &H101
Public Const WM_CLEAR = &H303
Public Const WM_LBUTTONDOWN = &H201
Public Const WM_LBUTTONUP = &H202
Public Const WM_CLOSE = &H10
Public Const WM_GETTEXT = &HD
Public Const WM_COMMAND = &H111
Public Const WM_DESTROY = &H2
Public Const WM_GETTEXTLENGTH = &HE
Public Const WM_LBUTTONDBLCLK = &H203


Public Const LB_GETCOUNT = &H18B
Public Const LB_ADDSTRING = &H180
Public Const LB_GETITEMDATA = &H199
Public Const LB_DELETESTRING = &H182
Public Const LB_FINDSTRINGEXACT = &H1A2
Public Const LB_FINDSTRING = &H18F
Public Const LB_GETCURSEL = &H188
Public Const LB_GETTEXT = &H189
Public Const LB_GETTEXTLEN = &H18A
Public Const LB_SELECTSTRING = &H18C
Public Const LB_SETCOUNT = &H1A7
Public Const LB_SETCURSEL = &H186
Public Const LB_SETSEL = &H185
Public Const LB_INSERTSTRING = &H181

Public Const VK_DELETE = &H2E
Public Const VK_RIGHT = &H27
Public Const VK_HOME = &H24
Public Const VK_CONTROL = &H11
Public Const VK_DOWN = &H28
Public Const VK_LEFT = &H25
Public Const VK_RETURN = &HD
Public Const VK_SPACE = &H20
Public Const VK_TAB = &H9

Public Const BM_GETCHECK = &HF0
Public Const BM_GETSTATE = &HF2
Public Const BM_SETCHECK = &HF1
Public Const BM_SETSTATE = &HF3

Public Const SWP_NOMOVE = &H2
Public Const SWP_NOSIZE = &H1
Public Const SWP_CREATE = &H3

Public Const FLAGS = SWP_NOMOVE Or SWP_NOSIZE

Public Const SPI_SCREENSAVERRUNNING = 97


Public Const GW_HWNDFIRST = 0
Public Const GW_HWNDLAST = 1
Public Const GW_HWNDNEXT = 2
Public Const GW_HWNDPREV = 3
Public Const GW_OWNER = 4
Public Const GW_CHILD = 5
Public Const GW_MAX = 5


Public Const HWND_TOP = 0
Public Const HWND_TOPMOST = -1
Public Const HWND_NOTOPMOST = -2


Public Const SND_SYNC = &H0
Public Const SND_ASYNC = &H1
Public Const SND_NODEFAULT = &H2
Public Const SND_MEMORY = &H4
Public Const SND_LOOP = &H8
Public Const SND_NOSTOP = &H10


Public Const EW_RESTARTWINDOWS = &H42
Public Const EW_REBOOTSYSTEM = &H43


Public Const SW_HIDE = 0
Public Const SW_SHOWNORMAL = 1
Public Const SW_SHOWMINIMIZED = 2
Public Const SW_MAXIMIZE = 3
Public Const SW_SHOWMAXIMIZED = 3
Public Const SW_SHOWNOACTIVATE = 4
Public Const SW_SHOW = 5
Public Const SW_MINIMIZE = 6
Public Const SW_SHOWMINNOACTIVE = 7
Public Const SW_SHOWNA = 8
Public Const SW_RESTORE = 9
Public Const SW_SHOWDEFAULT = 10

Public Const MF_DELETE = &H200&
Public Const MF_CHANGE = &H80&
Public Const MF_ENABLED = &H0&
Public Const MF_DISABLED = &H2&
Public Const MF_APPEND = &H100&
Public Const MF_REMOVE = &H1000&
Public Const MF_POPUP = &H10&
Public Const MF_STRING = &H0&
Public Const MF_CHECKED = &H8&
Public Const MF_UNCHECKED = &H0&
Public Const MF_GRAYED = &H1&
Public Const MF_BYPOSITION = &H400&
Public Const MF_BYCOMMAND = &H0&


Public Const ERROR_SUCCESS = 0&
Public Const ERROR_INVALID_FUNCTION = 1&
Public Const ERROR_ACCESS_DENIED = 5&
Public Const ERROR_OUTOFMEMORY = 14&
Public Const ERROR_BAD_NETPATH = 53&
Public Const ERROR_ALREADY_ASSIGNED = 85&
Public Const ERROR_INVALID_PASSWORD = 86&
Public Const ERROR_INVALID_PASSWORDNAME = 1216&
Public Const GWL_STYLE = (-16)
Public Const GWW_HINSTANCE = (-6)
Public Const GWW_ID = (-12)
Public Const PROCESS_VM_READ = &H10
Public Const STANDARD_RIGHTS_REQUIRED = &HF0000


Private Const OF_READ = &H0
Private Const OF_WRITE = &H1
Private Const OF_READWRITE = &H2
Private Const OF_SHARE_COMBAT = &H0
Private Const OF_SHARE_EXCLUSIVE = &H10
Private Const OF_SHARE_DENY_WRITE = &H20
Private Const OF_SHARE_DENY_READ = &H30
Private Const OF_SHARE_DENY_NONE = &H40
Private Const OF_PARSE = &H100
Private Const OF_DELETE = &H200
Private Const OF_VERIFY = &H400
Private Const OF_CANCEL = &H800
Private Const OF_CREATE = &H1000
Private Const OF_PROMPT = &H2000
Private Const OF_EXIST = &H4000
Private Const OF_REOPEN = &H8000

'SystemMetrics()
Private Const SM_CXSCREEN = 0
Private Const SM_CYSCREEN = 1
Private Const SM_CXVSCROLL = 2
Private Const SM_CYHSCROLL = 3
Private Const SM_CYCAPTION = 4
Private Const SM_CXBORDER = 5
Private Const SM_CYBORDER = 6
Private Const SM_CXDLGFRAME = 7
Private Const SM_CYDLGFRAME = 8
Private Const SM_CYVTHUMB = 9
Private Const SM_CXHTHUMB = 10
Private Const SM_CXICON = 11
Private Const SM_CYICON = 12
Private Const SM_CXCURSOR = 13
Private Const SM_CYCURSOR = 14
Private Const SM_CYMENU = 15
Private Const SM_CXFULLSCREEN = 16
Private Const SM_CYFULLSCREEN = 17
Private Const SM_CYKANJIWINDOW = 18
Private Const SM_MOUSEPRESENT = 19
Private Const SM_CYVSCROLL = 20
Private Const SM_CXHSCROLL = 21
Private Const SM_DEBUG = 22
Private Const SM_SWAPBUTTON = 23
Private Const SM_RESERVED1 = 24
Private Const SM_RESERVED2 = 25
Private Const SM_RESERVED3 = 26
Private Const SM_RESERVED4 = 27
Private Const SM_CXMIN = 28
Private Const SM_CYMIN = 29
Private Const SM_CXSIZE = 30
Private Const SM_CYSIZE = 31
Private Const SM_CXFRAME = 32
Private Const SM_CYFRAME = 33
Private Const SM_CXMINTRACK = 34
Private Const SM_CYMINTRACK = 35
Private Const SM_CXDOUBLECLK = 36
Private Const SM_CYDOUBLECLK = 37
Private Const SM_CXICONSPACING = 38
Private Const SM_CYICONSPACING = 39
Private Const SM_MENUDROPALIGNMENT = 40
Private Const SM_PENWINDOWS = 41
Private Const SM_DBCSENABLED = 42
Private Const SM_CMOUSEBUTTONS = 43
Private Const SM_CMENTRICS = 44


Type RECT
   Left As Long
   Top As Long
   Right As Long
   Bottom As Long
End Type

Type POINTAPI
   X As Long
   Y As Long
End Type





Private Type OFSTRUCT
      cBytes As Byte
      fFixedByte As Byte
      nErrCode As Integer
      Reserved1 As Integer
      Reserved2 As Integer
      szPathName(128) As Byte
End Type

Global Const GFSR_SYSTEMRESOURCES = 0
Global Const GFSR_GDIRESOURCES = 1
Global Const GFSR_USERRESOURCES = 2
Global Const WM_CUT = &H300
Global Const WM_COPY = &H301
Global Const WM_PASTE = &H302
Global Const WM_MDICREATE = &H220
Global Const WM_MDIDESTROY = &H221
Global Const WM_MDIACTIVATE = &H222
Global Const WM_MDIRESTORE = &H223
Global Const WM_MDINEXT = &H224
Global Const WM_MDIMAXIMIZE = &H225
Global Const WM_MDITILE = &H226
Global Const WM_MDICASCADE = &H227
Global Const WM_MDIICONARRANGE = &H228
Global Const WM_MDIGETACTIVE = &H229
Global Const WM_MDISETMENU = &H230
Global giBeepBox As Integer
Global r&
Global entry$
Global iniPath$


Sub AOL40_ClickForward()

aol% = FindWindow("AOL Frame25", 0&)
icon% = FindChildByClass(aol%, "_AOL_ICON")
icon% = GetWindow(icon%, GW_HWNDNEXT)
icon% = GetWindow(icon%, GW_HWNDNEXT)
icon% = GetWindow(icon%, GW_HWNDNEXT)
icon% = GetWindow(icon%, GW_HWNDNEXT)
icon% = GetWindow(icon%, GW_HWNDNEXT)
AOLClickIcon (icon%)
End Sub


Function AOL40_FindFwdWindow()

End Function

Public Function GetListIndex(LB As ListBox, txt As String) As Integer
Dim Index As Integer
With LB
For Index = 0 To .ListCount - 1
If .List(iIndex) = txt Then
GetListIndex = Index
Exit Function
End If
Next Index
End With
GetListIndex = -2
End Function
Function GetWinText(hwnd As Integer) As String

Dim LengthOfText, Buffer$, GetTheText
LengthOfText = SendMessage(hwnd, WM_GETTEXTLENGTH, 0&, 0&)
Buffer$ = Space$(LengthOfText)
GetTheText = SendMessageByString(hwnd, WM_GETTEXT, LengthOfText + 1, Buffer$)
GetWinText = Buffer$
End Function
Sub Form_Move(frm As Form)

DoEvents
ReleaseCapture
ReturnVal% = SendMessage(frm.hwnd, &HA1, 2, 0)
End Sub
Sub AOL40_ReadMail()
tool% = FindChildByClass(AOLWindow(), "AOL Toolbar")
Toolbar% = FindChildByClass(tool%, "_AOL_Toolbar")
icon% = FindChildByClass(Toolbar%, "_AOL_Icon")
Call AOLClickIcon(icon%)
End Sub

Sub AOLClose()

Call Window_Close(AOLWindow())
End Sub
Sub AOLChangeCaption(newcaption)

Call AOLSetText(AOLWindow(), newcaption)
End Sub
Sub AOLSetText(win, txt)

thetext% = SendMessageByString(win, WM_SETTEXT, 0, txt)
End Sub
Function AOLIsOnline() As Integer

welcome% = FindChildByTitle(AOLMDI(), "Welcome, ")
If welcome% = 0 Then
MsgBox "This prog works much better when your signed on.", 64, "Must Be Online"
AOLIsOnline = 0
Exit Function
End If
AOLIsOnline = 1
End Function
Function AOLRoomCount()

Chat% = AOL40_FindChatRoom()
List% = FindChildByClass(Chat%, "_AOL_Listbox")
Count% = SendMessage(List%, LB_GETCOUNT, 0, 0)
AOLRoomCount = Count%
End Function
Sub AOL40_AddRoomCombo(ListBox As ListBox, ComboBox As ComboBox)
Call AOL40_AddRoomList(ListBox)
For Q = 0 To ListBox.ListCount
ComboBox.AddItem (ListBox.List(Q))
Next Q
End Sub
Sub AOL40_AntiIdle()
Modal% = FindWindow("_AOL_Modal", vbNullString)
icon% = FindChildByClass(Modal%, "_AOL_Icon")
AOLClickIcon (AOIcon%)
End Sub

Sub AOL40_KillGlyph()

tool% = FindChildByClass(AOLWindow(), "AOL Toolbar")
Toolbar% = FindChildByClass(tool%, "_AOL_Toolbar")
Glyph% = FindChildByClass(Toolbar%, "_AOL_Glyph")
Call SendMessage(Glyph%, WM_CLOSE, 0, 0)
End Sub


Sub ADD_AOL_LB(itm As String, lst As ListBox)

If lst.ListCount = 0 Then
lst.AddItem itm
Exit Sub
End If
Do Until xx = (lst.ListCount)
Let diss_itm$ = lst.List(xx)
If Trim(LCase(diss_itm$)) = Trim(LCase(itm)) Then Let do_it = "NO"
Let xx = xx + 1
Loop
If do_it = "NO" Then Exit Sub
lst.AddItem itm
End Sub
Sub AOL40_AddRoomList(lst As ListBox)

Dim Index As Long
Dim i As Integer
For Index = 0 To 25
    names$ = String$(256, " ")
    ret = AOLGetList(Index, names$)
    names$ = Left$(Trim$(names$), Len(Trim(names$)))
    ADD_AOL_LB names$, lst
Next Index
endaddroom:
lst.RemoveItem lst.ListCount - 1
i = GetListIndex(lst, AOLUserSN())
If i <> -2 Then lst.RemoveItem i
End Sub
Public Function AOLGetList(Index As Long, Buffer As String)

On Error Resume Next
Dim AOLProcess As Long
Dim ListItemHold As Long
Dim Person As String
Dim ListPersonHold As Long
Dim ReadBytes As Long
room = AOL40_FindChatRoom()
aolhandle = FindChildByClass(room, "_AOL_Listbox")
AOLThread = GetWindowThreadProcessId(aolhandle, AOLProcess)
AOLProcessThread = OpenProcess(PROCESS_VM_READ Or STANDARD_RIGHTS_REQUIRED, False, AOLProcess)
If AOLProcessThread Then
Person$ = String$(4, vbNullChar)
ListItemHold = SendMessage(aolhandle, LB_GETITEMDATA, ByVal CLng(Index), ByVal 0&)
ListItemHold = ListItemHold + 24
Call ReadProcessMemory(AOLProcessThread, ListItemHold, Person$, 4, ReadBytes)
Call RtlMoveMemory(ListPersonHold, ByVal Person$, 4)
ListPersonHold = ListPersonHold + 6
Person$ = String$(16, vbNullChar)
Call ReadProcessMemory(AOLProcessThread, ListPersonHold, Person$, Len(Person$), ReadBytes)
Person$ = Left$(Person$, InStr(Person$, vbNullChar) - 1)
Call CloseHandle(AOLProcessThread)
End If
Buffer$ = Person$
End Function
Sub WAVStop()

Call WAVPlay(" ")
End Sub

Sub WAVLoop(File)

SoundName$ = File
wFlags% = SND_ASYNC Or SND_LOOP
X = sndPlaySound(SoundName$, wFlags%)
End Sub

Function AOLMessageFromIM()
im% = FindChildByTitle(AOLMDI(), ">Instant Message From:")
If im% Then GoTo txt
im% = FindChildByTitle(AOLMDI(), "  Instant Message From:")
If im% Then GoTo txt
Exit Function
txt:
imtext% = FindChildByClass(im%, "RICHCNTL")
IMmessage = GetWinText(imtext%)
sn = AOLSNFromIM()
snlen = Len(AOLSNFromIM()) + 3
blah = Mid(IMmessage, InStr(IMmessagge, sn) + snlen)
AOLMessageFromIM = Left(blah, Len(blah) - 1)
End Function
Sub WAVPlay(File)

SoundName$ = File
wFlags% = SND_ASYNC Or SND_NODEFAULT
X = sndPlaySound(SoundName$, wFlags%)
End Sub

Sub SendCharNum(win, chars)

e = SendMessageByNum(win, WM_CHAR, chars, 0)
End Sub

Sub AOLRespondIM(message)

im% = FindChildByTitle(AOLMDI(), ">Instant Message From:")
If im% Then GoTo Greed
im% = FindChildByTitle(AOLMDI(), "  Instant Message From:")
If im% Then GoTo Greed
Exit Sub
Greed:
e = FindChildByClass(im%, "RICHCNTL")
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e2 = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e2, GW_HWNDNEXT)
Call AOLSetText(e2, message)
Click (e)
pause 0.8
e = FindChildByClass(im%, "RICHCNTL")
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
AOLClickIcon (e)
End Sub

Sub Enter(win)

Call SendCharNum(win, 13)
End Sub
Sub File_Delete(File)

Kill (File)
End Sub
Sub File_Open(File)

Shell (File)
End Sub
Sub File_ReName(sFromLoc As String, sToLoc As String)

Name sOldLoc As sNewLoc
End Sub
Sub Directory_Create(dir)

MkDir dir
End Sub
Sub Directory_Delete(dir)

RmDir (dir)
End Sub

Function GetCaption(hwnd)
hwndLength% = GetWindowTextLength(hwnd)
hwndTitle$ = String$(hwndLength%, 0)
a% = GetWindowText(hwnd, hwndTitle$, (hwndLength% + 1))
GetCaption = hwndTitle$
End Function
Sub sendim(sn, message)
Call AOL40_Keyword("aol://9293:" & sn)
Do: DoEvents
IMWin% = FindChildByTitle(AOLMDI(), "Send Instant Message")
rich% = FindChildByClass(IMWin%, "RICHCNTL")
icon% = FindChildByClass(IMWin%, "_AOL_Icon")
Loop Until rich% <> 0 And icon% <> 0
Call SendMessageByString(rich%, WM_SETTEXT, 0, message)
For X = 1 To 9
icon% = GetWindow(icon%, GW_HWNDNEXT)
Next X
Call pause(0.01)
Click (icon%)
Do: DoEvents
IMWin% = FindChildByTitle(AOLMDI(), "Send Instant Message")
ok% = FindWindow("#32770", "America Online")
If ok% <> 0 Then Call SendMessage(ok%, WM_CLOSE, 0, 0): closer2 = SendMessage(IMWin%, WM_CLOSE, 0, 0): Exit Do
If IMWin% = 0 Then Exit Do
Loop
End Sub
Function AOLUserSN()
On Error Resume Next
aol% = FindWindow("AOL Frame25", "America  Online")
mdi% = FindChildByClass(aol%, "MDIClient")
welcome% = FindChildByTitle(mdi%, "Welcome, ")
WelcomeLength% = GetWindowTextLength(welcome%)
WelcomeTitle$ = String$(200, 0)
a% = GetWindowText(welcome%, WelcomeTitle$, (WelcomeLength% + 1))
User = Mid$(WelcomeTitle$, 10, (InStr(WelcomeTitle$, "!") - 10))
AOLUserSN = User
End Function
Function AOLSNFromIM()

im% = FindChildByTitle(AOLMDI(), ">Instant Message From:")
If im% Then GoTo Greed
im% = FindChildByTitle(AOLMDI(), "  Instant Message From:")
If im% Then GoTo Greed
Exit Function
Greed:
heh$ = GetCaption(im%)
Naw$ = Mid(heh$, InStr(heh$, ":") + 2)
AOLSNFromIM = Naw$
End Function
Public Sub Disable_Ctrl_Alt_Del()

 Dim ret As Integer
 Dim pOld As Boolean
 ret = SystemParametersInfo(SPI_SCREENSAVERRUNNING, True, pOld, 0)
End Sub
Public Sub Enable_Ctrl_Alt_Del()

 Dim ret As Integer
 Dim pOld As Boolean
 ret = SystemParametersInfo(SPI_SCREENSAVERRUNNING, False, pOld, 0)
End Sub
Sub SendMail(sn, subject, message)

tool% = FindChildByClass(AOLWindow(), "AOL Toolbar")
Toolbar% = FindChildByClass(tool%, "_AOL_Toolbar")
icon% = FindChildByClass(Toolbar%, "_AOL_Icon")
icon% = GetWindow(icon%, GW_HWNDNEXT)
Call AOLClickIcon(icon%)
Do: DoEvents
mail% = FindChildByTitle(AOLMDI(), "Write Mail")
Edit% = FindChildByClass(mail%, "_AOL_Edit")
rich% = FindChildByClass(mail%, "RICHCNTL")
icon% = FindChildByClass(mail%, "_AOL_ICON")
Loop Until mail% <> 0 And Edit% <> 0 And rich% <> 0 And icon% <> 0
Call SendMessageByString(Edit%, WM_SETTEXT, 0, sn)
Edit% = GetWindow(Edit%, GW_HWNDNEXT)
Edit% = GetWindow(Edit%, GW_HWNDNEXT)
Edit% = GetWindow(Edit%, GW_HWNDNEXT)
Edit% = GetWindow(Edit%, GW_HWNDNEXT)
Call SendMessageByString(Edit%, WM_SETTEXT, 0, subject)
Call SendMessageByString(rich%, WM_SETTEXT, 0, message)
For GetIcon = 1 To 18
icon% = GetWindow(icon%, GW_HWNDNEXT)
Next GetIcon
Call AOLClickIcon(icon%)
End Sub

Function GetClass(child)
Buffer$ = String$(250, 0)
getclas% = GetClassName(child, Buffer$, 250)
GetClass = Buffer$
End Function
Sub AOL40_Load()

X% = Shell("C:\aol40\waol.exe", 1): NoFreeze% = DoEvents(): Exit Sub
X% = Shell("C:\aol40a\waol.exe", 1): NoFreeze% = DoEvents(): Exit Sub
X% = Shell("C:\aol40b\waol.exe", 1): NoFreeze% = DoEvents(): Exit Sub
End Sub

Function AOLMDI()

aol% = FindWindow("AOL Frame25", vbNullString)
AOLMDI = FindChildByClass(aol%, "MDIClient")
End Function




Sub SendChat2(txt)

rich% = FindChildByClass(AOL40_FindChatRoom, "RICHCNTL")
rich% = GetWindow(rich%, GW_HWNDNEXT)
rich% = GetWindow(rich%, GW_HWNDNEXT)
rich% = GetWindow(rich%, GW_HWNDNEXT)
rich% = GetWindow(rich%, GW_HWNDNEXT)
rich% = GetWindow(rich%, GW_HWNDNEXT)
rich% = GetWindow(rich%, GW_HWNDNEXT)
Call SetFocusAPI(rich%)
Call SendMessageByString(rich%, WM_SETTEXT, 0, txt)
DoEvents
Call SendMessageByNum(rich%, WM_CHAR, 13, 0)
End Sub
Sub AOL40_Keyword(KeyWord As String)
tool% = FindChildByClass(AOLWindow(), "AOL Toolbar")
Tool2% = FindChildByClass(tool%, "_AOL_Toolbar")
icon% = FindChildByClass(Tool2%, "_AOL_Icon")
For GetIcon = 1 To 20
icon% = GetWindow(icon%, 2)
Next GetIcon
Call pause(0.05)
Call Click(icon%)
Do: DoEvents
mdi% = FindChildByClass(AOLWindow(), "MDIClient")
KeyWordWin% = FindChildByTitle(mdi%, "Keyword")
Edit% = FindChildByClass(KeyWordWin%, "_AOL_Edit")
icon2% = FindChildByClass(KeyWordWin%, "_AOL_Icon")
Loop Until KeyWordWin% <> 0 And Edit% <> 0 And icon2% <> 0
Call SendMessageByString(Edit%, WM_SETTEXT, 0, KeyWord)
Call pause(0.05)
Call Click(icon2%)
Call Click(icon2%)
End Sub
Function FreeProcess()

Do: DoEvents
Process = Process + 1
If Process = 50 Then Exit Do
Loop
End Function
Function AOL40_FindChatRoom()
room% = FindChildByClass(AOLMDI(), "AOL Child")
roomlst% = FindChildByClass(room%, "_AOL_Listbox")
roomtxt% = FindChildByClass(room%, "RICHCNTL")
If roomlst% <> 0 And roomtxt% <> 0 Then
AOL40_FindChatRoom = room%
Else
AOL40_FindChatRoom = 0
End If
End Function
Function FindChildByClass(parentw, childhand)

firs% = GetWindow(parentw, 5)
If UCase(Mid(GetClass(firs%), 1, Len(childhand))) Like UCase(childhand) Then GoTo bone
firs% = GetWindow(parentw, GW_CHILD)
If UCase(Mid(GetClass(firs%), 1, Len(childhand))) Like UCase(childhand) Then GoTo bone

While firs%
firss% = GetWindow(parentw, 5)
If UCase(Mid(GetClass(firss%), 1, Len(childhand))) Like UCase(childhand) Then GoTo bone
firs% = GetWindow(firs%, 2)
If UCase(Mid(GetClass(firs%), 1, Len(childhand))) Like UCase(childhand) Then GoTo bone
Wend
FindChildByClass = 0

bone:
room% = firs%
FindChildByClass = room%

End Function

Function FindChildByTitle(parentw, childhand)
firs% = GetWindow(parentw, 5)
If UCase(GetCaption(firs%)) Like UCase(childhand) Then GoTo bone
firs% = GetWindow(parentw, GW_CHILD)

While firs%
firss% = GetWindow(parentw, 5)
If UCase(GetCaption(firss%)) Like UCase(childhand) & "*" Then GoTo bone
firs% = GetWindow(firs%, 2)
If UCase(GetCaption(firs%)) Like UCase(childhand) & "*" Then GoTo bone
Wend
FindChildByTitle = 0

bone:
room% = firs%
FindChildByTitle = room%
End Function
Sub AOLHide()

X = FindWindow("AOL Frame25", 0&)
Window_Hide (X)
End Sub

Sub AOLShow()

X = FindWindow("AOL Frame25", 0&)
Window_Show (X)
End Sub

Function AOLClickList(List)
sendnow% = SendMessage(List, WM_LBUTTONDBLCLK, 0, 0)
End Function
Sub AOLClickIcon(icon%)
sendnow% = SendMessage(icon%, WM_LBUTTONDOWN, 0, 0&)
sendnow% = SendMessage(icon%, WM_LBUTTONUP, 0, 0&)
End Sub
Sub Window_Close(win)

Dim X%
X% = SendMessage(win, WM_CLOSE, 0, 0)
End Sub
Sub StayOnTop(frm As Form)

Dim ontop%
ontop% = SetWindowPos(frm.hwnd, HWND_TOPMOST, 0, 0, 0, 0, FLAGS)
End Sub

Sub Window_Minimize(win)

X = ShowWindow(win, SW_MINIMIZE)
End Sub

Sub Window_Maximize(win)

X = ShowWindow(win, SW_MAXIMIZE)
End Sub


Sub Window_Hide(hwnd)

X = ShowWindow(hwnd, SW_HIDE)
End Sub



Sub Window_Show(hwnd)

X = ShowWindow(hwnd, SW_SHOW)
End Sub
Sub pause(interval)

current = Timer
Do While Timer - current < Val(interval)
DoEvents
Loop
End Sub

Sub Form_Center(frm As Form)
frm.Top = (Screen.Height * 0.85) / 2 - frm.Height / 2
frm.Left = Screen.Width / 2 - frm.Width / 2
End Sub

Sub Form_Maximize(frm As Form)

frm.WindowState = 2
End Sub
Sub Form_Minimize(frm As Form)

frm.WindowState = 1
End Sub
Sub waitforok()

Do
DoEvents
okw = FindWindow("#32770", "America Online")
If proG_STAT$ = "OFF" Then
Exit Sub
Exit Do
End If
DoEvents
Loop Until okw <> 0
   okb = FindChildByTitle(okw, "OK")
   okd = SendMessageByNum(okb, WM_LBUTTONDOWN, 0, 0&)
   oku = SendMessageByNum(okb, WM_LBUTTONUP, 0, 0&)
End Sub
Sub AOLIMsOn()

Call sendim("$IM_ON", "�")
End Sub
Sub AOLIMsOff()

Call sendim("$IM_OFF", "�")
End Sub
Sub AOLRunMenuByString(Application, StringSearch)
ToSearch% = GetMenu(Application)
MenuCount% = GetMenuItemCount(ToSearch%)
For FindString = 0 To MenuCount% - 1
ToSearchSub% = GetSubMenu(ToSearch%, FindString)
MenuItemCount% = GetMenuItemCount(ToSearchSub%)
For GetString = 0 To MenuItemCount% - 1
SubCount% = GetMenuItemID(ToSearchSub%, GetString)
MenuString$ = String$(100, " ")
GetStringMenu% = GetMenuString(ToSearchSub%, SubCount%, MenuString$, 100, 1)
If InStr(UCase(MenuString$), UCase(StringSearch)) Then
MenuItem% = SubCount%
GoTo MatchString
End If
Next GetString
Next FindString
MatchString:
RunTheMenu% = SendMessage(Application, WM_COMMAND, MenuItem%, 0)
End Sub
Sub AOLRunMenu(menu1 As Integer, menu2 As Integer)
Dim AOLWorks As Long
Static Working As Integer
AOLMenus% = GetMenu(FindWindow("AOL Frame25", vbNullString))
AOLSubMenu% = GetSubMenu(AOLMenus%, menu1)
AOLItemID = GetMenuItemID(AOLSubMenu%, menu2)
AOLWorks = CLng(0) * &H10000 Or Working
ClickAOLMenu = SendMessageByNum(FindWindow("AOL Frame25", vbNullString), 273, AOLItemID, 0&)
End Sub


Function AOLWindow()

AOLWindow = FindWindow("AOL Frame25", vbNullString)
End Function





Function FindChatRoom()
aol% = FindWindow("AOL Frame25", vbNullString)
mdi% = FindChildByClass(aol%, "MDIClient")
room% = FindChildByClass(mdi%, "AOL Child")
stuff% = FindChildByClass(room%, "_AOL_Listbox")
MoreStuff% = FindChildByClass(room%, "RICHCNTL")
If stuff% <> 0 And MoreStuff% <> 0 Then
   FindChatRoom = room%
Else:
   FindChatRoom = 0
End If
End Function
Function UserSN()
On Error Resume Next
aol% = FindWindow("AOL Frame25", "America  Online")
mdi% = FindChildByClass(aol%, "MDIClient")
welcome% = FindChildByTitle(mdi%, "Welcome, ")
WelcomeLength% = GetWindowTextLength(welcome%)
WelcomeTitle$ = String$(200, 0)
a% = GetWindowText(welcome%, WelcomeTitle$, (WelcomeLength% + 1))
User = Mid$(WelcomeTitle$, 10, (InStr(WelcomeTitle$, "!") - 10))
UserSN = User
End Function

Sub KillWait()
AO% = FindWindow("AOL Frame25", 0&)
mofo% = FindChildByClass(AO%, "MDIClient")
Hit_Menu "Preferences"
Do
c% = DoEvents()
pre% = FindChildByTitle(mofo%, "Preferences")
Loop Until pre% = 0
ICC% = FindChildByClass(pre%, "_AOL_Icon")
Click (ICC%)
Do
c% = DoEvents()
Moo% = FindWindow("_AOL_Modal", "Chat Preferences")
Loop Until Moo% = 0
d = SendMessageByNum(Moo%, &H10, 0, 0)
d = SendMessageByNum(pre%, &H10, 0, 0)

End Sub
Function IsUserOnline()
aol% = FindWindow("AOL Frame25", vbNullString)
mdi% = FindChildByClass(aol%, "MDIClient")
welcome% = FindChildByTitle(mdi%, "Welcome,")
If welcome% <> 0 Then
   IsUserOnline = 1
Else:
   IsUserOnline = 0
End If
End Function


Sub SendChat(Chat)
room% = FindChatRoom
AORich% = FindChildByClass(room%, "RICHCNTL")

AORich% = GetWindow(AORich%, 2)
AORich% = GetWindow(AORich%, 2)
AORich% = GetWindow(AORich%, 2)
AORich% = GetWindow(AORich%, 2)
AORich% = GetWindow(AORich%, 2)
AORich% = GetWindow(AORich%, 2)

Call SetFocusAPI(AORich%)
Call SendMessageByString(AORich%, WM_SETTEXT, 0, Chat)
DoEvents
Call SendMessageByNum(AORich%, WM_CHAR, 13, 0)
End Sub

Sub TimeOut(Duration)
starttime = Timer
Do While Timer - starttime < Duration
DoEvents
Loop

End Sub



Sub Anti45MinTimer()
AOTimer% = FindWindow("_AOL_Palette", vbNullString)
AOIcon% = FindChildByClass(AOTimer%, "_AOL_Icon")
Click (AOIcon%)
End Sub
Sub AntiIdle()
AOModal% = FindWindow("_AOL_Modal", vbNullString)
AOIcon% = FindChildByClass(AOModal%, "_AOL_Icon")
Click (AOIcon%)
End Sub




Sub KeyWord(TheKeyWord As String)
aol% = FindWindow("AOL Frame25", vbNullString)
AOTooL% = FindChildByClass(aol%, "AOL Toolbar")
AOTool2% = FindChildByClass(AOTooL%, "_AOL_Toolbar")

AOIcon% = FindChildByClass(AOTool2%, "_AOL_Icon")

For GetIcon = 1 To 20
    AOIcon% = GetWindow(AOIcon%, 2)
Next GetIcon

Call TimeOut(0.05)
Click (AOIcon%)

Do: DoEvents
mdi% = FindChildByClass(aol%, "MDIClient")
KeyWordWin% = FindChildByTitle(mdi%, "Keyword")
AOEdit% = FindChildByClass(KeyWordWin%, "_AOL_Edit")
AOIcon2% = FindChildByClass(KeyWordWin%, "_AOL_Icon")
Loop Until KeyWordWin% <> 0 And AOEdit% <> 0 And AOIcon2% <> 0

Call SendMessageByString(AOEdit%, WM_SETTEXT, 0, TheKeyWord)

Call TimeOut(0.05)
Click (AOIcon2%)
Click (AOIcon2%)

End Sub


Sub IMBuddy(Recipiant, message)

aol% = FindWindow("AOL Frame25", vbNullString)
mdi% = FindChildByClass(aol%, "MDIClient")
buddy% = FindChildByTitle(mdi%, "Buddy List Window")

If buddy% = 0 Then
    KeyWord ("BuddyView")
    Do: DoEvents
    Loop Until buddy% <> 0
End If

AOIcon% = FindChildByClass(buddy%, "_AOL_Icon")

For l = 1 To 2
    AOIcon% = GetWindow(AOIcon%, 2)
Next l

Call TimeOut(0.01)
Click (AOIcon%)

Do: DoEvents
IMWin% = FindChildByTitle(mdi%, "Send Instant Message")
AOEdit% = FindChildByClass(IMWin%, "_AOL_Edit")
AORich% = FindChildByClass(IMWin%, "RICHCNTL")
AOIcon% = FindChildByClass(IMWin%, "_AOL_Icon")
Loop Until AOEdit% <> 0 And AORich% <> 0 And AOIcon% <> 0
Call SendMessageByString(AOEdit%, WM_SETTEXT, 0, Recipiant)
Call SendMessageByString(AORich%, WM_SETTEXT, 0, message)

For X = 1 To 9
    AOIcon% = GetWindow(AOIcon%, 2)
Next X

Call TimeOut(0.01)
Click (AOIcon%)

Do: DoEvents
aol% = FindWindow("AOL Frame25", vbNullString)
mdi% = FindChildByClass(aol%, "MDIClient")
IMWin% = FindChildByTitle(mdi%, "Send Instant Message")
OkWin% = FindWindow("#32770", "America Online")
If OkWin% <> 0 Then Call SendMessage(OkWin%, WM_CLOSE, 0, 0): closer2 = SendMessage(IMWin%, WM_CLOSE, 0, 0): Exit Do
If IMWin% = 0 Then Exit Do
Loop

End Sub
Sub IMKeyword(Recipiant, message)

aol% = FindWindow("AOL Frame25", vbNullString)
mdi% = FindChildByClass(aol%, "MDIClient")

Call KeyWord("aol://9293:")

Do: DoEvents
IMWin% = FindChildByTitle(mdi%, "Send Instant Message")
AOEdit% = FindChildByClass(IMWin%, "_AOL_Edit")
AORich% = FindChildByClass(IMWin%, "RICHCNTL")
AOIcon% = FindChildByClass(IMWin%, "_AOL_Icon")
Loop Until AOEdit% <> 0 And AORich% <> 0 And AOIcon% <> 0
Call SendMessageByString(AOEdit%, WM_SETTEXT, 0, Recipiant)
Call SendMessageByString(AORich%, WM_SETTEXT, 0, message)

For X = 1 To 9
    AOIcon% = GetWindow(AOIcon%, 2)
Next X

Call TimeOut(0.01)
Click (AOIcon%)

Do: DoEvents
aol% = FindWindow("AOL Frame25", vbNullString)
mdi% = FindChildByClass(aol%, "MDIClient")
IMWin% = FindChildByTitle(mdi%, "Send Instant Message")
OkWin% = FindWindow("#32770", "America Online")
If OkWin% <> 0 Then Call SendMessage(OkWin%, WM_CLOSE, 0, 0): closer2 = SendMessage(IMWin%, WM_CLOSE, 0, 0): Exit Do
If IMWin% = 0 Then Exit Do
Loop

End Sub

Function GetText(child)
GetTrim = SendMessageByNum(child, 14, 0&, 0&)
TrimSpace$ = Space$(GetTrim)
GetString = SendMessageByString(child, 13, GetTrim + 1, TrimSpace$)
GetText = TrimSpace$
End Function

Function GetchatText()
room% = FindChatRoom
AORich% = FindChildByClass(room%, "RICHCNTL")
chattext = GetText(AORich%)
GetchatText = chattext
End Function

Function LastChatLineWithSN()
chattext$ = GetchatText

For FindChar = 1 To Len(chattext$)

thechar$ = Mid(chattext$, FindChar, 1)
thechars$ = thechars$ & thechar$

If thechar$ = Chr(13) Then
TheChatText$ = Mid(thechars$, 1, Len(thechars$) - 1)
thechars$ = ""
End If

Next FindChar

lastlen = Val(FindChar) - Len(thechars$)
lastline = Mid(chattext$, lastlen, Len(thechars$))

LastChatLineWithSN = lastline
End Function

Function SNFromLastChatLine()
chattext$ = LastChatLineWithSN
ChatTrim$ = Left$(chattext$, 11)
For Z = 1 To 11
    If Mid$(ChatTrim$, Z, 1) = ":" Then
        sn = Left$(ChatTrim$, Z - 1)
    End If
Next Z
SNFromLastChatLine = sn
End Function

Function LastChatLine()
chattext = LastChatLineWithSN
ChatTrimNum = Len(SNFromLastChatLine)
ChatTrim$ = Mid$(chattext, ChatTrimNum + 4, Len(chattext) - Len(SNFromLastChatLine))
LastChatLine = ChatTrim$
End Function

Sub AddRoomToListBox(ListBox As ListBox)
On Error Resume Next

Dim AOLProcess As Long
Dim ListItemHold As Long
Dim Person As String
Dim ListPersonHold As Long
Dim ReadBytes As Long
thelist.Clear

room = FindChatRoom()
aolhandle = FindChildByClass(room, "_AOL_Listbox")

AOLThread = GetWindowThreadProcessId(aolhandle, AOLProcess)
AOLProcessThread = OpenProcess(PROCESS_VM_READ Or STANDARD_RIGHTS_REQUIRED, False, AOLProcess)

If AOLProcessThread Then
For Index = 0 To SendMessage(aolhandle, LB_GETCOUNT, 0, 0) - 1
Person$ = String$(4, vbNullChar)
ListItemHold = SendMessage(aolhandle, LB_GETITEMDATA, ByVal CLng(Index), ByVal 0&)
ListItemHold = ListItemHold + 24
Call ReadProcessMemory(AOLProcessThread, ListItemHold, Person$, 4, ReadBytes)
                        
Call RtlMoveMemory(ListPersonHold, ByVal Person$, 4)
ListPersonHold = ListPersonHold + 6

Person$ = String$(16, vbNullChar)
Call ReadProcessMemory(AOLProcessThread, ListPersonHold, Person$, Len(Person$), ReadBytes)

Person$ = Left$(Person$, InStr(Person$, vbNullChar) - 1)
If Person$ = UserSN Then GoTo Na
ListBox.AddItem Person$
Na:
Next Index
Call CloseHandle(AOLProcessThread)
End If

End Sub

Sub AddRoomToComboBox(ListBox As ListBox, ComboBox As ComboBox)
Call AddRoomToListBox(ListBox)
For Q = 0 To ListBox.ListCount
    ComboBox.AddItem (ListBox.List(Q))
Next Q
End Sub



Sub EliteTalker(word$)
Made$ = ""
For Q = 1 To Len(word$)
    letter$ = ""
    letter$ = Mid$(word$, Q, 1)
    Leet$ = ""
    X = Int(Rnd * 3 + 1)
    If letter$ = "a" Then
    If X = 1 Then Leet$ = "�"
    If X = 2 Then Leet$ = "�"
    If X = 3 Then Leet$ = "�"
    End If
    If letter$ = "b" Then Leet$ = "b"
    If letter$ = "c" Then Leet$ = "�"
    If letter$ = "d" Then Leet$ = "d"
    If letter$ = "e" Then
    If X = 1 Then Leet$ = "�"
    If X = 2 Then Leet$ = "�"
    If X = 3 Then Leet$ = "�"
    End If
    If letter$ = "i" Then
    If X = 1 Then Leet$ = "�"
    If X = 2 Then Leet$ = "�"
    If X = 3 Then Leet$ = "�"
    End If
    If letter$ = "j" Then Leet$ = ",j"
    If letter$ = "n" Then Leet$ = "�"
    If letter$ = "o" Then
    If X = 1 Then Leet$ = "�"
    If X = 2 Then Leet$ = "�"
    If X = 3 Then Leet$ = "�"
    End If
    If letter$ = "s" Then Leet$ = "�"
    If letter$ = "t" Then Leet$ = "�"
    If letter$ = "u" Then
    If X = 1 Then Leet$ = "�"
    If X = 2 Then Leet$ = "�"
    If X = 3 Then Leet$ = "�"
    End If
    If letter$ = "w" Then Leet$ = "vv"
    If letter$ = "y" Then Leet$ = "�"
    If letter$ = "0" Then Leet$ = "�"
    If letter$ = "A" Then
    If X = 1 Then Leet$ = "�"
    If X = 2 Then Leet$ = "�"
    If X = 3 Then Leet$ = "�"
    End If
    If letter$ = "B" Then Leet$ = "�"
    If letter$ = "C" Then Leet$ = "�"
    If letter$ = "D" Then Leet$ = "�"
    If letter$ = "E" Then Leet$ = "�"
    If letter$ = "I" Then
    If X = 1 Then Leet$ = "�"
    If X = 2 Then Leet$ = "�"
    If X = 3 Then Leet$ = "�"
    End If
    If letter$ = "N" Then Leet$ = "�"
    If letter$ = "O" Then Leet$ = "�"
    If letter$ = "S" Then Leet$ = "�"
    If letter$ = "U" Then Leet$ = "�"
    If letter$ = "W" Then Leet$ = "VV"
    If letter$ = "Y" Then Leet$ = "�"
    If letter$ = "`" Then Leet$ = "�"
    If letter$ = "!" Then Leet$ = "�"
    If letter$ = "?" Then Leet$ = "�"
    If Len(Leet$) = 0 Then Leet$ = letter$
    Made$ = Made$ & Leet$
Next Q
SendChat (Made$)
End Sub

Sub IMsOn()
Call IMKeyword("$IM_ON", " ")
End Sub
Sub IMsOff()
Call IMKeyword("$IM_OFF", " ")
End Sub



Sub Attention(thetext As String)

SendChat ("$$$$$$$ ATTENTION $$$$$$$$")
Call TimeOut(0.15)
SendChat (thetext)
Call TimeOut(0.15)
SendChat ("$$$$$$$ ATTENTION $$$$$$$$")
Call TimeOut(0.15)
End Sub

Sub KillGlyph()

aol% = FindWindow("AOL Frame25", vbNullString)
AOTooL% = FindChildByClass(aol%, "AOL Toolbar")
AOTool2% = FindChildByClass(AOTooL%, "_AOL_Toolbar")
Glyph% = FindChildByClass(AOTool2%, "_AOL_Glyph")
Call SendMessage(Glyph%, WM_CLOSE, 0, 0)
End Sub


Function TrimTime()
b$ = Left$(Time$, 5)
HourH$ = Left$(b$, 2)
HourA = Val(HourH$)
If HourA >= 12 Then Ap$ = "PM"
If HourA = 24 Or HourA < 12 Then Ap$ = "AM"
If HourA > 12 Then
    HourA = HourA - 12
End If
If HourA = 0 Then HourA = 12
HourH$ = Str$(HourA)
TrimTime = HourH$ & Right$(b$, 3) & " " & Ap$
End Function
Function TrimTime2()
b$ = Time$
HourH$ = Left$(b$, 2)
HourA = Val(HourH$)
If HourA >= 12 Then Ap$ = "PM"
If HourA = 24 Or HourA < 12 Then Ap$ = "AM"
If HourA > 12 Then
    HourA = HourA - 12
End If
If HourA = 0 Then HourA = 12
HourH$ = Str$(HourA)
TrimTime2 = HourH$ & ":" & Right$(b$, 5) & " " & Ap$
End Function

Function EliteText(word$)
Made$ = ""
For Q = 1 To Len(word$)
    letter$ = ""
    letter$ = Mid$(word$, Q, 1)
    Leet$ = ""
    X = Int(Rnd * 3 + 1)
    If letter$ = "a" Then
    If X = 1 Then Leet$ = "�"
    If X = 2 Then Leet$ = "�"
    If X = 3 Then Leet$ = "�"
    End If
    If letter$ = "b" Then Leet$ = "b"
    If letter$ = "c" Then Leet$ = "�"
    If letter$ = "e" Then
    If X = 1 Then Leet$ = "�"
    If X = 2 Then Leet$ = "�"
    If X = 3 Then Leet$ = "�"
    End If
    If letter$ = "i" Then
    If X = 1 Then Leet$ = "�"
    If X = 2 Then Leet$ = "�"
    If X = 3 Then Leet$ = "�"
    End If
    If letter$ = "j" Then Leet$ = ",j"
    If letter$ = "n" Then Leet$ = "�"
    If letter$ = "o" Then
    If X = 1 Then Leet$ = "�"
    If X = 2 Then Leet$ = "�"
    If X = 3 Then Leet$ = "�"
    End If
    If letter$ = "s" Then Leet$ = "�"
    If letter$ = "t" Then Leet$ = "�"
    If letter$ = "u" Then
    If X = 1 Then Leet$ = "�"
    If X = 2 Then Leet$ = "�"
    If X = 3 Then Leet$ = "�"
    End If
    If letter$ = "w" Then Leet$ = "vv"
    If letter$ = "y" Then Leet$ = "�"
    If letter$ = "0" Then Leet$ = "�"
    If letter$ = "A" Then
    If X = 1 Then Leet$ = "�"
    If X = 2 Then Leet$ = "�"
    If X = 3 Then Leet$ = "�"
    End If
    If letter$ = "B" Then Leet$ = "�"
    If letter$ = "C" Then Leet$ = "�"
    If letter$ = "D" Then Leet$ = "�"
    If letter$ = "E" Then Leet$ = "�"
    If letter$ = "I" Then
    If X = 1 Then Leet$ = "�"
    If X = 2 Then Leet$ = "�"
    If X = 3 Then Leet$ = "�"
    End If
    If letter$ = "N" Then Leet$ = "�"
    If letter$ = "O" Then Leet$ = "�"
    If letter$ = "S" Then Leet$ = "�"
    If letter$ = "U" Then Leet$ = "�"
    If letter$ = "W" Then Leet$ = "VV"
    If letter$ = "Y" Then Leet$ = "�"
    If Len(Leet$) = 0 Then Leet$ = letter$
    Made$ = Made$ & Leet$
Next Q

EliteText = Made$

End Function



Sub IMIgnore(thelist As ListBox)
aol% = FindWindow("AOL Frame25", vbNullString)
mdi% = FindChildByClass(aol%, "MDIClient")
im% = FindChildByTitle(mdi%, ">Instant Message From:")
If im% <> 0 Then
    For findsn = 0 To thelist.ListCount
        If LCase$(thelist.List(findsn)) = LCase$(SNfromIM) Then
            BadIM% = im%
            IMRICH% = FindChildByClass(BadIM%, "RICHCNTL")
            Call SendMessage(IMRICH%, WM_CLOSE, 0, 0)
            Call SendMessage(BadIM%, WM_CLOSE, 0, 0)
        End If
    Next findsn
End If
End Sub
Function SNfromIM()

aol% = FindWindow("AOL Frame25", vbNullString)
mdi% = FindChildByClass(aol%, "MDIClient") '

im% = FindChildByTitle(mdi%, ">Instant Message From:")
If im% Then GoTo Greed
im% = FindChildByTitle(mdi%, "  Instant Message From:")
If im% Then GoTo Greed
Exit Function
Greed:
IMCap$ = GetCaption(im%)
theSN$ = Mid(IMCap$, InStr(IMCap$, ":") + 2)
SNfromIM = theSN$

End Function

Sub Playwav(File)
SoundName$ = File
   wFlags% = SND_ASYNC Or SND_NODEFAULT
   X% = sndPlaySound(SoundName$, wFlags%)

End Sub

Sub KillModal()
Modal% = FindWindow("_AOL_Modal", vbNullString)
Call SendMessage(Modal%, WM_CLOSE, 0, 0)
End Sub




Sub CenterForm(F As Form)
F.Top = (Screen.Height * 0.85) / 2 - F.Height / 2
F.Left = Screen.Width / 2 - F.Width / 2
End Sub
Sub RespondIM(message)

aol% = FindWindow("AOL Frame25", vbNullString)
mdi% = FindChildByClass(aol%, "MDIClient")

im% = FindChildByTitle(mdi%, ">Instant Message From:")
If im% Then GoTo Greed
im% = FindChildByTitle(mdi%, "  Instant Message From:")
If im% Then GoTo Greed
Exit Sub
Greed:
e = FindChildByClass(im%, "RICHCNTL")

e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)


e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e2 = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e2, GW_HWNDNEXT)
Call SendMessageByString(e2, WM_SETTEXT, 0, message)
Click (e)
Call TimeOut(0.8)
im% = FindChildByTitle(mdi%, "  Instant Message From:")
e = FindChildByClass(im%, "RICHCNTL")
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)
e = GetWindow(e, GW_HWNDNEXT)

Click (e)
End Sub

Function MessageFromIM()
aol% = FindWindow("AOL Frame25", vbNullString)
mdi% = FindChildByClass(aol%, "MDIClient")

im% = FindChildByTitle(mdi%, ">Instant Message From:")
If im% Then GoTo Greed
im% = FindChildByTitle(mdi%, "  Instant Message From:")
If im% Then GoTo Greed
Exit Function
Greed:
imtext% = FindChildByClass(im%, "RICHCNTL")
IMmessage = GetText(imtext%)
sn = SNfromIM()
snlen = Len(SNfromIM()) + 3
blah = Mid(IMmessage, InStr(IMmessagge, sn) + snlen)
MessageFromIM = Left(blah, Len(blah) - 1)
End Function

Sub RunMenu(menu1 As Integer, menu2 As Integer)
Dim AOLWorks As Long
Static Working As Integer

AOLMenus% = GetMenu(FindWindow("AOL Frame25", vbNullString))
AOLSubMenu% = GetSubMenu(AOLMenus%, menu1)
AOLItemID = GetMenuItemID(AOLSubMenu%, menu2)
AOLWorks = CLng(0) * &H10000 Or Working
ClickAOLMenu = SendMessageByNum(FindWindow("AOL Frame25", vbNullString), 273, AOLItemID, 0&)

End Sub

Sub RunMenuByString(Application, StringSearch)
ToSearch% = GetMenu(Application)
MenuCount% = GetMenuItemCount(ToSearch%)

For FindString = 0 To MenuCount% - 1
ToSearchSub% = GetSubMenu(ToSearch%, FindString)
MenuItemCount% = GetMenuItemCount(ToSearchSub%)

For GetString = 0 To MenuItemCount% - 1
SubCount% = GetMenuItemID(ToSearchSub%, GetString)
MenuString$ = String$(100, " ")
GetStringMenu% = GetMenuString(ToSearchSub%, SubCount%, MenuString$, 100, 1)

If InStr(UCase(MenuString$), UCase(StringSearch)) Then
MenuItem% = SubCount%
GoTo MatchString
End If

Next GetString

Next FindString
MatchString:
RunTheMenu% = SendMessage(Application, WM_COMMAND, MenuItem%, 0)
End Sub


Sub UpChat()
aol% = FindWindow("AOL Frame25", vbNullString)
AOModal% = FindChildByClass(aol%, "_AOL_Modal")
AOGauge% = FindChildByClass(AOModal%, "_AOL_Gauge")
If AOGauge% <> 0 Then Upp% = AOModal%
Call EnableWindow(aol%, 1)
Call EnableWindow(Upp%, 0)
End Sub
Sub UnUpChat()
aol% = FindWindow("AOL Frame25", vbNullString)
AOModal% = FindChildByClass(aol%, "_AOL_Modal")
AOGauge% = FindChildByClass(AOModal%, "_AOL_Gauge")
If AOGauge% <> 0 Then Upp% = AOModal%
Call EnableWindow(Upp%, 1)
Call EnableWindow(aol%, 0)
End Sub

Sub HideAOL()
aol% = FindWindow("AOL Frame25", vbNullString)
Call ShowWindow(aol%, 0)
End Sub

Sub ShowAOL()
aol% = FindWindow("AOL Frame25", vbNullString)
Call ShowWindow(aol%, 5)
End Sub
Public Sub KillWin(Windo)
X = SendMessageByNum(Windo, WM_CLOSE, 0, 0)
End Sub
Function TrimNull(tstr As Variant) As Variant
   init = InStr(tstr, Chr(0))
   If init Then
      TrimNull = Mid(tstr, 1, init - 1)
   Else
      TrimNull = tstr
   End If
End Function
Function AOLGetUser()
On Error Resume Next
aol% = FindWindow("AOL Frame25", "America  Online")
mdi% = FindChildByClass(aol%, "MDIClient")
welcome% = FindChildByTitle(mdi%, "Welcome, ")
WelcomeLength% = GetWindowTextLength(welcome%)
WelcomeTitle$ = String$(200, 0)
a% = GetWindowText(welcome%, WelcomeTitle$, (WelcomeLength% + 1))
User = Mid$(WelcomeTitle$, 10, (InStr(WelcomeTitle$, "!") - 10))
AOLGetUser = User
End Function
Function AOLGetText(child)
GetTrim = SendMessageByNum(child, 14, 0&, 0&)
TrimSpace$ = Space$(GetTrim)
GetString = SendMessageByString(child, 13, GetTrim + 1, TrimSpace$)

AOLGetText = TrimSpace$
End Function
Function ParaLeft()
   ParaLeft = "�^�(��) "
End Function
Function MahaText()
   MahaText = "/V\�h�v��h� ��� "
End Function
Sub GradientB(TheForm As Form)
    Dim hBrush%
    Dim FormHeight%, red%, StepInterval%, X%, retval%, OldMode%
    Dim FillArea As RECT
    OldMode = TheForm.ScaleMode
    TheForm.ScaleMode = 3  'Pixel
    FormHeight = TheForm.ScaleHeight
' Divide the form into 63 regions
    StepInterval = FormHeight \ 63
    red = 255
    green = 0
    blue = 0
    FillArea.Left = 0
    FillArea.Right = TheForm.ScaleWidth
    FillArea.Top = 0
    FillArea.Bottom = StepInterval
    For X = 1 To 63
               FillArea.Top = FillArea.Bottom
        FillArea.Bottom = FillArea.Bottom + StepInterval
    Next
' Fill the remainder of the form with black
    FillArea.Bottom = FillArea.Bottom + 63
    
    TheForm.ScaleMode = OldMode
End Sub
Sub Hit_Menu(Mnu_str$)
aol% = FindWindow("AOL Frame25", 0&)
mnu% = GetMenu(aol%)
MNU_Count% = GetMenuItemCount(mnu%)
For Top_Level% = 0 To MNU_Count% - 1
    Sub_Mnu% = GetSubMenu(mnu%, Top_Level%)
    Sub_Count% = GetMenuItemCount(Sub_Mnu%)
    For Sub_level% = 0 To Sub_Count% - 1
        Buff$ = Space$(50)
        junk% = GetMenuString(Sub_Mnu%, Sub_level%, Buff$, 50, MF_BYPOSITION)  'As Integer
        Buff$ = Trim$(Buff$): Buff$ = Left(Buff$, Len(Buff$) - 1)
        If Buff$ = "" Then Buff$ = " -"
        If InStr(Buff$, Mnu_str$) Then
            Mnu_ID% = GetMenuItemID(Sub_Mnu%, Sub_level%)
            junk% = SendMessageByNum(aol%, WM_COMMAND, Mnu_ID%, 0)
        End If
    Next Sub_level%
Next Top_Level%
End Sub
Sub Click(button%)
sendnow% = SendMessageByNum(button%, WM_LBUTTONDOWN, &HD, 0)
sendnow% = SendMessageByNum(button%, WM_LBUTTONUP, &HD, 0)
End Sub
               


Sub WavYChaTGreenBlack(thetext)
G$ = thetext
a = Len(G$)
For w = 1 To a Step 4
    l$ = Mid$(G$, w, 1)
    u$ = Mid$(G$, w + 1, 1)
    S$ = Mid$(G$, w + 2, 1)
    T$ = Mid$(G$, w + 3, 1)
    P$ = P$ & "<B><FONT COLOR=" & Chr$(34) & "#00ff00" & Chr$(34) & "><sup>" & l$ & "</sup>" & "<FONT COLOR=" & Chr$(34) & "#008000" & Chr$(34) & ">" & u$ & "<FONT COLOR=" & Chr$(34) & "#000000" & Chr$(34) & "><sub>" & S$ & "</sub>" & "<FONT COLOR=" & Chr$(34) & "#008000" & Chr$(34) & ">" & T$
Next w
SendChat (P$)
End Sub
Function WavYChaTBlueBlack(thetext As String)
G$ = thetext
a = Len(G$)
For w = 1 To a Step 4
    l$ = Mid$(G$, w, 1)
    u$ = Mid$(G$, w + 1, 1)
    S$ = Mid$(G$, w + 2, 1)
    T$ = Mid$(G$, w + 3, 1)
    P$ = P$ & "<B><FONT COLOR=" & Chr$(34) & "#0000ff" & Chr$(34) & "><sup>" & l$ & "</sup>" & "<FONT COLOR=" & Chr$(34) & "#000080" & Chr$(34) & ">" & u$ & "<FONT COLOR=" & Chr$(34) & "#000000" & Chr$(34) & "><sub>" & S$ & "</sub>" & "<FONT COLOR=" & Chr$(34) & "#000080" & Chr$(34) & ">" & T$
Next w
SendChat (P$)
End Function
Function WavYChaTRedBlack(thetext As String)
G$ = thetext
a = Len(G$)
For w = 1 To a Step 4
    l$ = Mid$(G$, w, 1)
    u$ = Mid$(G$, w + 1, 1)
    S$ = Mid$(G$, w + 2, 1)
    T$ = Mid$(G$, w + 3, 1)
    P$ = P$ & "<B><FONT COLOR=" & Chr$(34) & "#ff0000" & Chr$(34) & "><sup>" & l$ & "</sup>" & "<FONT COLOR=" & Chr$(34) & "#800000" & Chr$(34) & ">" & u$ & "<FONT COLOR=" & Chr$(34) & "#000000" & Chr$(34) & "><sub>" & S$ & "</sub>" & "<FONT COLOR=" & Chr$(34) & "#800000" & Chr$(34) & ">" & T$
Next w
SendChat (P$)
End Function
Function WavYChaTGrayPurple(thetext As String)
G$ = thetext
a = Len(G$)
For w = 1 To a Step 4
    l$ = Mid$(G$, w, 1)
    u$ = Mid$(G$, w + 1, 1)
    S$ = Mid$(G$, w + 2, 1)
    T$ = Mid$(G$, w + 3, 1)
    P$ = P$ & "<B><FONT COLOR=" & Chr$(34) & "#c0c0c0" & Chr$(34) & "><sup>" & l$ & "</sup>" & "<FONT COLOR=" & Chr$(34) & "#ff00ff" & Chr$(34) & ">" & u$ & "<FONT COLOR=" & Chr$(34) & "#800080" & Chr$(34) & "><sub>" & S$ & "</sub>" & "<FONT COLOR=" & Chr$(34) & "#ff00ff" & Chr$(34) & ">" & T$
Next w
SendChat (P$)
End Function
Sub SetPreference()
30:
   DoEvents
   preferences% = FindChildByTitle(AOLMDI(), "Preferences")
   If preferences% = 0 Then GoTo 30
40:
   preferences% = FindChildByTitle(AOLMDI(), "Preferences")
   c = FindChildByTitle(preferences%, "Mail")
   button% = GetWindow(c, 2)
   Call Click(button%)
   DoEvents
   pause 0.5
   a = FindWindow("_AOL_MODAL", vbNullString)
   If a = 0 Then GoTo 40
   b = FindChildByTitle(a, "close")
   c = GetWindow(b, 3)
   whocares = SendMessage(c, BM_SETCHECK, 0, 0)
   d = FindChildByTitle(a, "confirm")
   e = GetWindow(d, 2)
   whocares = SendMessage(e, BM_SETCHECK, 1, 0)
400:
   a = FindWindow("_AOL_MODAL", vbNullString)
   button% = FindChildByTitle(a, "OK")
   Call Click(button%)
   DoEvents
   pause 0.5
   a = FindWindow("_AOL_MODAL", vbNullString)
   If a Then GoTo 400
4000:
   whocares = SendMessage(preferences%, WM_CLOSE, 0, 0)
   preferences% = FindChildByTitle(AOLMDI(), "Preferences")
   pause 0.5
   DoEvents
   DoEvents
   If preferences% Then GoTo 4000
End Sub
Function WaitForMailWnd(mailwin As Variant)
15:
   DoEvents
   mdi% = AOLMDI()
   mail% = FindChildByTitle(mdi%, mailwin)
   tree% = FindChildByClass(mail%, "_AOL_TREE")
   okbut% = FindWindow("#32770", "America Online")
   button% = FindChildByTitle(okbut%, "OK")
   nextwin% = GetWindow(button%, 1)
   thestring$ = String(255, 0)
   whocares = SendMessageByString(nextwin%, WM_GETTEXT, 255, thestring$)
   nullinstring = InStr(thestring$, Chr(0))
   If nullinstring Then
      valofret = Mid(thestring$, 1, nullinstring - 1)
   Else
      valofret = thestring$
   End If
   nextstring = Mid(thestring$, 1, 11)
   If nextstring = "You have no" Then
      Call Click(button%)
      MsgBox "You have no " + p0C0C + "!", 16
      WaitForMailWnd = 1
      Exit Function
   End If
   If tree% = 0 Then GoTo 15
   Do Until 2 > 3
      Pwait.Label1.Caption = "Waiting for " + mailwin + " to load up..."
      whocares3 = SendMessage(tree%, LB_GETCOUNT, 0, 0)
      DoEvents
      pause 2
      whocares4 = SendMessage(tree%, LB_GETCOUNT, 0, 0)
      DoEvents
      If whocares3 = whocares4 Then Exit Do
   Loop
   Pwait.Label1.Caption = "Please Wait, Creating Mail List..."
End Function
Function AOLLastChatLine()
getpar% = FindChatRoom()
If getpar% = 0 Then Exit Function
child = FindChildByClass(getpar%, "_AOL_View")
GetTrim = SendMessageByNum(child, 14, 0&, 0&)
TrimSpace$ = Space$(GetTrim)
GetString = SendMessageByString(child, 13, GetTrim + 1, TrimSpace$)

theview$ = TrimSpace$


For FindChar = 1 To Len(theview$)
thechar$ = Mid(theview$, FindChar, 1)
thechars$ = thechars$ & thechar$

If thechar$ = Chr(13) Then
thechatext$ = Mid(thechars$, 1, Len(thechars$) - 1)
thechars$ = ""
End If

Next FindChar

lastlen = Val(FindChar) - Len(thechars$)
lastline = Mid(theview$, lastlen + 1, Len(thechars$) - 1)
AOLLastChatLine = lastline
End Function
Function FindFwdWin(dosloop)
'FindFwdWin = GetParent(FindChildByTitle(FindChildByClass(AOLMDI(), "AOL Child"), "Forward"))
'Exit Function
firs% = GetWindow(FindChildByClass(AOLWindow(), "MDIClient"), 5)
forw% = FindChildByTitle(firs%, "Forward")
If forw% <> 0 Then GoTo bone
firs% = GetWindow(FindChildByClass(AOLWindow(), "MDIClient"), GW_CHILD)

Do: DoEvents
firss% = GetWindow(FindChildByClass(AOLWindow(), "MDIClient"), 5)
forw% = FindChildByTitle(firss%, "Forward")
If forw% <> 0 Then GoTo begis
firs% = GetWindow(firs%, 2)
forw% = FindChildByTitle(firs%, "Forward")
If forw% <> 0 Then GoTo bone
If dosloop = 1 Then Exit Do
Loop
Exit Function
bone:
FindFwdWin = firs%

Exit Function
begis:
FindFwdWin = firss%
End Function
Function FindSendWin(dosloop)
firs% = GetWindow(FindChildByClass(AOLWindow(), "MDIClient"), 5)
forw% = FindChildByTitle(firs%, "Send Now")
If forw% <> 0 Then GoTo bone
firs% = GetWindow(FindChildByClass(AOLWindow(), "MDIClient"), GW_CHILD)

Do: DoEvents
firss% = GetWindow(FindChildByClass(AOLWindow(), "MDIClient"), 5)
forw% = FindChildByTitle(firss%, "Send Now")
If forw% <> 0 Then GoTo begis
firs% = GetWindow(firs%, 2)
forw% = FindChildByTitle(firs%, "Send Now")
If forw% <> 0 Then GoTo bone
If dosloop = 1 Then Exit Do
Loop
Exit Function
bone:
FindSendWin = firs%

Exit Function
begis:
FindSendWin = firss%
End Function


