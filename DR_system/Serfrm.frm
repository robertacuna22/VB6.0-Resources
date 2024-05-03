VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form Registerfrm 
   BackColor       =   &H8000000A&
   BorderStyle     =   0  'None
   Caption         =   "System"
   ClientHeight    =   5820
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9630
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5820
   ScaleWidth      =   9630
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   10440
      TabIndex        =   25
      Text            =   "3"
      Top             =   240
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   9840
      Top             =   360
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   9480
      TabIndex        =   22
      Text            =   "Are you sure you want to delete this record ?"
      Top             =   1200
      Visible         =   0   'False
      Width           =   2415
   End
   Begin VB.CommandButton AddnewCmd 
      Caption         =   "AddNew"
      Height          =   375
      Left            =   4920
      TabIndex        =   20
      Top             =   1800
      Width           =   735
   End
   Begin VB.TextBox Accntxt 
      Height          =   285
      Left            =   9480
      TabIndex        =   19
      Top             =   720
      Width           =   1815
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000A&
      Caption         =   "UserRegistration"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2295
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   9015
      Begin VB.CommandButton extcmd 
         Caption         =   "Exit"
         Height          =   375
         Left            =   8160
         TabIndex        =   26
         Top             =   1680
         Width           =   735
      End
      Begin VB.CommandButton Refreshcmd 
         Caption         =   "Refresh"
         Height          =   375
         Left            =   7320
         TabIndex        =   24
         Top             =   1680
         Width           =   735
      End
      Begin VB.CommandButton Deletecmd 
         Caption         =   "Delete"
         Height          =   375
         Left            =   6480
         TabIndex        =   21
         Top             =   1680
         Width           =   735
      End
      Begin VB.TextBox usrvartxt 
         Height          =   375
         Left            =   3960
         TabIndex        =   18
         Text            =   "0"
         Top             =   1320
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Save"
         Enabled         =   0   'False
         Height          =   375
         Left            =   5640
         TabIndex        =   17
         Top             =   1680
         Width           =   735
      End
      Begin VB.TextBox deptxt 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   5880
         TabIndex        =   9
         Top             =   840
         Width           =   1815
      End
      Begin VB.TextBox Desgntxt 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   5880
         TabIndex        =   8
         Top             =   480
         Width           =   1815
      End
      Begin VB.TextBox pasconfrmtxt 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   1560
         PasswordChar    =   "*"
         TabIndex        =   7
         Top             =   1920
         Visible         =   0   'False
         Width           =   1815
      End
      Begin VB.ComboBox usertypecmb 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   1560
         TabIndex        =   6
         Text            =   "Choose"
         Top             =   840
         Width           =   1815
      End
      Begin VB.TextBox usernamtxt 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1560
         TabIndex        =   5
         Top             =   1200
         Width           =   1815
      End
      Begin VB.TextBox passtxt 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   1560
         PasswordChar    =   "*"
         TabIndex        =   4
         Top             =   1560
         Width           =   1815
      End
      Begin VB.TextBox Namtxt 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFFF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1560
         TabIndex        =   3
         Top             =   480
         Width           =   2775
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "X"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   5.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   135
         Left            =   1440
         TabIndex        =   27
         Top             =   1560
         Visible         =   0   'False
         Width           =   135
      End
      Begin VB.Label Label8 
         BackStyle       =   0  'Transparent
         Caption         =   "Dept :"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   4920
         TabIndex        =   16
         Top             =   840
         Width           =   615
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "Designation :"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   4920
         TabIndex        =   15
         Top             =   480
         Width           =   975
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Transparent
         Caption         =   "Confirm_Pass :"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   14
         Top             =   1920
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "Pass_Required :"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   13
         Top             =   1560
         Width           =   1335
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Username_Required :"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   1200
         Width           =   1335
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "User_Type :"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   840
         Width           =   1335
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Name_Required :"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   480
         Width           =   1335
      End
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Height          =   3015
      Left            =   120
      TabIndex        =   2
      Top             =   2640
      Width           =   9015
      _ExtentX        =   15901
      _ExtentY        =   5318
      _Version        =   393216
      AllowUpdate     =   0   'False
      Appearance      =   0
      Enabled         =   -1  'True
      ForeColor       =   4210752
      HeadLines       =   1
      RowHeight       =   16
      RowDividerStyle =   4
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Calibri"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Calibri"
         Size            =   8.25
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
   Begin MSDataGridLib.DataGrid DataGrid2 
      Height          =   3015
      Left            =   10320
      TabIndex        =   23
      Top             =   2040
      Visible         =   0   'False
      Width           =   2535
      _ExtentX        =   4471
      _ExtentY        =   5318
      _Version        =   393216
      AllowUpdate     =   0   'False
      Appearance      =   0
      Enabled         =   -1  'True
      ForeColor       =   4210752
      HeadLines       =   1
      RowHeight       =   16
      RowDividerStyle =   4
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Calibri"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Calibri"
         Size            =   8.25
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
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Californian FB"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1080
      TabIndex        =   0
      Top             =   240
      Width           =   1575
   End
End
Attribute VB_Name = "Registerfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private userRs As New ADODB.Recordset

Private Sub AddnewCmd_Click()
If cn.State = 1 Then
cn.Close
End If

Call condatabase

With userRs

.Open "SELECT FULL_NAME,User_Name,User_type,Designation,Dept,AccountNo FROM  TblUserAccount ORDER BY UserID DESC  ", cn, adOpenDynamic, adLockOptimistic

End With

Accntxt.Text = userRs!AccountNo

Set DataGrid1.DataSource = userRs


Namtxt.Enabled = True

Namtxt.SetFocus
Command1.Enabled = True
AddnewCmd.Enabled = False

Me.Accntxt.Text = Accntxt.Text + 1 + 17
Refreshcmd.Enabled = False
End Sub

Private Sub Command1_Click()
If cn.State = 1 Then
cn.Close
End If

Call condatabase

With userRs

.Open "SELECT * FROM  TblUserAccount WHERE Password LIKE '" & passtxt.Text & "' ", cn, adOpenDynamic, adLockOptimistic

End With

If userRs.RecordCount <> 0 Then


MsgBox "Try unique password", vbInformation, "Invalid Password"

passtxt.Text = ""
pasconfrmtxt.Text = ""

Else


If usrvartxt.Text = 0 And passtxt.Text = "" And pasconfrmtxt.Text = "" Then

MsgBox "Required Usertype and Password", vbInformation

ElseIf passtxt.Text = pasconfrmtxt.Text Then
MsgBox "Account Number:" & "    " & Accntxt.Text, vbInformation, "Remember your Account"
Call GetAccount
Call useRegister

'Set DataGrid1.DataSource = regsRs
Command1.Enabled = False
AddnewCmd.Enabled = True
Refreshcmd.Enabled = True
Label9.Visible = False
passtxt.Text = ""
pasconfrmtxt.Text = ""
usertypecmb.Text = "Choose"
Namtxt.Text = ""
usernamtxt.Text = ""
Desgntxt.Text = ""
deptxt.Text = ""
Accntxt.Text = ""
Namtxt.Enabled = False
Else

MsgBox "Mismatch of Password Confifmation", vbCritical, "Try Again"
passtxt.Text = ""
pasconfrmtxt.Text = ""
Label9.Visible = True
passtxt.SetFocus
End If


End If

End Sub

Private Sub Deletecmd_Click()
Dim delrs As New ADODB.Recordset

Dim voice As SpVoice

Set voice = New SpVoice
voice.Volume = 100

voice.Speak Text1, SVSFlagsAsync


With delrs

.Open "SELECT FULL_NAME,User_Name,User_type,Designation,Dept,AccountNo FROM tbluseraccount", cn, adOpenDynamic, adLockOptimistic

End With

If MsgBox("Are you sure you want to delete this record", vbQuestion + vbYesNo) = vbYes Then

delrs.Delete

MsgBox "Record has ben deleted", vbInformation

Set DataGrid2.DataSource = delrs
Set DataGrid1.DataSource = Nothing
Timer1.Enabled = True
End If
End Sub

Private Sub Desgntxt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then

deptxt.SetFocus

End If

End Sub

Private Sub extcmd_Click()
Unload Me
End Sub

Private Sub Form_Load()
Dim accntrs As New ADODB.Recordset
If cn.State = 1 Then
cn.Close
End If

Call condatabase

' open table for AccountType

With accntrs
.Open "SELECT * FROM accountype", cn, adOpenKeyset, adLockOptimistic

End With


' Execute the usertype list from AccountType to Combo Box

Do While Not accntrs.EOF

usertypecmb.AddItem "" & accntrs!usertype
accntrs.MoveNext

Loop
accntrs.Close

' Will Execute the Table tblaccountnum  to textbox as desc

If cn.State = 1 Then
cn.Close
End If

Call condatabase

Dim rsNum As New ADODB.Recordset

With rsNum

.Open "SELECT * FROM tblaccountnum ORDER BY AccountNumber Desc", cn, adOpenDynamic, adLockOptimistic

End With

Accntxt.Text = rsNum!AccountNumber


If cn.State = 1 Then
cn.Close
End If

Call condatabase

With userRs

.Open "SELECT FULL_NAME,User_Name,User_type,Designation,Dept,AccountNo FROM  tbluseraccount ", cn, adOpenDynamic, adLockOptimistic

End With


Set DataGrid1.DataSource = userRs
End Sub

Private Sub Namtxt_Change()
If Not Namtxt.Text = "" Then
usrvartxt.Enabled = True
usertypecmb.Enabled = True
usernamtxt.Enabled = True
passtxt.Enabled = True
Desgntxt.Enabled = True
pasconfrmtxt.Enabled = True
deptxt.Enabled = True

Else
usrvartxt.Enabled = False
usertypecmb.Enabled = False
usernamtxt.Enabled = False
passtxt.Enabled = False
Desgntxt.Enabled = False
pasconfrmtxt.Enabled = False
deptxt.Enabled = False

End If
End Sub

Private Sub Namtxt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then

usertypecmb.SetFocus

End If
End Sub

Private Sub pasconfrmtxt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then

Desgntxt.SetFocus

End If

End Sub

Private Sub passtxt_Change()
If Not passtxt.Text = "" Then

Label6.Visible = True
pasconfrmtxt.Visible = True

Else

Label6.Visible = False
pasconfrmtxt.Visible = False

End If

End Sub

Private Sub passtxt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then

pasconfrmtxt.SetFocus

End If

End Sub

Private Sub Refreshcmd_Click()
Dim refreshRs As New ADODB.Recordset

' Will Execute the Table tblaccountnum  to textbox as desc


If cn.State = 1 Then
cn.Close
End If

Call condatabase

Dim rsNum As New ADODB.Recordset

With rsNum

.Open "SELECT * FROM tblaccountnum ORDER BY AccountNumber Desc", cn, adOpenDynamic, adLockOptimistic

End With

Accntxt.Text = rsNum!AccountNumber



If cn.State = 1 Then
cn.Close
End If

Call condatabase

With refreshRs

.Open "SELECT FULL_NAME,User_Name,User_type,Designation,Dept,AccountNo FROM TblUserAccount ", cn, adOpenDynamic, adLockOptimistic

End With

Set DataGrid1.DataSource = refreshRs


Namtxt.Enabled = False
'Deletecmd.Visible = True
'Refreshcmd.Visible = False
End Sub

Private Sub Timer1_Timer()
Me.Text2 = Text2.Text - 1

If cn.State = 1 Then
cn.Close
End If

Call condatabase


If Text2 = 0 Then

With userRs

.Open "SELECT FULL_NAME,User_Name,User_type,Designation,Dept,AccountNo FROM  TblUserAccount ORDER BY UserID DESC  ", cn, adOpenDynamic, adLockOptimistic

End With


Set DataGrid1.DataSource = userRs
Text2 = 3
Timer1.Enabled = False
End If

End Sub

Private Sub usernamtxt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then

passtxt.SetFocus

End If

End Sub

Private Sub usertypecmb_Click()

If usertypecmb.ListIndex = 0 Then

usrvartxt.Text = 1

ElseIf usertypecmb.ListIndex = 1 Then

usrvartxt.Text = 2

End If

End Sub

Private Sub usertypecmb_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then

usernamtxt.SetFocus

End If
End Sub
