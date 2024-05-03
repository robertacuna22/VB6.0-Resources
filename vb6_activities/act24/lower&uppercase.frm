VERSION 5.00
Begin VB.Form Form1 
   ClientHeight    =   7215
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   5310
   LinkTopic       =   "Form1"
   ScaleHeight     =   7215
   ScaleWidth      =   5310
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command15 
      Caption         =   "Double Code"
      Height          =   495
      Left            =   600
      MaskColor       =   &H8000000F&
      Style           =   1  'Graphical
      TabIndex        =   17
      Top             =   5640
      Width           =   1215
   End
   Begin VB.CommandButton Command14 
      Caption         =   "Reverse"
      Height          =   495
      Left            =   3480
      TabIndex        =   16
      Top             =   5040
      Width           =   1215
   End
   Begin VB.CommandButton Command13 
      Caption         =   "notification"
      Height          =   495
      Left            =   2040
      TabIndex        =   15
      Top             =   5040
      Width           =   1215
   End
   Begin VB.TextBox Text3 
      Height          =   495
      Left            =   600
      TabIndex        =   14
      Top             =   1440
      Width           =   4215
   End
   Begin VB.CommandButton Command12 
      Caption         =   "show Date Difference"
      Height          =   495
      Left            =   600
      TabIndex        =   13
      Top             =   5040
      Width           =   1215
   End
   Begin VB.CommandButton Command11 
      Caption         =   "Proper Case"
      Height          =   495
      Left            =   3480
      TabIndex        =   12
      Top             =   4320
      Width           =   1215
   End
   Begin VB.CommandButton Command10 
      Caption         =   "show LostFocus"
      Height          =   495
      Left            =   2040
      TabIndex        =   11
      Top             =   4320
      Width           =   1215
   End
   Begin VB.CommandButton Command9 
      Caption         =   "show RTRIM"
      Height          =   495
      Left            =   3480
      TabIndex        =   10
      Top             =   3720
      Width           =   1215
   End
   Begin VB.CommandButton Command8 
      Caption         =   "show TRIM"
      Height          =   495
      Left            =   3480
      TabIndex        =   9
      Top             =   3120
      Width           =   1215
   End
   Begin VB.CommandButton Command7 
      Caption         =   "show LTRIM"
      Height          =   495
      Left            =   3480
      TabIndex        =   8
      Top             =   2520
      Width           =   1215
   End
   Begin VB.CommandButton Command6 
      Caption         =   "show LENGHT"
      Height          =   495
      Left            =   600
      TabIndex        =   7
      Top             =   4320
      Width           =   1215
   End
   Begin VB.CommandButton Command5 
      Caption         =   "show CENTER"
      Height          =   495
      Left            =   2040
      TabIndex        =   6
      Top             =   3120
      Width           =   1215
   End
   Begin VB.CommandButton Command4 
      Caption         =   "show RIGHT"
      Height          =   495
      Left            =   2040
      TabIndex        =   5
      Top             =   3720
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      Caption         =   "show LEFT"
      Height          =   495
      Left            =   2040
      TabIndex        =   4
      Top             =   2520
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "UPPERCASE"
      Height          =   495
      Left            =   600
      TabIndex        =   3
      Top             =   3120
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "LOWERCASE"
      Height          =   495
      Left            =   600
      TabIndex        =   2
      Top             =   2520
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   600
      TabIndex        =   0
      Top             =   240
      Width           =   4215
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   600
      TabIndex        =   1
      Top             =   840
      Width           =   4215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Text2.Text = LCase(Text1.Text)
End Sub

Private Sub Command10_Click()
Text1.Text = LTrim(Text1.Text)
'arrange the text already

End Sub

Private Sub Command11_Click()
Text2.Text = StrConv(Text1.Text, vbProperCase)

End Sub

Private Sub Command12_Click()
'Text3.Text = DateDiff("m", Text1.Text, Text2.Text)
'Text3.Text = DateDiff("d", Text1.Text, Text2.Text)
Text3.Text = DateDiff("yyyy", Text1.Text, Text2.Text)

End Sub


Private Sub Command13_Click()
Text3.Text = DateDiff("yyyy", Text1.Text, Text2.Text)
'Text3.Text = DateDiff("yyyy", Text1.Text, Text2.Text)

End Sub

Private Sub Command14_Click()
Text2.Text = StrReverse(Mid(Text1.Text, 7, 3))
End Sub

Private Sub Command15_Click()
Text2.Text = UCase(Left(Text1.Text, 5))
End Sub

Private Sub Command2_Click()
Text2.Text = UCase(Text1.Text)
End Sub

Private Sub Command3_Click()
Text2.Text = Left(Text1.Text, 5)
End Sub

Private Sub Command4_Click()
Text2.Text = Right(Text1.Text, 5)
End Sub

Private Sub Command5_Click()
Text2.Text = Mid(Text1.Text, 5)
End Sub

Private Sub Command6_Click()
'Text2.Text = Len(Text1.Text)
'Form1.Caption = Len(Text1.Text)
MsgBox Len(Text1.Text)
End Sub

Private Sub Command7_Click()
Text2.Text = LTrim(Text1.Text)
End Sub

Private Sub Command8_Click()
Text2.Text = Trim(Text1.Text)
'nothing happens
End Sub

Private Sub Command9_Click()
Text2.Text = RTrim(Text1.Text)
End Sub
