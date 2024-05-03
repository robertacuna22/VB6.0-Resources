VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{88F7F54F-F24B-4B64-B0E0-2454E1E6DA40}#1.0#0"; "ciaXPButton30.ocx"
Begin VB.Form LoginFrm 
   BorderStyle     =   0  'None
   Caption         =   "System_Login"
   ClientHeight    =   3390
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5070
   FillStyle       =   0  'Solid
   BeginProperty Font 
      Name            =   "Baskerville Old Face"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   3390
   ScaleWidth      =   5070
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox TxtuserType 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7440
      TabIndex        =   14
      Top             =   2400
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   5640
      TabIndex        =   13
      Text            =   "0"
      Top             =   960
      Width           =   255
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Height          =   1935
      Left            =   5640
      TabIndex        =   12
      Top             =   3120
      Width           =   6375
      _ExtentX        =   11245
      _ExtentY        =   3413
      _Version        =   393216
      HeadLines       =   1
      RowHeight       =   15
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Baskerville Old Face"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Baskerville Old Face"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
   Begin VB.TextBox CondtionTxt 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   5520
      TabIndex        =   11
      Text            =   "3"
      Top             =   360
      Width           =   255
   End
   Begin VB.TextBox Text4 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5760
      TabIndex        =   6
      Text            =   "123"
      Top             =   2400
      Width           =   1455
   End
   Begin VB.TextBox Text3 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5760
      TabIndex        =   5
      Text            =   "Nothing"
      Top             =   1920
      Width           =   1455
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   615
      Left            =   6360
      Top             =   1200
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   1085
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
   Begin VB.Frame Frame1 
      Caption         =   "Login"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3135
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4815
      Begin VB.Frame Frame2 
         Caption         =   "User Type"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   960
         TabIndex        =   7
         Top             =   120
         Width           =   3135
         Begin VB.ComboBox LogCmb 
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   345
            Left            =   240
            TabIndex        =   8
            Top             =   240
            Width           =   2655
         End
      End
      Begin ciaXPButton30.XPButton30 LoginCmd 
         Height          =   495
         Left            =   600
         TabIndex        =   3
         Top             =   2160
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   873
         AutoSelectTheme =   -1  'True
         Caption         =   "004C006F00670069006E"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MousePointer    =   1
         UseImageShadow  =   0   'False
         LicValid        =   -1  'True
      End
      Begin VB.TextBox PasTxt 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   1680
         PasswordChar    =   "-"
         TabIndex        =   2
         Top             =   1440
         Width           =   2535
      End
      Begin VB.TextBox UserTxt 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1680
         TabIndex        =   1
         Top             =   960
         Width           =   2535
      End
      Begin ciaXPButton30.XPButton30 ExtCmd 
         Height          =   495
         Left            =   2400
         TabIndex        =   4
         Top             =   2160
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   873
         AutoSelectTheme =   -1  'True
         Caption         =   "0045007800690074"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         UseImageShadow  =   0   'False
         LicValid        =   -1  'True
      End
      Begin VB.Label Label2 
         Caption         =   "Password :"
         BeginProperty Font 
            Name            =   "Constantia"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   600
         TabIndex        =   10
         Top             =   1440
         Width           =   975
      End
      Begin VB.Label Label1 
         Caption         =   "UserName :"
         BeginProperty Font 
            Name            =   "Constantia"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   600
         TabIndex        =   9
         Top             =   960
         Width           =   975
      End
   End
End
Attribute VB_Name = "LoginFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub extcmd_Click()
confirm = MsgBox("Are You Sure You Want to Exit", vbQuestion + vbYesNo)

If confirm = vbYes Then
Unload Me
Main.Timer2.Enabled = True
End If
End Sub

Private Sub Form_Load()
On Error Resume Next
If cn.State = 1 Then
cn.Close
End If

Call condatabase

With rs
.Open "SELECT * FROM accountype ", cn, adOpenKeyset, adLockOptimistic

End With

Do While Not rs.EOF

LogCmb.AddItem rs!usertype
rs.MoveNext

Loop
rs.Close

With rs
.Open "SELECT * FROM tbluseraccount", cn, adOpenDynamic, adLockOptimistic

Set DataGrid1.DataSource = rs
End With


End Sub

Private Sub LogCmb_Click()

If LogCmb.ListIndex = 0 Then

With rs

If cn.State = 1 Then
cn.Close
End If

Call condatabase

.Open "SELECT * FROM tbluseraccount WHERE User_Type = 1 ", cn, adOpenDynamic, adLockOptimistic
End With


Set DataGrid1.DataSource = rs
Set Text3.DataSource = rs
Set Text4.DataSource = rs
Set TxtuserType.DataSource = rs

Text3.DataField = "User_name"
Text4.DataField = "Password"
TxtuserType.DataField = "User_type"

Text1.Text = 1
Main.menuaccnt.Visible = True

UserTxt.Enabled = True
PasTxt.Enabled = True


End If

If LogCmb.ListIndex = 1 Then

If cn.State = 1 Then
cn.Close
End If

Call condatabase

With rs
.Open "SELECT * FROM tbluseraccount WHERE User_Type = 2", cn, adOpenDynamic, adLockOptimistic
Set Text3.DataSource = rs
Set Text4.DataSource = rs
Set TxtuserType.DataSource = rs


Text3.DataField = "User_name"
Text4.DataField = "Password"
TxtuserType.DataField = "User_type"
Text1.Text = 2

Set DataGrid1.DataSource = rs
Main.menuaccnt.Enabled = False

UserTxt.Enabled = True
PasTxt.Enabled = True

End With
End If
End Sub

Private Sub LoginCmd_Click()
On Error Resume Next
'open the recordset tble of UserAccount

If UserTxt.Text = "" And PasTxt.Text = "" Then

Else

Call LogInMe

End If

End Sub

Private Sub PasTxt_Change()

If Not PasTxt.Text = "" Then


rs.Filter = " Password like   '%" & PasTxt.Text & "%' "


End If

End Sub

Private Sub UserTxt_Change()
If Not UserTxt.Text = "" Then
rs.Filter = " User_Name like   '%" & UserTxt.Text & "%' "

LoginCmd.Enabled = True

End If
End Sub
