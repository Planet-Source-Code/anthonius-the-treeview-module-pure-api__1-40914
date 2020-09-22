VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   " Treeview Test"
   ClientHeight    =   3660
   ClientLeft      =   2235
   ClientTop       =   1635
   ClientWidth     =   6450
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   238
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   ScaleHeight     =   3660
   ScaleWidth      =   6450
   Begin VB.CommandButton Command1 
      Caption         =   "Create"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   4800
      TabIndex        =   0
      Top             =   2985
      Width           =   1365
   End
   Begin VB.Label Label1 
      Caption         =   "Events"
      Height          =   2610
      Left            =   4050
      TabIndex        =   1
      Top             =   30
      Width           =   2340
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    
    Dim hRoot As Long, hChild As Long, hNext As Long, hTemp As Long
    
    hIml = ImgLoadList(App.Path & "\resource.bmp", &HC8D0D4, False, 800, 16)
    Call TvwCreateEx(Me.hwnd)
    Call TvwImageList(hIml)

    hRoot = TvwAddItem("", 0, "root", "Zoznam", 0)
    hChild = TvwAddItem("root", tvwFirst, "today", "Private", 1)
    hTemp = TvwAddItem("today", tvwLast, "notes", "Poznámky", 2)
    hTemp = TvwAddItem("today", tvwLast, "calendar", "Kalendár", 3)
    hTemp = TvwAddItem("today", tvwLast, "contacts", "Adresár", 4)
    hTemp = TvwAddItem("today", tvwLast, "favorites", "Ob¾úbené", 5)

End Sub

