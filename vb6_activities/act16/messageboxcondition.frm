VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   2175
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4035
   LinkTopic       =   "Form1"
   ScaleHeight     =   2175
   ScaleWidth      =   4035
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "EXIT"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1320
      TabIndex        =   0
      Top             =   720
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If MsgBox("Are you sure", vbQuestion + vbYesNo, "Message") = vbYes Then
End
End If
End Sub

Private Sub Form_Load()

'MsgBox "WELCOME", vbInformation + vbOKOnly
'MsgBox "Are you sure?", vbQuestion + vbYesNo
'MsgBox "Do you want to try another input", vbQuestion + vbAbortRetryIgnore
'MsgBox "Invalid Username and Password", vbCritical + vbRetryCancel
'MsgBox "tip of the day", vbInformation
End Sub
