VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form ProgForm 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "System progress"
   ClientHeight    =   2520
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   7740
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2520
   ScaleWidth      =   7740
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame1 
      Caption         =   "Loading.............."
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2295
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   7455
      Begin VB.Timer Timer2 
         Interval        =   1000
         Left            =   1320
         Top             =   1440
      End
      Begin VB.Timer Timer1 
         Interval        =   100
         Left            =   360
         Top             =   1320
      End
      Begin ComctlLib.ProgressBar Progbar1 
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   360
         Width           =   6975
         _ExtentX        =   12303
         _ExtentY        =   450
         _Version        =   327682
         Appearance      =   0
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   6600
         TabIndex        =   8
         Top             =   720
         Width           =   615
      End
      Begin VB.Label Label6 
         Caption         =   "Ver1.0"
         BeginProperty Font 
            Name            =   "Garamond"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   1920
         Width           =   1095
      End
      Begin VB.Label Label5 
         Caption         =   "Progress Date:"
         BeginProperty Font 
            Name            =   "Garamond"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   5040
         TabIndex        =   6
         Top             =   1920
         Width           =   1095
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Welcome to IT Asset System...."
         BeginProperty Font 
            Name            =   "Garamond"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808000&
         Height          =   375
         Left            =   240
         TabIndex        =   5
         Top             =   720
         Width           =   3495
      End
      Begin VB.Label Label3 
         Caption         =   "2018"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   6840
         TabIndex        =   4
         Top             =   1920
         Width           =   375
      End
      Begin VB.Label Label2 
         Caption         =   "To"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   6600
         TabIndex        =   3
         Top             =   1920
         Width           =   255
      End
      Begin VB.Label Label1 
         Caption         =   "2018"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   6120
         TabIndex        =   2
         Top             =   1920
         Width           =   375
      End
   End
End
Attribute VB_Name = "ProgForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Timer1_Timer()

Timer1.Interval = Rnd * 50 + 5

Progbar1.Value = Progbar1.Value + 5

 Label7.Caption = Progbar1.Value & "%"

If Label7.Caption = 100 & "%" Then
MsgBox "Welcome to system"
Main.menuaccnt.Enabled = False
Main.MenuInv.Enabled = False
Main.MenuTran.Enabled = False
Main.Menucus.Enabled = False
Main.MenuLog.Visible = False
Main.Show vbModal
Unload Me
End If
 
End Sub

Private Sub Timer2_Timer()
Label3.Caption = Date

Label3.Caption = Format$(Label3.Caption, "YYYY")
End Sub
