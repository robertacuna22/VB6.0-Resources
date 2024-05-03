VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form FindFrm 
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "Delivery Receipt & Inventory System"
   ClientHeight    =   6000
   ClientLeft      =   120
   ClientTop       =   390
   ClientWidth     =   5595
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6000
   ScaleWidth      =   5595
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin MSDataGridLib.DataGrid DataGrid1 
      Height          =   4095
      Left            =   120
      TabIndex        =   6
      Top             =   1800
      Width           =   5295
      _ExtentX        =   9340
      _ExtentY        =   7223
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
      Caption         =   "Find Item"
      Height          =   1575
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5295
      Begin VB.ComboBox Categrycmb 
         Height          =   315
         Left            =   1320
         TabIndex        =   3
         Top             =   840
         Width           =   2295
      End
      Begin VB.TextBox DRfindtxt 
         Height          =   285
         Left            =   1320
         TabIndex        =   2
         Top             =   480
         Width           =   2295
      End
      Begin VB.CommandButton Searchcmd 
         Caption         =   "SEARCH"
         Height          =   495
         Left            =   3720
         TabIndex        =   1
         Top             =   600
         Width           =   975
      End
      Begin VB.Label Label2 
         Caption         =   "Material Type :"
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   840
         Width           =   1215
      End
      Begin VB.Label Label1 
         Caption         =   "DR Number :"
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   480
         Width           =   1095
      End
   End
End
Attribute VB_Name = "FindFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private xitem As New ADODB.Recordset
Private Sub Categrycmb_Click()

Set fnd = New ADODB.Recordset

If cn.State = 1 Then
cn.Close
End If

Call condatabase

With fnd

.Open "SELECT DR_No,Remarks FROM ITEM_REQUEST_tbl WHERE DR_No LIKE '" & DRfindtxt.Text & "'  AND Remarks LIKE '" & Categrycmb.Text & "'", cn, adOpenKeyset, adLockOptimistic

End With


Set DataGrid1.DataSource = fnd

DataGrid1.Refresh


End Sub

Private Sub DRfindtxt_Change()
Set fnd = New ADODB.Recordset

If cn.State = 1 Then
cn.Close
End If

Call condatabase

With fnd

.Open "SELECT * FROM ITEM_REQUEST_tbl WHERE DR_No LIKE '" & DRfindtxt.Text & "'", cn, adOpenKeyset, adLockOptimistic

End With


Set DataGrid1.DataSource = fnd

End Sub

Private Sub Form_Activate()
DRfindtxt.SetFocus
End Sub

Private Sub Form_Load()
Set xmaterial = New ADODB.Recordset
If cn.State = 1 Then
cn.Close
End If

Call condatabase

With xmaterial

.Open "SELECT * FROM MaterialTypetlb", cn, adOpenDynamic, adLockOptimistic

End With

Do While Not xmaterial.EOF

Categrycmb.AddItem xmaterial!Category

xmaterial.MoveNext

Loop

xmaterial.Close

If cn.State = 1 Then
cn.Close
End If

Call condatabase

With xitem

.Open "SELECT * FROM ITEM_REQUEST_tbl", cn, adOpenKeyset, adLockOptimistic

End With

Set DataGrid1.DataSource = xitem

End Sub

Private Sub Searchcmd_Click()
Dim srchrs As New ADODB.Recordset

If cn.State = 1 Then
cn.Close
End If
Call condatabase

With srchrs
.Open "SELECT DR_No,Requester_Store,Cost_Center,Address,Received_By,Shipped_By, * FROM ITEM_REQUEST_tbl WHERE DR_No LIKE '" & DRfindtxt.Text & "' AND Remarks LIKE '" & Categrycmb.Text & "' ", cn, adOpenKeyset, adLockOptimistic
End With

If srchrs.RecordCount <> 0 Then
TransFrm.DataGrid1.Refresh
Set TransFrm.DataGrid1.DataSource = srchrs
TransFrm.DRtxt2.Text = srchrs!DR_No
TransFrm.EditCmd.Enabled = True
Me.Hide

Else

msg = MsgBox("UnExisting DRnumber", vbCritical)
TransFrm.DataGrid1.Refresh
Set TransFrm.DataGrid1.DataSource = srchrs
Me.Hide

End If


End Sub
