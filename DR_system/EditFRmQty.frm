VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form EditFRmQty 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "System-Edit"
   ClientHeight    =   6225
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   11100
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6225
   ScaleWidth      =   11100
   StartUpPosition =   3  'Windows Default
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   6720
      Top             =   2160
      Width           =   2055
      _ExtentX        =   3625
      _ExtentY        =   582
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.TextBox TxtinvId 
      Height          =   285
      Left            =   6600
      TabIndex        =   12
      Text            =   "Text1"
      Top             =   1560
      Width           =   1335
   End
   Begin VB.TextBox TxtId 
      Height          =   285
      Left            =   4920
      TabIndex        =   11
      Text            =   "Text1"
      Top             =   2400
      Width           =   1455
   End
   Begin VB.TextBox EditQtyTxt 
      Alignment       =   1  'Right Justify
      BackColor       =   &H80000001&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   29.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFC0&
      Height          =   735
      Left            =   120
      TabIndex        =   1
      Top             =   1080
      Width           =   4215
   End
   Begin VB.TextBox TxtTotalStock 
      Height          =   285
      Left            =   4920
      TabIndex        =   10
      Text            =   "Text1"
      Top             =   1200
      Width           =   2775
   End
   Begin VB.TextBox TxtQtyOut 
      Height          =   285
      Left            =   4920
      TabIndex        =   9
      Text            =   "Text1"
      Top             =   840
      Width           =   2775
   End
   Begin VB.TextBox TxtRemain 
      Height          =   285
      Left            =   4920
      TabIndex        =   8
      Text            =   "Text1"
      Top             =   480
      Width           =   2775
   End
   Begin VB.TextBox VarLesstext 
      Height          =   285
      Left            =   6600
      TabIndex        =   7
      Top             =   2640
      Width           =   855
   End
   Begin VB.TextBox VarQtytxt 
      Height          =   285
      Left            =   6600
      TabIndex        =   6
      Top             =   3000
      Width           =   855
   End
   Begin VB.CommandButton EditCmd 
      Caption         =   "Update"
      Height          =   495
      Left            =   120
      TabIndex        =   5
      Top             =   1920
      Width           =   975
   End
   Begin VB.TextBox QtyTxt 
      Alignment       =   1  'Right Justify
      BackColor       =   &H80000001&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   29.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFC0&
      Height          =   735
      Left            =   4920
      TabIndex        =   2
      Top             =   1560
      Width           =   1575
   End
   Begin VB.TextBox ItemDesTxt1 
      Appearance      =   0  'Flat
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   0
      Top             =   360
      Width           =   4215
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Quantity "
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   495
      Left            =   120
      TabIndex        =   4
      Top             =   720
      Width           =   1215
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Item Decription :"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   120
      Width           =   1575
   End
End
Attribute VB_Name = "EditFRmQty"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

End Sub

Private Sub EditCmd_Click()

'ItemFrm.EdTxt.Text = 20

Call GetUpdateStock


End Sub

Private Sub Form_Load()
Call GetRequest23
End Sub

