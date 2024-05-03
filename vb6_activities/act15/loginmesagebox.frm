VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "LOG-IN"
   ClientHeight    =   3000
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4620
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
   ScaleHeight     =   3000
   ScaleWidth      =   4620
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cancmd 
      Caption         =   "Cancel"
      Height          =   495
      Left            =   2400
      TabIndex        =   5
      Top             =   2280
      Width           =   855
   End
   Begin VB.CommandButton licmd 
      Caption         =   "Log-In"
      Height          =   495
      Left            =   1200
      TabIndex        =   4
      Top             =   2280
      Width           =   855
   End
   Begin VB.TextBox passtxt 
      Height          =   495
      IMEMode         =   3  'DISABLE
      Left            =   1440
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   1200
      Width           =   2655
   End
   Begin VB.TextBox usertxt 
      Height          =   495
      Left            =   1440
      TabIndex        =   2
      Top             =   480
      Width           =   2655
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Password:"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   1
      Top             =   1320
      Width           =   975
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "UserName:"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   600
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cancmd_Click()
usertxt.Text = ""
passtxt.Text = ""
usertxt.SetFocus
End Sub

Private Sub licmd_Click()

If passtxt.Text = "negotech" And usertxt.Text = "hb" Then
'MsgBox " Welcome ADMIN! ", vbInformation
MsgBox "WELCOME", vbInformation + vbOKOnly
'MsgBox "Are you sure?", vbQuestion + vbYesNo
'MsgBox "Do you want to try another input", vbQuestion + vbAbortRetryIgnore
'MsgBox "Invalid Username and Password", vbCritical + vbRetryCancel
'MsgBox "tip of the day", vbInformation
ElseIf passtxt.Text = "one" And usertxt.Text = "juan" Then
MsgBox " Welcome MEMBER! ", vbInformation
Else
MsgBox "Invalid Username and Password!!! ", vbCritical

End If

End Sub


