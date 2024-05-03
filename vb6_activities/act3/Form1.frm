VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Example 2"
   ClientHeight    =   4140
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   6075
   LinkTopic       =   "Form1"
   ScaleHeight     =   4140
   ScaleWidth      =   6075
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton dotcmd 
      Caption         =   "*"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   720
      TabIndex        =   16
      Top             =   2520
      Width           =   735
   End
   Begin VB.CommandButton exitcmd 
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3600
      TabIndex        =   15
      Top             =   3000
      Width           =   735
   End
   Begin VB.CommandButton hlcmd 
      Caption         =   "<>"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2880
      TabIndex        =   14
      Top             =   3000
      Width           =   735
   End
   Begin VB.CommandButton equalcmd 
      Caption         =   "="
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2160
      TabIndex        =   13
      Top             =   3000
      Width           =   735
   End
   Begin VB.CommandButton lowcmd 
      Caption         =   ">"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1440
      TabIndex        =   12
      Top             =   3000
      Width           =   735
   End
   Begin VB.CommandButton highcmd 
      Caption         =   "<"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   720
      TabIndex        =   11
      Top             =   3000
      Width           =   735
   End
   Begin VB.CommandButton concmd 
      Caption         =   "concat"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4320
      TabIndex        =   10
      Top             =   2520
      Width           =   735
   End
   Begin VB.CommandButton modcmd 
      Caption         =   "mod"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3600
      TabIndex        =   9
      Top             =   2520
      Width           =   735
   End
   Begin VB.CommandButton minuscmd 
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2880
      TabIndex        =   8
      Top             =   2520
      Width           =   735
   End
   Begin VB.CommandButton pluscmd 
      Caption         =   "+"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2160
      TabIndex        =   7
      Top             =   2520
      Width           =   735
   End
   Begin VB.CommandButton dividecmd 
      Caption         =   "/"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1440
      TabIndex        =   6
      Top             =   2520
      Width           =   735
   End
   Begin VB.TextBox anstxt 
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   2400
      TabIndex        =   5
      Top             =   1800
      Width           =   1455
   End
   Begin VB.TextBox numtxt 
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   2400
      TabIndex        =   4
      Top             =   1200
      Width           =   1455
   End
   Begin VB.TextBox ntxt 
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   2400
      TabIndex        =   3
      Top             =   600
      Width           =   1455
   End
   Begin VB.Label Label3 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "1st number:"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   720
      TabIndex        =   2
      Top             =   600
      Width           =   1335
   End
   Begin VB.Label Label2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "2nd number:"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   720
      TabIndex        =   1
      Top             =   1200
      Width           =   1335
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Answer:"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   720
      TabIndex        =   0
      Top             =   1800
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub concmd_Click()
    anstxt.Text = (ntxt.Text) + (numtxt.Text)
End Sub

Private Sub dividecmd_Click()
    anstxt.Text = Val(ntxt.Text) / Val(numtxt.Text)
End Sub

Private Sub dotcmd_Click()
    anstxt.Text = Val(ntxt.Text) * Val(numtxt.Text)
End Sub

Private Sub equalcmd_Click()
If Val(ntxt.Text) = Val(numtxt.Text) Then
    anstxt.Text = "True"
Else
    anstxt.Text = "False"
End If

End Sub

Private Sub exitcmd_Click()
    End
End Sub

Private Sub highcmd_Click()
If Val(ntxt.Text) < Val(numtxt.Text) Then
    anstxt.Text = "True"
    Else
    anstxt.Text = "False"
End If
 
End Sub
 
Private Sub hlcmd_Click()
    anstxt.Text = Val(ntxt.Text) <> Val(numtxt.Text)
End Sub

Private Sub lowcmd_Click()
    anstxt.Text = Val(ntxt.Text) > Val(numtxt.Text)
End Sub

Private Sub minuscmd_Click()
    anstxt.Text = Val(ntxt.Text) - Val(numtxt.Text)
End Sub

Private Sub modcmd_Click()
    anstxt.Text = Val(ntxt.Text) Mod Val(numtxt.Text)
End Sub

Private Sub pluscmd_Click()
    anstxt.Text = Val(ntxt.Text) + Val(numtxt.Text)
End Sub
