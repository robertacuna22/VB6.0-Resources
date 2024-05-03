VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form EditinfoFrm 
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "Delivery System"
   ClientHeight    =   5670
   ClientLeft      =   120
   ClientTop       =   390
   ClientWidth     =   10065
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5670
   ScaleWidth      =   10065
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Cancelcmd 
      Caption         =   "Cancel"
      Height          =   495
      Left            =   3840
      TabIndex        =   16
      Top             =   1920
      Width           =   1095
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   6480
      Top             =   1920
      Visible         =   0   'False
      Width           =   2175
      _ExtentX        =   3836
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
   Begin VB.TextBox Drtxtvar 
      Height          =   285
      Left            =   10200
      TabIndex        =   14
      Text            =   "Text1"
      Top             =   960
      Width           =   1215
   End
   Begin VB.CommandButton Savecmd 
      Caption         =   "Save"
      Height          =   495
      Left            =   240
      TabIndex        =   13
      Top             =   1920
      Width           =   1095
   End
   Begin VB.CommandButton Nextcmd 
      Caption         =   "Next"
      Height          =   495
      Left            =   1440
      TabIndex        =   12
      Top             =   1920
      Width           =   1095
   End
   Begin VB.CommandButton Editcmd 
      Caption         =   "Edit"
      Height          =   495
      Left            =   2640
      TabIndex        =   11
      Top             =   1920
      Width           =   1095
   End
   Begin VB.Frame Frame2 
      Caption         =   "Customer-Info"
      Height          =   1575
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   9615
      Begin VB.TextBox ReceivedTxt 
         Height          =   285
         Left            =   3120
         TabIndex        =   5
         Top             =   1080
         Width           =   2415
      End
      Begin VB.TextBox EngTxt 
         Height          =   285
         Left            =   240
         TabIndex        =   4
         Top             =   1080
         Width           =   2655
      End
      Begin VB.TextBox AddTxt 
         Height          =   285
         Left            =   5640
         TabIndex        =   3
         Top             =   480
         Width           =   2775
      End
      Begin VB.TextBox CostTxt 
         Height          =   285
         Left            =   3360
         TabIndex        =   2
         Top             =   480
         Width           =   2175
      End
      Begin VB.TextBox DelTxt 
         BackColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   240
         TabIndex        =   1
         Top             =   480
         Width           =   3015
      End
      Begin VB.Label Label11 
         BackStyle       =   0  'Transparent
         Caption         =   "Received By"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   3360
         TabIndex        =   10
         Top             =   840
         Width           =   1695
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "Shipped By"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   840
         TabIndex        =   9
         Top             =   840
         Width           =   1455
      End
      Begin VB.Label Label14 
         BackStyle       =   0  'Transparent
         Caption         =   "Address"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   6480
         TabIndex        =   8
         Top             =   240
         Width           =   1095
      End
      Begin VB.Label Label15 
         BackStyle       =   0  'Transparent
         Caption         =   "CostCode"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   3840
         TabIndex        =   7
         Top             =   240
         Width           =   1335
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Deliver_To: "
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   0
         Left            =   960
         TabIndex        =   6
         Top             =   240
         Width           =   1815
      End
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Height          =   3015
      Left            =   240
      TabIndex        =   15
      Top             =   2520
      Width           =   9615
      _ExtentX        =   16960
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
End
Attribute VB_Name = "EditinfoFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Edtinfo As New ADODB.Recordset
Private Sub AddTxt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
EngTxt.SetFocus
End If
End Sub
Private Sub Cancelcmd_Click()
Unload Me
End Sub
Private Sub CostTxt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
AddTxt.SetFocus
End If

End Sub
Private Sub DelTxt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
CostTxt.SetFocus
End If
End Sub

Private Sub EditCmd_Click()
On Error Resume Next

If cn.State = 1 Then
cn.Close
End If

Call condatabase

With Edtinfo

.Open "SELECT DR_No,Requester_Store,Cost_Center,Address,Received_By,Field_Engineer FROM ITEM_REQUEST_tbl WHERE DR_No LIKE '" & Drtxtvar.Text & "' ORDER BY DR_No DESC  ", cn, adOpenKeyset, adLockOptimistic

End With


Set DataGrid1.DataSource = Edtinfo

Set DelTxt.DataSource = Edtinfo
Set CostTxt.DataSource = Edtinfo
Set AddTxt.DataSource = Edtinfo
Set EngTxt.DataSource = Edtinfo
Set ReceivedTxt.DataSource = Edtinfo

DelTxt.DataField = "Requester_Store"
CostTxt.DataField = "Cost_Center"
AddTxt.DataField = "Address"
ReceivedTxt.DataField = "Received_By"
EngTxt.DataField = "Field_Engineer"


DelTxt.Enabled = True
CostTxt.Enabled = True
AddTxt.Enabled = True
ReceivedTxt.Enabled = True
EngTxt.Enabled = True


Savecmd.Enabled = True

End Sub

Private Sub EngTxt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
ReceivedTxt.SetFocus
End If
End Sub

Private Sub Form_Load()
Call Getfusiontable
End Sub

Private Sub Nextcmd_Click()
On Error Resume Next
If Not Edtinfo.EOF Then
Edtinfo.MoveNext

ElseIf Edtinfo.EOF Then

Edtinfo.MoveFirst

ElseIf Edtinfo.BOF Then

Edtinfo.MoveNext

End If
End Sub

Private Sub ReceivedTxt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
DelTxt.SetFocus
End If
End Sub

Private Sub Savecmd_Click()
On Error Resume Next

Edtinfo("Requester_Store") = DelTxt.Text
Edtinfo("Cost_Center") = CostTxt.Text
Edtinfo("Address") = AddTxt.Text
Edtinfo("Received_By") = ReceivedTxt.Text
Edtinfo("Field_Engineer") = EngTxt.Text

Edtinfo.Update

Set DataGrid1.DataSource = Edtinfo

DelTxt.Enabled = False
CostTxt.Enabled = False
AddTxt.Enabled = False
ReceivedTxt.Enabled = False
EngTxt.Enabled = False

Savecmd.Enabled = False

End Sub
