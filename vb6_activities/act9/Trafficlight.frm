VERSION 5.00
Begin VB.Form Form1 
   Caption         =   " "
   ClientHeight    =   4980
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   3645
   LinkTopic       =   "Form1"
   ScaleHeight     =   4980
   ScaleWidth      =   3645
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command4 
      Caption         =   "EXIT"
      BeginProperty Font 
         Name            =   "Curlz MT"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1920
      TabIndex        =   4
      Top             =   3600
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00E0E0E0&
      BorderStyle     =   0  'None
      Height          =   3855
      Left            =   480
      TabIndex        =   3
      Top             =   720
      Width           =   1215
      Begin VB.Shape Shape3 
         BorderColor     =   &H00808080&
         FillStyle       =   0  'Solid
         Height          =   1335
         Left            =   0
         Shape           =   3  'Circle
         Top             =   2520
         Width           =   1215
      End
      Begin VB.Shape Shape2 
         BorderColor     =   &H00808080&
         FillStyle       =   0  'Solid
         Height          =   1335
         Left            =   0
         Shape           =   3  'Circle
         Top             =   1320
         Width           =   1215
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H00808080&
         FillStyle       =   0  'Solid
         Height          =   1335
         Left            =   0
         Shape           =   3  'Circle
         Top             =   120
         Width           =   1215
      End
   End
   Begin VB.CommandButton Command3 
      Caption         =   "STOP"
      BeginProperty Font 
         Name            =   "Curlz MT"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1920
      TabIndex        =   2
      Top             =   2760
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "READY"
      BeginProperty Font 
         Name            =   "Curlz MT"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1920
      TabIndex        =   1
      Top             =   1920
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "GO"
      BeginProperty Font 
         Name            =   "Curlz MT"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1920
      TabIndex        =   0
      Top             =   1080
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Shape1.FillColor = vbGreen
Shape1.BorderColor = vbBlue
Shape1.BorderWidth = 3
Frame1.BackColor = vbRed
Shape2.FillColor = vbgray
Shape3.FillColor = vbgray
End Sub

Private Sub Command2_Click()
Shape2.FillColor = vbYellow
Shape2.BorderColor = vbWhite
Shape2.BorderWidth = 3
Shape1.BorderWidth = 1
Shape3.BorderWidth = 1
Frame1.BackColor = vbGreen
Shape1.FillColor = vbgray
Shape3.FillColor = vbgray
End Sub

Private Sub Command3_Click()
Shape3.FillColor = vbRed
Shape3.BorderColor = vbWhite
Frame1.BackColor = vbYellow
Shape1.FillColor = vbgray
Shape2.FillColor = vbgray
End Sub

Private Sub Command4_Click()
End
End Sub
