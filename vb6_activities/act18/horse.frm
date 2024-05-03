VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Form1"
   ClientHeight    =   8220
   ClientLeft      =   120
   ClientTop       =   570
   ClientWidth     =   10260
   BeginProperty Font 
      Name            =   "Calibri"
      Size            =   11.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   8220
   ScaleWidth      =   10260
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   720
      Top             =   7680
   End
   Begin VB.CommandButton Command1 
      Caption         =   "START"
      BeginProperty Font 
         Name            =   "Harrington"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5160
      MaskColor       =   &H8000000F&
      TabIndex        =   0
      Top             =   7680
      Width           =   1215
   End
   Begin VB.Image Image1 
      Height          =   930
      Index           =   4
      Left            =   600
      Picture         =   "horse.frx":0000
      Top             =   6480
      Width           =   1500
   End
   Begin VB.Image Image1 
      Height          =   930
      Index           =   3
      Left            =   600
      Picture         =   "horse.frx":106C
      Top             =   5280
      Width           =   1500
   End
   Begin VB.Image Image1 
      Height          =   930
      Index           =   2
      Left            =   600
      Picture         =   "horse.frx":20D8
      Top             =   3840
      Width           =   1500
   End
   Begin VB.Image Image1 
      Height          =   930
      Index           =   1
      Left            =   600
      Picture         =   "horse.frx":3144
      Top             =   2520
      Width           =   1500
   End
   Begin VB.Image Image1 
      Height          =   930
      Index           =   0
      Left            =   600
      Picture         =   "horse.frx":41B0
      Top             =   1200
      Width           =   1500
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "TURTLE EDITION"
      BeginProperty Font 
         Name            =   "Poor Richard"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   495
      Left            =   3000
      TabIndex        =   2
      Top             =   480
      Width           =   4215
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "PLAY VIDEOKARERA HERE"
      BeginProperty Font 
         Name            =   "Poor Richard"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   735
      Left            =   1560
      TabIndex        =   1
      Top             =   0
      Width           =   7575
   End
   Begin VB.Shape Shape6 
      BorderColor     =   &H00FFFFFF&
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00C000C0&
      FillStyle       =   4  'Upward Diagonal
      Height          =   735
      Left            =   2160
      Top             =   6720
      Width           =   7575
   End
   Begin VB.Shape Shape4 
      BorderColor     =   &H00FFFFFF&
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00C000C0&
      FillStyle       =   4  'Upward Diagonal
      Height          =   735
      Left            =   2160
      Top             =   5400
      Width           =   7575
   End
   Begin VB.Shape Shape3 
      BorderColor     =   &H00FFFFFF&
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00C000C0&
      FillStyle       =   4  'Upward Diagonal
      Height          =   735
      Left            =   2160
      Top             =   4080
      Width           =   7575
   End
   Begin VB.Shape Shape2 
      BorderColor     =   &H00FFFFFF&
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00C000C0&
      FillStyle       =   4  'Upward Diagonal
      Height          =   735
      Left            =   2160
      Top             =   1440
      Width           =   7575
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00FFFFFF&
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00C000C0&
      FillStyle       =   4  'Upward Diagonal
      Height          =   735
      Left            =   2160
      Top             =   2760
      Width           =   7575
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00C00000&
      BorderWidth     =   3
      X1              =   9720
      X2              =   9720
      Y1              =   1320
      Y2              =   7560
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim x As Integer

Private Sub Command1_Click()
Timer1.Enabled = True
End Sub


Private Sub Timer1_Timer()
Randomize

x = Int(Rnd() * 5)
Image1(x).Left = Image1(x).Left + 100

If Image1(x).Left >= 7990 Then
Image1(x).Picture = LoadPicture(App.Path & "\" & "winner.gif")
Timer1.Enabled = False
End If

End Sub
