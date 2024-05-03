VERSION 5.00
Begin VB.Form Qtyfrm 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "DR&AI_System"
   ClientHeight    =   2025
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   4470
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2025
   ScaleWidth      =   4470
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox ItemDesTxt 
      Appearance      =   0  'Flat
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
      TabIndex        =   3
      Top             =   480
      Width           =   4215
   End
   Begin VB.TextBox Text1 
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
      TabIndex        =   0
      Top             =   1200
      Width           =   4215
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
      Left            =   0
      TabIndex        =   2
      Top             =   240
      Width           =   1575
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
      Left            =   0
      TabIndex        =   1
      Top             =   840
      Width           =   1215
   End
End
Attribute VB_Name = "Qtyfrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Qtyfrm.ItemDesTxt.Text = ItemFrm.itembartxt.Text
End Sub
Private Sub Text1_Change()
On Error Resume Next
Dim voice As SpVoice

Dim xmaterial2 As New ADODB.Recordset

If cn.State = 1 Then
cn.Close
End If

Call condatabase

With xmaterial2

.Open "SELECT * FROM MaterialTypetlb", cn, adOpenDynamic, adLockOptimistic

End With

If Text1.Text = 1 Then

ItemFrm.UntCmb.Text = xmaterial2!Unit

Else

ItemFrm.UntCmb.Text = xmaterial2!Units

End If

If ItemFrm.ItemTxt.Text = 11 Then
Set voice = New SpVoice
voice.Volume = 100
voice.Speak ItemFrm.Text1, SVSFlagsAsync
MsgBox "List of items are already fulled", vbInformation, "Print"
Call printme
ItemFrm.SerialTxt.Enabled = False
ItemFrm.Printcmd.Enabled = False
Unload Me
End If
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
On Error Resume Next

Dim itemRS As New ADODB.Recordset

If KeyAscii = 13 And Text1.Text = "" Then

MsgBox "Kindly Input Quantity", vbInformation

ElseIf KeyAscii = 13 And Val(Text1.Text) > Val(ItemFrm.TxtvarRemain.Text) Then

MsgBox " 'Value does not match' " & " " & " Remaining Stock : " & " " & ItemFrm.TxtvarRemain, vbCritical

Unload Me

ItemFrm.ItemDesTxt.SetFocus

ElseIf KeyAscii = 13 And Val(Text1.Text) < 1 Then

MsgBox "Please Enter Valid Value"
Text1 = ""

Else

If KeyAscii = 13 Then

Call AddDRNumber
Call Qtyout
'Call auditout


Dim sItem As String
Dim sdes As String
Dim sqty As String
Dim sernum As String
Dim remrks As String
Dim stats As String
Dim unt As String
Dim sdte As String
Dim DRnum As String
Dim Requester As String
Dim cost As String
Dim add As String
Dim eng As String
Dim recev As String
Dim tme As String
Dim adres As String
Dim coditem As String
Dim var3 As String

Emp = TransFrm.TxtEmpNo.Text
sdte = TransFrm.DateTxt.Text
sdes = ItemFrm.TxtvarDes.Text
sItem = ItemFrm.ItemTxt.Text
sqty = Text1.Text
sernum = ItemFrm.Txtvarser.Text
remrks = ItemFrm.TxtvarMarks.Text
stats = ItemFrm.LabelPending.Caption
unt = ItemFrm.TxtvarUnt.Text
sdr = TransFrm.DRtxt1.Text
Requester = TransFrm.DelTxt.Text
cost = TransFrm.CostTxt.Text
'add = TransFrm.AddTxt.Text
eng = TransFrm.EngTxt.Text
recev = TransFrm.ReceivedTxt
tme = TransFrm.TimeTxt.Text
coditem = ItemFrm.itemcodelabel.Caption
var3 = ItemFrm.txtvalue.Text

If cn.State = 1 Then
cn.Close
End If
Call condatabase

With itemRS
.Open "SELECT  * FROM item_request_tbl", cn, adOpenDynamic, adLockOptimistic
End With
'Item,Particulars_Description,Quantity,Unit,Serial_Number,Remarks,Status,

cn.Execute " INSERT INTO ITEM_REQUEST_tbl (DR_No,DR_Date,EmpNo,Requester_Store,Cost_Center,Item,Particulars_Description,ItemCode,Quantity,Unit,Serial_Number,Remarks,Status,Shipped_By,Received_By,Time_Created,Uniquevalue)" & _
" VALUES ( '" & sdr & "' ,'" & sdte & "','" & Emp & "', '" & Requester & "' , '" & cost & "', '" & sItem & "', '" & sdes & "','" & coditem & "', '" & sqty & "', '" & unt & "', '" & sernum & "', '" & remrks & "', '" & stats & "', '" & eng & "', '" & recev & "', '" & tme & "'   , '" & var3 & "') "

itemRS.Requery


Call listmeView

ItemFrm.ListView1.Refresh

ItemFrm.ItemTxt = ItemFrm.ItemTxt + 1

Set ItemFrm.List1.DataSource = Nothing
ItemFrm.SerialTxt.Text = ""

Set TransFrm.DelTxt.DataSource = Nothing
Set TransFrm.CostTxt.DataSource = Nothing
'TransFrm.DRtxt1.Text = Val(ItemFrm.DRtxtClone.Text)
'Call GetDRNumber
Unload Me
End If

End If
If (KeyAscii >= vbKey0 And KeyAscii <= vbKey9) Or (KeyAscii = vbKeyBack) Or (KeyAscii = 46) Then
    Exit Sub
Else
    KeyAscii = 0
End If

End Sub

