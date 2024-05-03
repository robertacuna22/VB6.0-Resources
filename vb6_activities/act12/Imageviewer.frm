VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7185
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8115
   BeginProperty Font 
      Name            =   "Calibri"
      Size            =   9.75
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   7185
   ScaleWidth      =   8115
   StartUpPosition =   3  'Windows Default
   Begin VB.FileListBox File1 
      Height          =   2340
      Left            =   5160
      TabIndex        =   2
      Top             =   3720
      Width           =   2055
   End
   Begin VB.DirListBox Dir1 
      Height          =   2385
      Left            =   5160
      TabIndex        =   1
      Top             =   1200
      Width           =   2055
   End
   Begin VB.DriveListBox Drive1 
      Height          =   345
      Left            =   5160
      TabIndex        =   0
      Top             =   720
      Width           =   2055
   End
   Begin VB.Image Image1 
      Height          =   6375
      Left            =   360
      Stretch         =   -1  'True
      Top             =   240
      Width           =   4575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Dir1_Change()
File1.Path = Dir1.Path
File1.Pattern = "*.jpg;*.gif;*.wmf"
End Sub

Private Sub Drive1_Change()
Dir1.Path = Drive1.Path
File1.Path = Dir1.Path
End Sub

Private Sub File1_Click()
Image1.Picture = LoadPicture(Dir1.Path & "\" & File1.FileName)
End Sub

Private Sub Form_Load()
File1.Pattern = "*.jpg;*.gif;*.wmf;*.bmp"
End Sub
