VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form ARForm 
   BackColor       =   &H80000003&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Employee Details"
   ClientHeight    =   10350
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   10095
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10350
   ScaleWidth      =   10095
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   6840
      Top             =   480
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H80000002&
      Caption         =   "Information"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   10095
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   9855
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3975
         Left            =   240
         TabIndex        =   3
         Top             =   6000
         Width           =   9375
         _ExtentX        =   16536
         _ExtentY        =   7011
         _Version        =   393216
         BackColor       =   -2147483644
         HeadLines       =   1
         RowHeight       =   16
         RowDividerStyle =   0
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Garamond"
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
      Begin VB.TextBox TxtSearch 
         BackColor       =   &H80000013&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000005&
         Height          =   285
         Left            =   6840
         TabIndex        =   22
         Top             =   5640
         Width           =   2775
      End
      Begin VB.Frame Frame2 
         BackColor       =   &H80000002&
         Caption         =   "TRANSFER FROM:"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404000&
         Height          =   3975
         Left            =   240
         TabIndex        =   6
         Top             =   1320
         Width           =   9375
         Begin VB.Frame Frame3 
            BackColor       =   &H80000002&
            Caption         =   "Under"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   495
            Left            =   1440
            TabIndex        =   27
            Top             =   240
            Width           =   2415
            Begin VB.OptionButton Option1 
               BackColor       =   &H80000002&
               Caption         =   "Company"
               ForeColor       =   &H00004000&
               Height          =   195
               Left            =   240
               TabIndex        =   29
               Top             =   240
               Width           =   1215
            End
            Begin VB.OptionButton Option2 
               BackColor       =   &H80000002&
               Caption         =   "Coop"
               ForeColor       =   &H000000FF&
               Height          =   195
               Left            =   1440
               TabIndex        =   28
               Top             =   240
               Width           =   855
            End
         End
         Begin VB.TextBox TxtCompany 
            BackColor       =   &H80000003&
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
            Left            =   1440
            Locked          =   -1  'True
            TabIndex        =   26
            Top             =   3240
            Width           =   1935
         End
         Begin VB.TextBox TxtLastVar 
            BackColor       =   &H80000003&
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
            Left            =   1440
            TabIndex        =   24
            Top             =   1440
            Width           =   1935
         End
         Begin VB.TextBox TxtDate 
            Appearance      =   0  'Flat
            BackColor       =   &H80000003&
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
            Left            =   6600
            TabIndex        =   21
            Top             =   960
            Width           =   1335
         End
         Begin VB.TextBox TxtTime 
            Appearance      =   0  'Flat
            BackColor       =   &H80000003&
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
            Left            =   6600
            TabIndex        =   19
            Top             =   1320
            Width           =   1335
         End
         Begin VB.TextBox TxtDiv 
            BackColor       =   &H80000003&
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
            Left            =   1440
            Locked          =   -1  'True
            TabIndex        =   18
            Top             =   2880
            Width           =   1935
         End
         Begin VB.TextBox TxtFirstVar 
            BackColor       =   &H80000003&
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
            Left            =   1440
            TabIndex        =   15
            Top             =   1080
            Width           =   1935
         End
         Begin VB.TextBox TxtDept 
            BackColor       =   &H80000003&
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
            Left            =   1440
            Locked          =   -1  'True
            TabIndex        =   13
            Top             =   2160
            Width           =   1935
         End
         Begin VB.TextBox TxtCost 
            BackColor       =   &H80000003&
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
            Left            =   1440
            Locked          =   -1  'True
            TabIndex        =   12
            Top             =   2520
            Width           =   1935
         End
         Begin VB.TextBox TxtEmpNo 
            BackColor       =   &H80000003&
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
            Left            =   1440
            Locked          =   -1  'True
            TabIndex        =   8
            Top             =   1800
            Width           =   1935
         End
         Begin VB.TextBox TxtEmpName 
            BackColor       =   &H80000003&
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
            Left            =   4920
            Locked          =   -1  'True
            TabIndex        =   7
            Top             =   2760
            Visible         =   0   'False
            Width           =   2775
         End
         Begin VB.Label Label13 
            BackStyle       =   0  'Transparent
            Caption         =   "LastName:"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   360
            TabIndex        =   30
            Top             =   1440
            Width           =   975
         End
         Begin VB.Label Label12 
            BackStyle       =   0  'Transparent
            Caption         =   "Company:"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   480
            TabIndex        =   25
            Top             =   3240
            Width           =   855
         End
         Begin VB.Label Label1 
            BackStyle       =   0  'Transparent
            Caption         =   "Time:"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   6000
            TabIndex        =   20
            Top             =   1320
            Width           =   495
         End
         Begin VB.Label Label5 
            BackStyle       =   0  'Transparent
            Caption         =   "Division:"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   360
            TabIndex        =   17
            Top             =   2880
            Width           =   975
         End
         Begin VB.Label Label4 
            BackStyle       =   0  'Transparent
            Caption         =   "Date:"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   6000
            TabIndex        =   16
            Top             =   960
            Width           =   615
         End
         Begin VB.Label Label11 
            BackStyle       =   0  'Transparent
            Caption         =   "Cost_Code:"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   240
            TabIndex        =   14
            Top             =   2520
            Width           =   1095
         End
         Begin VB.Label Label10 
            BackStyle       =   0  'Transparent
            Caption         =   "FirstName:"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   240
            TabIndex        =   11
            Top             =   1080
            Width           =   1215
         End
         Begin VB.Label Label2 
            BackStyle       =   0  'Transparent
            Caption         =   "Dept:"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   720
            TabIndex        =   10
            Top             =   2160
            Width           =   615
         End
         Begin VB.Label Label3 
            BackStyle       =   0  'Transparent
            Caption         =   "EmpNo:"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   600
            TabIndex        =   9
            Top             =   1800
            Width           =   615
         End
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Refresh"
         Height          =   435
         Left            =   1320
         TabIndex        =   2
         Top             =   5400
         Width           =   975
      End
      Begin VB.CommandButton CmdAddItem 
         Caption         =   "Add"
         Height          =   435
         Left            =   240
         TabIndex        =   1
         Top             =   5400
         Width           =   975
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "Search*"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFC0&
         Height          =   255
         Left            =   6240
         TabIndex        =   31
         Top             =   5640
         Width           =   615
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Transparent
         Caption         =   "*Search"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808000&
         Height          =   255
         Left            =   8760
         TabIndex        =   23
         Top             =   4680
         Width           =   855
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "SEE.."
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   30
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808000&
         Height          =   615
         Left            =   240
         TabIndex        =   5
         Top             =   240
         Width           =   1935
      End
      Begin VB.Label Label8 
         BackStyle       =   0  'Transparent
         Caption         =   "Solutions Experts and Enablers Incorporated"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404000&
         Height          =   255
         Left            =   360
         TabIndex        =   4
         Top             =   840
         Width           =   5415
      End
   End
End
Attribute VB_Name = "ARForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CmdAddItem_Click()

If TransFrm.Addcmd.Enabled = True Then

Set TransFrm.DelTxt.DataSource = Nothing
Set TransFrm.CostTxt.DataSource = Nothing
Set TransFrm.TxtEmpNo.DataSource = Nothing

TransFrm.DelTxt = TxtFirstVar.Text & " " & TxtLastVar.Text

TransFrm.DelTxt = TransFrm.DelTxt.Text

TransFrm.CostTxt.Text = Txtcost.Text

TransFrm.TxtEmpNo.Text = TxtEmpNo.Text

TransFrm.Addcmd.Enabled = True

Call viewstore
Unload Me

ElseIf Not FormInvIn.TxtPtafNo.Text = "" Then

FormInvIn.TxtFNam.Text = TxtFirstVar.Text & " " & TxtLastVar.Text
FormInvIn.TxtFcost.Text = Txtcost.Text
FormInvIn.TxtFemp.Text = TxtEmpNo.Text
FormInvIn.TxtDept.Text = TxtDept.Text
FormInvIn.TxtDiv.Text = TxtDiv.Text
Call GetItemSU
Unload Me

End If




End Sub

Private Sub Form_Load()
Call GetEmployeeView
End Sub

Private Sub Timer1_Timer()
TxtTime.Text = Time
TxtDate.Text = Date
End Sub

Private Sub TxtSearch_Change()

Call GetEmployeeSearch

End Sub
