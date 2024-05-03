VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form ChangePassFrm 
   BackColor       =   &H8000000C&
   BorderStyle     =   0  'None
   Caption         =   "DR_Print_1.0v3"
   ClientHeight    =   2565
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   8445
   DrawStyle       =   5  'Transparent
   LinkTopic       =   "Form1"
   ScaleHeight     =   2565
   ScaleWidth      =   8445
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin MSDataGridLib.DataGrid DataGrid1 
      Height          =   1695
      Left            =   360
      TabIndex        =   16
      Top             =   2520
      Visible         =   0   'False
      Width           =   5055
      _ExtentX        =   8916
      _ExtentY        =   2990
      _Version        =   393216
      HeadLines       =   1
      RowHeight       =   15
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
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
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000A&
      Caption         =   "ChangePassword"
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
      TabIndex        =   0
      Top             =   120
      Width           =   8175
      Begin VB.TextBox passvartxt 
         Height          =   285
         Left            =   5400
         TabIndex        =   19
         Top             =   1680
         Visible         =   0   'False
         Width           =   1455
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   4800
         TabIndex        =   18
         Text            =   "3"
         Top             =   1560
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.TextBox usertypetxtvar 
         Height          =   285
         Left            =   4800
         TabIndex        =   17
         Top             =   1200
         Visible         =   0   'False
         Width           =   1455
      End
      Begin VB.TextBox Accntxt 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFFF&
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
         TabIndex        =   9
         Top             =   480
         Width           =   2775
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
         TabIndex        =   8
         Top             =   1560
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
         TabIndex        =   7
         Top             =   1200
         Width           =   1815
      End
      Begin VB.ComboBox usertypecmb 
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
         Locked          =   -1  'True
         TabIndex        =   6
         Text            =   "Choose"
         Top             =   840
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
         TabIndex        =   5
         Top             =   1920
         Visible         =   0   'False
         Width           =   1815
      End
      Begin VB.CommandButton SrchCmd 
         Caption         =   "Search"
         Height          =   375
         Left            =   4440
         TabIndex        =   4
         Top             =   480
         Width           =   735
      End
      Begin VB.TextBox usrvartxt 
         Height          =   375
         Left            =   3960
         TabIndex        =   3
         Text            =   "0"
         Top             =   1320
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.CommandButton Savecmd 
         Caption         =   "Save"
         Height          =   375
         Left            =   4440
         TabIndex        =   2
         Top             =   480
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.CommandButton extcmd 
         Caption         =   "Exit"
         Height          =   375
         Left            =   5280
         TabIndex        =   1
         Top             =   480
         Width           =   735
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Account_Number:"
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
         TabIndex        =   15
         Top             =   480
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
         TabIndex        =   14
         Top             =   840
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
         TabIndex        =   13
         Top             =   1200
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
         TabIndex        =   12
         Top             =   1560
         Width           =   1335
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
         TabIndex        =   11
         Top             =   1920
         Visible         =   0   'False
         Width           =   1335
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
         TabIndex        =   10
         Top             =   1560
         Visible         =   0   'False
         Width           =   135
      End
   End
End
Attribute VB_Name = "ChangePassFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private changeRs As New ADODB.Recordset
Private pasRs As New ADODB.Recordset

Private Sub extcmd_Click()
Main.menuaccnt.Visible = False
Unload Me
End Sub

Private Sub Form_Load()
On Error Resume Next
If cn.State = 1 Then
cn.Close
End If

Call condatabase

With pasRs

.Open "SELECT * FROM  TblUserAccount", cn, adOpenDynamic, adLockOptimistic

End With
Set passvartxt.DataSource = pasRs

passvartxt.DataField = "Password"

End Sub

Private Sub passtxt_Change()
If Not passtxt.Text = "" Then

pasRs.Filter = " Password like '%" & passvartxt.Text & "%' "
Label6.Visible = True
pasconfrmtxt.Visible = True

Else

Label6.Visible = False
pasconfrmtxt.Visible = False

End If
End Sub

Private Sub Savecmd_Click()
On Error Resume Next
Dim saveRs As New ADODB.Recordset
If Not passtxt.Text = pasconfrmtxt.Text Then
MsgBox "Mismatch password confirmation", vbInformation, "Try Again"
passtxt.Text = ""
pasconfrmtxt.Text = ""

ElseIf passtxt.Text = pasconfrmtxt.Text Then
MsgBox "Change password successfully"
saveRs.Fields("Password") = passtxt.Text
saveRs.Update
Savecmd.Visible = False
SrchCmd.Visible = True
Unload Me
End If
End Sub

Private Sub SrchCmd_Click()
Me.Text1.Text = Text1.Text - 1
If cn.State = 1 Then
cn.Close
End If

Call condatabase

With changeRs

.Open "SELECT * FROM  TblUserAccount WHERE AccountNo LIKE '" & Accntxt.Text & "' ", cn, adOpenDynamic, adLockOptimistic

End With
Set DataGrid1.DataSource = changeRs

If changeRs.RecordCount <> 0 Then

Set Accntxt.DataSource = changeRs
Set usertypetxtvar.DataSource = changeRs
Set usernamtxt.DataSource = changeRs
Set passtxt.DataSource = changeRs
Set pasconfrmtxt.DataSource = changeRs

Accntxt.DataField = "AccountNo"
usertypetxtvar.DataField = "User_Type"
usernamtxt.DataField = "User_Name"
passtxt.DataField = "Password"

Accntxt.Enabled = False
usernamtxt.Enabled = True


MsgBox "Required to Change Password", vbInformation


passtxt.Enabled = True
Label9.Enabled = True
passtxt.Text = ""
passtxt.SetFocus
Label6.Enabled = True
pasconfrmtxt.Enabled = True
Savecmd.Visible = True
SrchCmd.Visible = False

ElseIf Text1.Text = 0 Then

MsgBox "Failed 3 times to enter valid account number ", vbCritical, "System Logging out"
Main.Timer2.Enabled = True
Unload Me
Else

MsgBox "Invalid Account Number", vbCritical, "Try Again"

End If



End Sub

Private Sub usertypetxtvar_Change()

If usertypetxtvar.Text = 1 Then

usertypecmb.Text = "Administrator"

ElseIf usertypetxtvar.Text = 2 Then

usertypecmb.Text = "Employee_Agent"

End If
End Sub
