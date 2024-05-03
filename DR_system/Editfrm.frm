VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Editfrm 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "DR_V.131_System"
   ClientHeight    =   6375
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   12915
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6375
   ScaleWidth      =   12915
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox ItemNotxt 
      Height          =   285
      Left            =   11640
      TabIndex        =   19
      Text            =   "0"
      Top             =   1080
      Width           =   975
   End
   Begin VB.TextBox Drvartxt 
      Height          =   285
      Left            =   11640
      TabIndex        =   14
      Text            =   "0"
      Top             =   480
      Width           =   975
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   570
      Left            =   11880
      Top             =   3600
      Width           =   1200
      _ExtentX        =   2117
      _ExtentY        =   1005
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
   Begin MSDataGridLib.DataGrid DataGrid1 
      Height          =   3015
      Left            =   480
      TabIndex        =   17
      Top             =   2880
      Width           =   10695
      _ExtentX        =   18865
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
   Begin VB.Frame Frame1 
      Caption         =   "Edit_Item"
      Height          =   5775
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   11175
      Begin VB.CommandButton Cancelcmd 
         Caption         =   "Cancel"
         Height          =   495
         Left            =   2880
         TabIndex        =   18
         Top             =   1920
         Width           =   1095
      End
      Begin VB.CommandButton Refreshcmd 
         Caption         =   "REFRESH"
         Height          =   495
         Left            =   1680
         TabIndex        =   16
         Top             =   1920
         Width           =   1095
      End
      Begin VB.CommandButton Editcmd 
         Caption         =   "Edit"
         Height          =   495
         Left            =   360
         TabIndex        =   15
         Top             =   1920
         Visible         =   0   'False
         Width           =   1095
      End
      Begin VB.CommandButton Savecmd 
         Caption         =   "Save"
         Height          =   495
         Left            =   360
         TabIndex        =   13
         Top             =   1920
         Width           =   1095
      End
      Begin VB.TextBox ItemDesTxt1 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   3240
         TabIndex        =   6
         Top             =   600
         Width           =   2655
      End
      Begin VB.ComboBox RemarksCmb 
         Height          =   315
         Left            =   6000
         TabIndex        =   5
         Top             =   600
         Width           =   1815
      End
      Begin VB.TextBox StatusTxt 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   7920
         TabIndex        =   4
         Top             =   600
         Width           =   1815
      End
      Begin VB.TextBox QtyTxt 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   480
         TabIndex        =   3
         Top             =   600
         Width           =   615
      End
      Begin VB.TextBox SerialTxt 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   3000
         TabIndex        =   2
         Top             =   1320
         Width           =   4815
      End
      Begin VB.ComboBox UntCmb 
         Height          =   315
         Left            =   1200
         TabIndex        =   1
         Top             =   600
         Width           =   1935
      End
      Begin VB.Label Label2 
         Caption         =   "Item Decription: "
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
         Left            =   3600
         TabIndex        =   12
         Top             =   360
         Width           =   1815
      End
      Begin VB.Label Label3 
         Caption         =   "Remarks: "
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
         Index           =   1
         Left            =   6360
         TabIndex        =   11
         Top             =   360
         Width           =   975
      End
      Begin VB.Label Label4 
         Caption         =   "Status: "
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
         Left            =   8400
         TabIndex        =   10
         Top             =   360
         Width           =   615
      End
      Begin VB.Label Label5 
         Caption         =   "QTY: "
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
         Left            =   600
         TabIndex        =   9
         Top             =   360
         Width           =   615
      End
      Begin VB.Label Label6 
         Caption         =   "SERIAL/ASSET NO: "
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
         Left            =   4080
         TabIndex        =   8
         Top             =   1080
         Width           =   2175
      End
      Begin VB.Label Label7 
         Caption         =   "UNIT: "
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
         Left            =   1680
         TabIndex        =   7
         Top             =   360
         Width           =   615
      End
      Begin VB.Line Line1 
         X1              =   360
         X2              =   10800
         Y1              =   960
         Y2              =   960
      End
      Begin VB.Line Line2 
         X1              =   360
         X2              =   10800
         Y1              =   1800
         Y2              =   1800
      End
      Begin VB.Line Line3 
         X1              =   360
         X2              =   360
         Y1              =   960
         Y2              =   1800
      End
      Begin VB.Line Line4 
         X1              =   10800
         X2              =   10800
         Y1              =   960
         Y2              =   1800
      End
      Begin VB.Line Line5 
         BorderColor     =   &H00FF8080&
         X1              =   120
         X2              =   10920
         Y1              =   2520
         Y2              =   2520
      End
   End
End
Attribute VB_Name = "Editfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private editme As New ADODB.Recordset

Private Sub Cancelcmd_Click()
Unload Me
TransFrm.ItemCmd.Visible = False
TransFrm.Addcmd.Visible = True
End Sub

Private Sub EditCmd_Click()
On Error Resume Next


Set DataGrid1.DataSource = editme
Set QtyTxt.DataSource = editme
Set SerialTxt.DataSource = editme
Set RemarksCmb.DataSource = editme
Set StatusTxt.DataSource = editme
Set UntCmb.DataSource = editme
Set ItemDesTxt1.DataSource = editme

 ItemDesTxt1.DataField = "Particulars_Description"
 QtyTxt.DataField = "Quantity"
 SerialTxt.DataField = "Serial_Number"
 RemarksCmb.DataField = "Remarks"
 StatusTxt.DataField = "Status"
 UntCmb.DataField = "Unit"



ItemDesTxt1.Enabled = True
QtyTxt.Enabled = True
SerialTxt.Enabled = True
RemarksCmb.Enabled = True
StatusTxt.Enabled = True
UntCmb.Enabled = True

Editcmd.Visible = False
Savecmd.Visible = True



End Sub

Private Sub ItemDesTxt1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
RemarksCmb.SetFocus
End If
End Sub

Private Sub QtyTxt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
UntCmb.SetFocus
End If
End Sub

Private Sub Refreshcmd_Click()

Set DataGrid1.DataSource = editme

 Editcmd.Enabled = True

End Sub

Private Sub RemarksCmb_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
StatusTxt.SetFocus
End If

End Sub

Private Sub Savecmd_Click()
On Error Resume Next

editme.Fields("Item") = ItemNotxt.Text
 editme.Fields("Particulars_Description") = ItemDesTxt1.Text
 editme.Fields("Quantity") = QtyTxt.Text
 editme.Fields("Serial_Number") = SerialTxt.Text
  editme.Fields("Remarks") = RemarksCmb.Text
 editme.Fields("Status") = StatusTxt.Text
  editme.Fields("Unit") = UntCmb.Text

Set DataGrid1.DataSource = editme

ItemDesTxt1.Enabled = False
QtyTxt.Enabled = False
SerialTxt.Enabled = False
RemarksCmb.Enabled = False
StatusTxt.Enabled = False
UntCmb.Enabled = False

Editcmd.Visible = True
Savecmd.Visible = False
Editcmd.Enabled = False


editme.Close

End Sub
Private Sub SerialTxt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
QtyTxt.SetFocus
End If

End Sub
Private Sub StatusTxt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
SerialTxt.SetFocus
End If
End Sub
Private Sub UntCmb_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
ItemDesTxt1.SetFocus
End If

End Sub
