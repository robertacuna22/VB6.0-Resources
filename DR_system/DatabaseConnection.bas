Attribute VB_Name = "Module1"
'Option Explicit

Public info1 As New ADODB.Recordset
Public GetdaItem As New ADODB.Recordset
Public info As New ADODB.Recordset
Public Set2 As New ADODB.Recordset
Public setx As New ADODB.Recordset
Public LisRs1 As New ADODB.Recordset
Public xInRs As New ADODB.Recordset
Public meviewRs As New ADODB.Recordset
Public regRs As New ADODB.Recordset
Public cn As New ADODB.Connection
Public rs As New ADODB.Recordset
Public xitem As New ADODB.Recordset
Public itemrs1 As New ADODB.Recordset
Public LisRs3 As New ADODB.Recordset
Public invn As New ADODB.Recordset
Public cmd As String

'Public Sub condatabase()
' open the database
'rs.CursorLocation = adUseClient
'cn.CursorLocation = adUseClient
'cn.Open "DSN=DR_Monitoring"

'End Sub


' add user
Public Sub useRegister()
Registerfrm.Namtxt = UCase(Registerfrm.Namtxt.Text)
Dim nam As String
Dim usertype As Integer
Dim user As String
Dim pass As String
Dim desgn As String
Dim dep As String
'Dim accnt As Integer
nam = Registerfrm.Namtxt.Text
usertype = Registerfrm.usrvartxt.Text
user = Registerfrm.usernamtxt.Text
pass = Registerfrm.passtxt.Text
desgn = Registerfrm.Desgntxt.Text
dep = Registerfrm.deptxt.Text
accnt = Registerfrm.Accntxt.Text

If cn.State = 1 Then
cn.Close
End If

Call condatabase

With regRs

.Open "SELECT * FROM  TblUserAccount WHERE AccountNo LIKE '" & accnt & "'", cn, adOpenDynamic, adLockOptimistic

End With

cn.Execute "INSERT INTO TblUserAccount(User_Name,User_type,Password,FULL_NAME,Designation,Dept,AccountNo)" & _
" Values ( '" & user & "', '" & usertype & "', '" & pass & "','" & nam & "','" & desgn & "','" & dep & "','" & accnt & "')"

regRs.Requery

Set Registerfrm.DataGrid1.DataSource = regRs



End Sub


Public Sub Fltrpass()

Dim saveRs As New ADODB.Recordset

If cn.State = 1 Then
cn.Close
End If

Call condatabase

With saveRs

.Open "SELECT * FROM  TblUserAccount WHERE Password LIKE '" & passtxt.Text & "' ", cn, adOpenDynamic, adLockOptimistic

End With


If saveRs.RecordCount <> 0 Then

MsgBox "Try unique password", vbInformation, "Invalid Password"

ChangePassFrm.passtxt.Text = ""
ChangePassFrm.pasconfrmtxt.Text = ""

End If

End Sub


Public Sub listmeView()
ItemFrm.ListView1.Refresh
If cn.State = 1 Then
cn.Close
End If
Call condatabase
With meviewRs ' OPEN THE RECORDSET FROM CONNECTION
.Open "SELECT * FROM item_request_tbl WHERE Item LIKE '" & ItemFrm.ItemTxt.Text & "' AND DR_NO LIKE '" & ItemFrm.DRtxtClone.Text & "'", cn, adOpenKeyset, adLockOptimistic


If meviewRs.RecordCount <> 0 Then

Do While Not .EOF

ItemFrm.ListView1.ListItems.add = "" & !Item
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(1) = "" & !Particulars_Description
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(2) = "" & !Quantity
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(3) = "" & !Unit
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(4) = "" & !Serial_Number
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(5) = "" & !Remarks
.MoveNext

Loop

End If

End With

If ItemFrm.Sertxt = "REQUIRED" Then

AdditionalFrm.Show vbModal


End If



End Sub

Public Sub printme()
Dim printyeah As New ADODB.Recordset
If cn.State = 1 Then
cn.Close
End If
Call condatabase
With printyeah ' OPEN THE RECORDSET FROM CONNECTION
.Open "SELECT * FROM ITEM_REQUEST_tbl WHERE DR_NO LIKE '" & TransFrm.DRtxt1.Text & "'", cn, adOpenKeyset, adLockOptimistic
End With

Set DRprint.DataSource = printyeah

DRprint.Sections("Section2").Controls("label6").Caption = TransFrm.DelTxt.Text
DRprint.Sections("Section2").Controls("label7").Caption = TransFrm.TxtEmpNo.Text
DRprint.Sections("Section2").Controls("label9").Caption = TransFrm.CostTxt.Text
DRprint.Sections("Section2").Controls("label10").Caption = TransFrm.DateTxt.Text
DRprint.Sections("Section2").Controls("label11").Caption = TransFrm.TimeTxt.Text

DRprint.Sections("Section5").Controls("label1").Caption = TransFrm.Preparetxt.Text
DRprint.Sections("Section5").Controls("label2").Caption = TransFrm.AuthoTxt.Text

DRprint.Sections("Section5").Controls("label12").Caption = TransFrm.DateTxt.Text
DRprint.Sections("Section5").Controls("label13").Caption = TransFrm.TimeTxt.Text

DRprint.Sections("Section5").Controls("label14").Caption = TransFrm.EngTxt.Text
DRprint.Sections("Section5").Controls("label15").Caption = TransFrm.datetxtvar.Text
DRprint.Sections("Section5").Controls("label16").Caption = TransFrm.timetxtvar.Text

DRprint.Sections("Section5").Controls("label18").Caption = TransFrm.vardatetxt.Text
DRprint.Sections("Section5").Controls("label19").Caption = TransFrm.vartxttime.Text
DRprint.Sections("Section5").Controls("label17").Caption = TransFrm.ReceivedTxt.Text
DRprint.Sections("Section5").Controls("label3").Caption = FormOtherRemarks.Richtxtcomment.Text
DRprint.Sections("Section5").Controls("label21").Caption = FormOtherRemarks.TxtZendesk.Text

Do While Not printyeah.EOF

printyeah.MoveNext

Loop

DRprint.Show vbModal
'DRprint.Sections("Section2").Controls("Label20").Caption = DRprint.Sections("Section2").Controls("Label20").Caption + 1
TransFrm.DelTxt.Text = ""
TransFrm.CostTxt.Text = ""
TransFrm.TxtEmpNo.Text = ""
TransFrm.ReceivedTxt.Text = ""
TransFrm.EngTxt.Text = ""

TransFrm.AddnewCmd.Enabled = True
TransFrm.Addcmd.Enabled = False

ItemFrm.ItemDesTxt.Enabled = True
ItemFrm.QtyTxt.Enabled = True
ItemFrm.SerialTxt.Enabled = True
ItemFrm.StatusTxt.Enabled = True

Call Transaction
TransFrm.DataGrid1.Visible = True

End Sub


Public Sub Tryme()

If Not ItemFrm.Codtxtvar.Text = ItemFrm.MtrTxtvar.Text Then

MsgBox "Serial Number and Item not matched"
ItemFrm.ItemDesTxt.SetFocus
ItemFrm.SerialTxt.Text = ""
Else

Qtyfrm.Text1.Text = ItemFrm.QtyTxt.Text
Qtyfrm.Text1.Locked = True
Qtyfrm.Show vbModal
End If
End Sub
Public Sub Tryme1()
If ItemFrm.Txtvarser.Text = "NA" Then
ItemFrm.Serialtxt3.Text = "NA"
Set ItemFrm.UntCmb.DataSource = Nothing
ItemFrm.VarTxtcode.Text = ItemFrm.ItemDesTxt.Text
ItemFrm.txtvalue.Text = Val(ItemFrm.txtvalue.Text) + 1
Call editme
ElseIf ItemFrm.Txtvarser.Text = "REQUIRED" Then
ItemFrm.SerialTxt.Enabled = True
ItemFrm.ItemDesTxt.Text = ""
ItemFrm.SerialTxt.SetFocus
ItemFrm.VarTxtcode.Text = ItemFrm.ItemDesTxt.Text
ItemFrm.txtvalue.Text = ItemFrm.txtvalue.Text + 1
Else
MsgBox "Record not found", vbCritical, "ItemCode"
End If
End Sub

Public Sub auditout()
'On Error Resume Next
Dim auditRs As New ADODB.Recordset
If cn.State = 1 Then
cn.Close
End If

Call condatabase

With auditRs

.Open "SELECT * From AuditDR_outTBL  ", cn, adOpenKeyset, adLockOptimistic

End With

If ItemFrm.Sertxt = "NA" Then

cn.Execute " INSERT INTO AuditDR_outTBL (Date_out,Time_,DR_out,ItemDescription, ItemCode, Out_Qty,RemainingStock,Total_out,Total_Stock)" & _
" Values ( '" & TransFrm.DateTxt.Text & "','" & TransFrm.TimeTxt.Text & "','" & TransFrm.DRtxt1.Text & "','" & Qtyfrm.ItemDesTxt.Text & "','" & ItemFrm.ItemDesTxt.Text & "','" & Qtyfrm.Text1.Text & "','" & ItemFrm.Retxtvar.Text & "','" & ItemFrm.QtyOutTxt.Text & "','" & ItemFrm.TotalStcktxt.Text & "')"

auditRs.Requery
ItemFrm.ItemDesTxt.Text = ""

ElseIf ItemFrm.Sertxt = "REQUIRED" Then

cn.Execute " INSERT INTO AuditDR_outTBL (Date_out,Time_,DR_out,ItemDescription, ItemCode,Out_Qty,RemainingStock,Total_out,Total_Stock)" & _
" Values ( '" & TransFrm.DateTxt.Text & "','" & TransFrm.TimeTxt.Text & "','" & TransFrm.DRtxt1.Text & "','" & ItemFrm.itembartxt.Text & "','" & ItemFrm.ItemDesTxt.Text & "','" & ItemFrm.Qtytxt2.Text & "','" & ItemFrm.Retxtvar.Text & "','" & ItemFrm.QtyOutTxt.Text & "','" & ItemFrm.TotalStcktxt.Text & "')"

auditRs.Requery
ItemFrm.ItemDesTxt.Text = ""

End If

End Sub

Public Sub listmeView1()

Dim meviewrs1 As New ADODB.Recordset

If cn.State = 1 Then
cn.Close
End If
Call condatabase
With meviewrs1 ' OPEN THE RECORDSET FROM CONNECTION
.Open "SELECT * FROM ITEM_REQUEST_tbl WHERE Uniquevalue LIKE '" & ItemFrm.txtvalue.Text & "' AND Particulars_Description LIKE '" & AdditionalFrm.withTxt.Text & "' ", cn, adOpenKeyset, adLockOptimistic

'Uniquevalue LIKE '" & ItemFrm.labelvar2.Caption & "' AND
'DR_NO LIKE '" & TransFrm.DRtxt.Text & "' AND Particulars_Description LIKE '" & AdditionalFrm.withTxt.Text & "'
If meviewrs1.RecordCount <> 0 Then

Do While Not .EOF

ItemFrm.ListView1.ListItems.add = "" & !Item
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(1) = "" & !Particulars_Description
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(2) = "" & !Quantity
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(3) = "" & !Unit
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(4) = "" & !Serial_Number
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(5) = "" & !Remarks
'ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(6) = "" & !Uniquevalue

.MoveNext

Loop

End If

End With

End Sub

Public Sub listmeView2()

ItemFrm.ListView1.Refresh

If cn.State = 1 Then
cn.Close
End If
Call condatabase
With meviewRs ' OPEN THE RECORDSET FROM CONNECTION
.Open "SELECT * FROM ITEM_REQUEST_tbl WHERE DR_NO LIKE '" & Val(TransFrm.DRtxt1.Text) & "'", cn, adOpenKeyset, adLockOptimistic


If meviewRs.RecordCount <> 0 Then

Do While Not .EOF

ItemFrm.ListView1.ListItems.add = "" & !Item
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(1) = "" & !Particulars_Description
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(2) = "" & !Quantity
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(3) = "" & !Unit
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(4) = "" & !Serial_Number
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(5) = "" & !Remarks
.MoveNext

Loop

End If

Call Qtyout

If ItemFrm.EdTxt.Text = 12 Then

Unload EditFRmQty

End If

End With

If ItemFrm.Sertxt = "REQUIRED" Then

AdditionalFrm.Show vbModal

End If

End Sub

Public Sub callmeadd()

Call AddDRNumber

If cn.State = 1 Then
cn.Close
End If

Call condatabase

Dim additems As New ADODB.Recordset

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
Dim sEmpNo As String
Dim eng As String
Dim recev As String
Dim tme As String
Dim Emp As String
Dim coditem As String
Dim nDR As String

Emp = TransFrm.DelTxt.Text
sdte = TransFrm.DateTxt.Text
sdes = ItemFrm.itembartxt
sItem = ItemFrm.ItemTxt.Text
sqty = ItemFrm.Qtytxt2.Text
sernum = ItemFrm.SerialTxt.Text
remrks = ItemFrm.RemarksCmb.Text
stats = ItemFrm.LabelPending.Caption
unt = ItemFrm.UntCmb.Text
nDR = TransFrm.DRtxt1.Text
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

Set additems = New ADODB.Recordset

With additems
.Open "SELECT * FROM item_request_tbl", cn, adOpenKeyset, adLockOptimistic

'Item,Particulars_Description,Quantity,Unit,Serial_Number,Remarks,Status,
End With
cn.Execute " INSERT INTO ITEM_REQUEST_tbl (DR_No,DR_Date,EmpNo,Requester_Store,Cost_Center,Item,Particulars_Description,ItemCode,Quantity,Unit,Serial_Number,Remarks,Status,Shipped_By,Received_By,Time_Created,Uniquevalue)" & _
" VALUES ( '" & nDR & "' ,'" & sdte & "','" & Emp & "', '" & Requester & "' , '" & cost & "', '" & sItem & "', '" & sdes & "','" & coditem & "', '" & sqty & "', '" & unt & "', '" & sernum & "', '" & remrks & "', '" & stats & "', '" & eng & "', '" & recev & "', '" & tme & "','" & var3 & "') "
additems.Requery

Call updateme

ItemFrm.ListView1.Refresh

ItemFrm.ItemTxt = ItemFrm.ItemTxt + 1


Set ItemFrm.List1.DataSource = Nothing
Set TransFrm.DelTxt.DataSource = Nothing
Set TransFrm.CostTxt.DataSource = Nothing
ItemFrm.SerialTxt.Text = ""

End Sub

Public Sub Peripherals()

Dim itemRS2 As New ADODB.Recordset

ItemFrm.txtvalue.Text = ItemFrm.txtvalue + 1

'Dim sitem As String
Dim nDR As String
Dim sdte As String
Dim Requester As String
Dim cost As String
Dim eng As String
Dim recev As String
Dim tme As String
Dim Emp As String
Dim sdes As String
Dim Nremarks As String
Dim Nstatus As String
Dim var3 As String

'sitem = Label1.Caption
nDR = TransFrm.DRtxt1.Text
Emp = TransFrm.TxtEmpNo.Text
sdte = TransFrm.DateTxt.Text
sItem = ItemFrm.ItemTxt.Text
Requester = TransFrm.DelTxt.Text
cost = TransFrm.CostTxt.Text
eng = TransFrm.EngTxt.Text
recev = TransFrm.ReceivedTxt
tme = TransFrm.TimeTxt.Text
sdes = AdditionalFrm.withTxt.Text
Nremarks = ItemFrm.RemarksCmb.Text
Nstatus = ItemFrm.StatusTxt.Text
eng = TransFrm.EngTxt.Text
var3 = ItemFrm.txtvalue.Text


If cn.State = 1 Then
cn.Close
End If
Call condatabase

With itemRS2
.Open "SELECT * FROM ITEM_REQUEST_tbl", cn, adOpenKeyset, adLockOptimistic

End With
cn.Execute " INSERT INTO ITEM_REQUEST_tbl (DR_No,DR_Date,EmpNo,Requester_Store,Cost_Center,Particulars_Description,Remarks,Status,Shipped_By,Received_By,TimeReceived,Uniquevalue)" & _
" VALUES ('" & nDR & "' ,'" & sdte & "','" & Emp & "', '" & Requester & "' , '" & cost & "','" & sdes & "', '" & Nremarks & "', '" & Nstatus & "', '" & eng & "', '" & recev & "', '" & tme & "','" & var3 & "') "

itemRS2.Requery

Call listmeView1




ItemFrm.ListView1.Refresh
 
Set TransFrm.DelTxt.DataSource = Nothing
Set TransFrm.CostTxt.DataSource = Nothing
  
End Sub

Public Sub updateme()

Call Qtyout

If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

With rs

.Open "SELECT * FROM listofiventory_TBL  ", cn, adOpenDynamic, adLockOptimistic

End With

'WHERE SerialNum = '" & ItemFrm.SerialTxt.Text & "'

cn.Execute "UPDATE listofiventory_TBL SET Status = '" & ItemFrm.Txtstatus.Text & _
"', Date_Out = '" & ItemFrm.Txtout.Text & "', Released_To = '" & ItemFrm.Txtrelease.Text & _
"' WHERE ListInv_ID = '" & ItemFrm.ListInvCaptionId.Caption & "'  "
rs.UpdateBatch adAffectCurrent

'LisRs3.Fields("Status") = ItemFrm.TxtStatus.Text
'LisRs3.Fields("Date_Out") = ItemFrm.Txtout.Text
'LisRs3.Fields("Released_To") = ItemFrm.Txtrelease.Text
'LisRs3.UpdateBatch adAffectCurrent

msg = MsgBox("The Item has been released and Record updated", vbInformation)

Call listmeView


End Sub

Public Sub Transaction()

Dim xtransaction As New ADODB.Recordset
Dim info As New ADODB.Recordset

If cn.State = 1 Then
cn.Close
End If
Call condatabase

With info
.Open " SELECT * FROM store_info ", cn, adOpenKeyset, adLockOptimistic

End With

Set TransFrm.DataGrid2.DataSource = info

With xtransaction

.Open "SELECT DR_No,Requester_Store,Cost_Center,Shipped_By,Received_By FROM ITEM_REQUEST_tbl ORDER BY DR_No desc ", cn, adOpenKeyset, adLockOptimistic
End With

Set TransFrm.DataGrid1.DataSource = xtransaction

End Sub

Public Sub listofview()

Dim listrs2 As New ADODB.Recordset

ItemFrm.ListView1.Refresh
If cn.State = 1 Then
cn.Close
End If
Call condatabase

With listrs2 ' OPEN THE RECORDSET FROM CONNECTION
.Open "SELECT * FROM ITEM_REQUEST_tbl WHERE Item LIKE '" & Editfrm.ItemNotxt.Text & "' AND DR_NO LIKE '" & Editfrm.Drvartxt.Text & "'", cn, adOpenKeyset, adLockOptimistic


If listrs2.RecordCount <> 0 Then

Do While Not .EOF

ItemFrm.ListView1.ListItems.add = "" & !Item
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(1) = "" & !Particulars_Description
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(2) = "" & !Quantity
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(3) = "" & !Unit
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(4) = "" & !Serial_Number
ItemFrm.ListView1.ListItems(ItemFrm.ListView1.ListItems.Count).SubItems(5) = "" & !Remarks
.MoveNext

Loop

End If

End With

Public Sub dashboard()

If cn.State = 1 Then
cn.Close
End If
Call condatabase


With invn
.Open "SELECT Date_Entry,MaterialCode,ItemDes,TotalStock,RemainingStock as 'Re_Bal',Qty_Out,ItemCode,Unit,MaterialType FROM InventoryStocktbl", cn, adOpenKeyset, adLockOptimistic

End With

Set DashBoardFrm.DataGrid1.DataSource = invn
 
Set DashBoardFrm.TxtEntry.DataSource = invn
Set DashBoardFrm.TxtMaterial.DataSource = invn
Set DashBoardFrm.Txtdes.DataSource = invn
Set DashBoardFrm.Txtremain.DataSource = invn
Set DashBoardFrm.TxtTotal.DataSource = invn
Set DashBoardFrm.TxtRemarks.DataSource = invn
Set DashBoardFrm.Txtunit.DataSource = invn
Set DashBoardFrm.Txtqty.DataSource = invn
Set DashBoardFrm.TxtItem.DataSource = invn

DashBoardFrm.TxtEntry.DataField = "Date_Entry"
DashBoardFrm.TxtMaterial.DataField = "MaterialCode"
DashBoardFrm.Txtdes.DataField = "ItemDes"
DashBoardFrm.TxtTotal.DataField = "TotalStock"
DashBoardFrm.Txtremain.DataField = "Re_Bal"
DashBoardFrm.Txtqty.DataField = "Qty_Out"
DashBoardFrm.TxtItem.DataField = "ItemCode"
DashBoardFrm.Txtunit.DataField = "Unit"
DashBoardFrm.TxtRemarks.DataField = "MaterialType"

DashBoardFrm.DataGrid1.Columns(0).Width = 1200
DashBoardFrm.DataGrid1.Columns(1).Width = 1500
DashBoardFrm.DataGrid1.Columns(2).Width = 4000
DashBoardFrm.DataGrid1.Columns(3).Width = 1000
DashBoardFrm.DataGrid1.Columns(4).Width = 800
DashBoardFrm.DataGrid1.Columns(5).Width = 1000
DashBoardFrm.DataGrid1.Columns(6).Width = 1000
DashBoardFrm.DataGrid1.Columns(7).Width = 500



End Sub

Public Sub MaterialCode()

If cn.State = 1 Then
cn.Close
End If
Call condatabase


Dim Matrlcode As New ADODB.Recordset


With Matrlcode
.Open "SELECT Date_Entry,MaterialCode,ItemDes,TotalStock,RemainingStock,Qty_Out,ItemCode,Unit,MaterialType FROM InventoryStocktbl WHERE MaterialCode LIKE '%" & DashBoardFrm.Text9.Text & "%' ", cn, adOpenKeyset, adLockOptimistic
End With


Set DashBoardFrm.DataGrid1.DataSource = Matrlcode

Set DashBoardFrm.TxtEntry.DataSource = Matrlcode
Set DashBoardFrm.TxtMaterial.DataSource = Matrlcode
Set DashBoardFrm.Txtdes.DataSource = Matrlcode
Set DashBoardFrm.Txtremain.DataSource = Matrlcode
Set DashBoardFrm.TxtTotal.DataSource = Matrlcode
Set DashBoardFrm.TxtRemarks.DataSource = Matrlcode
Set DashBoardFrm.Txtunit.DataSource = Matrlcode
Set DashBoardFrm.Txtqty.DataSource = Matrlcode
Set DashBoardFrm.TxtItem.DataSource = Matrlcode

DashBoardFrm.TxtEntry.DataField = "Date_Entry"
DashBoardFrm.TxtMaterial.DataField = "MaterialCode"
DashBoardFrm.Txtdes.DataField = "ItemDes"
DashBoardFrm.TxtTotal.DataField = "TotalStock"
DashBoardFrm.Txtremain.DataField = "RemainingStock"
DashBoardFrm.Txtqty.DataField = "Qty_Out"
DashBoardFrm.TxtItem.DataField = "ItemCode"
DashBoardFrm.Txtunit.DataField = "Unit"
DashBoardFrm.TxtRemarks.DataField = "MaterialType"

DashBoardFrm.DataGrid1.Columns(0).Width = 1500
DashBoardFrm.DataGrid1.Columns(2).Width = 4000
DashBoardFrm.DataGrid1.Columns(3).Width = 1300
DashBoardFrm.DataGrid1.Columns(4).Width = 1500
DashBoardFrm.DataGrid1.Columns(6).Width = 1150
DashBoardFrm.DataGrid1.Columns(7).Width = 500



End Sub


Public Sub ItemDes()

If cn.State = 1 Then
cn.Close
End If
Call condatabase


Dim rsItem As New ADODB.Recordset


With rsItem
.Open "SELECT Date_Entry,MaterialCode,ItemDes,TotalStock,RemainingStock,Qty_Out,ItemCode,Unit,MaterialType FROM InventoryStocktbl WHERE ItemDes LIKE '%" & DashBoardFrm.Text9.Text & "%' ", cn, adOpenKeyset, adLockOptimistic
End With


Set DashBoardFrm.DataGrid1.DataSource = rsItem

Set DashBoardFrm.TxtEntry.DataSource = rsItem
Set DashBoardFrm.TxtMaterial.DataSource = rsItem
Set DashBoardFrm.Txtdes.DataSource = rsItem
Set DashBoardFrm.Txtremain.DataSource = rsItem
Set DashBoardFrm.TxtTotal.DataSource = rsItem
Set DashBoardFrm.TxtRemarks.DataSource = rsItem
Set DashBoardFrm.Txtunit.DataSource = rsItem
Set DashBoardFrm.Txtqty.DataSource = rsItem
Set DashBoardFrm.TxtItem.DataSource = rsItem

DashBoardFrm.TxtEntry.DataField = "Date_Entry"
DashBoardFrm.TxtMaterial.DataField = "MaterialCode"
DashBoardFrm.Txtdes.DataField = "ItemDes"
DashBoardFrm.TxtTotal.DataField = "TotalStock"
DashBoardFrm.Txtremain.DataField = "RemainingStock"
DashBoardFrm.Txtqty.DataField = "Qty_Out"
DashBoardFrm.TxtItem.DataField = "ItemCode"
DashBoardFrm.Txtunit.DataField = "Unit"
DashBoardFrm.TxtRemarks.DataField = "MaterialType"

DashBoardFrm.DataGrid1.Columns(0).Width = 1500
DashBoardFrm.DataGrid1.Columns(2).Width = 4000
DashBoardFrm.DataGrid1.Columns(3).Width = 1300
DashBoardFrm.DataGrid1.Columns(4).Width = 1500
DashBoardFrm.DataGrid1.Columns(6).Width = 1150
DashBoardFrm.DataGrid1.Columns(7).Width = 500



End Sub



Public Sub ItemCode()

If cn.State = 1 Then
cn.Close
End If
Call condatabase


Dim rsItemCode As New ADODB.Recordset


With rsItemCode
.Open "SELECT Date_Entry,MaterialCode,ItemDes,TotalStock,RemainingStock,Qty_Out,ItemCode,Unit,MaterialType FROM InventoryStocktbl WHERE ItemCode LIKE '%" & DashBoardFrm.Text9.Text & "%' ", cn, adOpenKeyset, adLockOptimistic
End With


Set DashBoardFrm.DataGrid1.DataSource = rsItemCode

Set DashBoardFrm.TxtEntry.DataSource = rsItemCode
Set DashBoardFrm.TxtMaterial.DataSource = rsItemCode
Set DashBoardFrm.Txtdes.DataSource = rsItemCode
Set DashBoardFrm.Txtremain.DataSource = rsItemCode
Set DashBoardFrm.TxtTotal.DataSource = rsItemCode
Set DashBoardFrm.TxtRemarks.DataSource = rsItemCode
Set DashBoardFrm.Txtunit.DataSource = rsItemCode
Set DashBoardFrm.Txtqty.DataSource = rsItemCode
Set DashBoardFrm.TxtItem.DataSource = rsItemCode

DashBoardFrm.TxtEntry.DataField = "Date_Entry"
DashBoardFrm.TxtMaterial.DataField = "MaterialCode"
DashBoardFrm.Txtdes.DataField = "ItemDes"
DashBoardFrm.TxtTotal.DataField = "TotalStock"
DashBoardFrm.Txtremain.DataField = "RemainingStock"
DashBoardFrm.Txtqty.DataField = "Qty_Out"
DashBoardFrm.TxtItem.DataField = "ItemCode"
DashBoardFrm.Txtunit.DataField = "Unit"
DashBoardFrm.TxtRemarks.DataField = "MaterialType"

DashBoardFrm.DataGrid1.Columns(0).Width = 1500
DashBoardFrm.DataGrid1.Columns(2).Width = 4000
DashBoardFrm.DataGrid1.Columns(3).Width = 1300
DashBoardFrm.DataGrid1.Columns(4).Width = 1500
DashBoardFrm.DataGrid1.Columns(6).Width = 1150
DashBoardFrm.DataGrid1.Columns(7).Width = 500

End Sub


' ------------- For AddinventoryIn Form

Public Sub GetItem()
If cn.State = 1 Then
cn.Close
End If
Call condatabase



With GetdaItem
.Open "SELECT MaterialCode,ItemDes,ItemCode,Unit,MaterialType,Unit_Cost,MaterialCon,RemainingStock,QTY_Out,TotalStock FROM InventoryStocktbl ", cn, adOpenKeyset, adLockOptimistic
End With


Set AddInventoryIn.DataGrid1.DataSource = GetdaItem
Set AddInventoryIn.Txtdes.DataSource = GetdaItem
Set AddInventoryIn.Txtitemcode.DataSource = GetdaItem
Set AddInventoryIn.TxtMatCode.DataSource = GetdaItem
Set AddInventoryIn.TxtMaType.DataSource = GetdaItem
Set AddInventoryIn.Txtunit.DataSource = GetdaItem
Set AddInventoryIn.TxtUnitCost.DataSource = GetdaItem
Set AddInventoryIn.TxtMatCon.DataSource = GetdaItem
Set AddInventoryIn.Txtremain.DataSource = GetdaItem
Set AddInventoryIn.Txtqtyout.DataSource = GetdaItem
Set AddInventoryIn.TxtTotalstock.DataSource = GetdaItem


AddInventoryIn.Txtdes.DataField = "ItemDes"
AddInventoryIn.Txtitemcode.DataField = "ItemCode"
AddInventoryIn.TxtMatCode.DataField = "MaterialCode"
AddInventoryIn.TxtMaType.DataField = "MaterialType"
AddInventoryIn.Txtunit.DataField = "Unit"
AddInventoryIn.TxtUnitCost.DataField = "Unit_Cost"
AddInventoryIn.TxtMatCon.DataField = "MaterialCon"
AddInventoryIn.Txtremain.DataField = "RemainingStock"
AddInventoryIn.Txtqtyout.DataField = "QTY_Out"
AddInventoryIn.TxtTotalstock.DataField = "TotalStock"


End Sub

' --------------------------- AddItemFormInv

Public Sub InsertData()

Dim sdr As String

sdr = AddInventoryIn.TxtDRno.Text

AddInventoryIn.Txtremain = Val(AddInventoryIn.Txtremain.Text) + Val(AddItemFormInv.Txtqty.Text)

AddInventoryIn.Txtremain.Text = AddInventoryIn.Txtremain

AddInventoryIn.TxtTotalstock = Val(AddInventoryIn.Txtqtyout.Text) + Val(AddInventoryIn.Txtremain.Text)

AddInventoryIn.TxtTotalstock.Text = AddInventoryIn.TxtTotalstock


Call UpdateTotal

If cn.State = 1 Then
cn.Close
End If
Call condatabase


Set rs = New ADODB.Recordset


With rs
.Open "SELECT * FROM listofiventory_tbl WHERE DR_No LIKE '" & sdr & "' ", cn, adOpenKeyset, adLockOptimistic
End With
  
If AddInventoryIn.TxtMatCon = "NA" Then
  
cn.Execute " INSERT INTO listofiventory_tbl (Date_Entry,SupplierName,DR_No,PO_No,PR_No,Capex_NO,Warranty,ItemDescription,ItemCode,Productcode,SerialNum,Quantity,Unit,Remarks,MaterialType,Unit_Cost,Total_Cost,Status,Date_Delivered)" & _
" VALUES('" & _
AddInventoryIn.DTPicker1 & "','" & _
AddInventoryIn.TxtSupplier.Text & "','" & _
AddInventoryIn.TxtDRno.Text & "','" & _
AddInventoryIn.TxtDRno.Text & "','" & _
AddInventoryIn.TxtDRno.Text & "','" & _
AddInventoryIn.TxtCapex.Text & "','" & _
AddInventoryIn.CmbWarranty.Text & "','" & _
AddItemFormInv.Txtdes.Text & "','" & _
AddItemFormInv.Txtitemcode.Text & "','" & _
AddItemFormInv.TxtMatCode.Text & "','" & _
AddItemFormInv.TxtSerial.Text & "','" & _
AddItemFormInv.Txtqty.Text & "','" & _
AddItemFormInv.Txtunit.Text & "','" & _
AddItemFormInv.TxtRemarks.Text & "','" & _
AddItemFormInv.TxtMaType.Text & "','" & _
AddInventoryIn.TxtUnitCost.Text & "', '" & _
AddInventoryIn.TxtTotal.Text & "', '" & _
AddInventoryIn.Txtstatus.Text & "','" & _
AddInventoryIn.TxtTime.Text & "' ) "
rs.Requery

MsgBox ("Item Successfully Added")

AddItemFormInv.DataGrid1.Refresh
AddInventoryIn.DataGrid1.Refresh
AddItemFormInv.CmdSave.Enabled = False
AddItemFormInv.Txtqty.Text = ""
AddItemFormInv.Txtqty.Enabled = False
Call LoadItemInv

End If


End Sub

Public Sub LoadItemInv()

If cn.State = 1 Then
cn.Close
End If
Call condatabase

Dim sdr As String

sdr = AddInventoryIn.TxtDRno.Text


Dim LoadItem As New ADODB.Recordset

If AddInventoryIn.TxtMatCon = "NA" Then

With LoadItem
.Open "SELECT DR_No,ItemDescription,Quantity,Unit,Remarks,SupplierName FROM listofiventory_tbl WHERE DR_No LIKE '" & sdr & "' ", cn, adOpenKeyset, adLockOptimistic
End With
  
Set AddItemFormInv.DataGrid1.DataSource = LoadItem

ElseIf AddInventoryIn.TxtMatCon = "REQUIRED" Then

With LoadItem
.Open "SELECT DR_No,ItemDescription,SerialNum,Quantity,MaterialType FROM listofiventory_tbl WHERE DR_No LIKE '" & sdr & "' ", cn, adOpenKeyset, adLockOptimistic
End With
  
Set AddItemFormInv.DataGrid1.DataSource = LoadItem

End If

End Sub

Public Sub InsertData01()

If cn.State = 1 Then
cn.Close
End If
Call condatabase


Dim InsertSerial As New ADODB.Recordset


With InsertSerial
.Open "SELECT * FROM listofiventory_tbl WHERE DR_No LIKE '" & AddInventoryIn.TxtDRno.Text & "' ", cn, adOpenKeyset, adLockOptimistic
End With
  
If AddInventoryIn.TxtMatCon = "REQUIRED" Then
  
cn.Execute " INSERT INTO listofiventory_tbl (Date_Entry,SupplierName,DR_No,PO_No,PR_No,Capex_NO,Warranty,ItemDescription,ItemCode,Productcode,SerialNum,Quantity,Unit,Remarks,MaterialType,Unit_Cost,Total_Cost,Status,Date_Delivered)" & _
" VALUES('" & _
AddInventoryIn.DTPicker1 & "','" & _
AddInventoryIn.TxtSupplier.Text & "','" & _
AddInventoryIn.TxtDRno.Text & "','" & _
AddInventoryIn.TxtDRno.Text & "','" & _
AddInventoryIn.TxtDRno.Text & "','" & _
AddInventoryIn.TxtCapex.Text & "','" & _
AddInventoryIn.CmbWarranty.Text & "','" & _
AddItemFormInv.Txtdes.Text & "','" & _
AddItemFormInv.Txtitemcode.Text & "','" & _
AddItemFormInv.TxtMatCode.Text & "','" & _
SerialInvFrm.TxtSerialFrm.Text & "','" & _
AddItemFormInv.TxtSerQty.Text & "','" & _
AddItemFormInv.Txtunit.Text & "','" & _
AddItemFormInv.TxtRemarks.Text & "','" & _
AddItemFormInv.TxtMaType.Text & "','" & _
AddInventoryIn.TxtUnitCost.Text & "', '" & _
AddInventoryIn.TxtUnitCost.Text & "', '" & _
AddInventoryIn.Txtstatus.Text & "','" & _
AddInventoryIn.TxtTime.Text & "' ) "

InsertSerial.Requery

MsgBox ("Item Successfully Added")
SerialInvFrm.TxtSerialFrm.Text = ""
Call LoadItemInv

End If
End Sub

Public Sub UpdateTotal()

'GetdaItem.Fields("RemaningStock") = GetdaItem.Fields("RemaningStock") AddInventoryIn.TxtRemain.Text
'Call GetItem
GetdaItem.Fields("RemainingStock") = AddInventoryIn.Txtremain.Text
GetdaItem.Fields("TotalStock") = AddInventoryIn.TxtTotalstock.Text
GetdaItem.UpdateBatch

End Sub


Public Sub GetAccount()

If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

With rs

.Open "SELECT * FROM tblaccountnum", cn, adOpenDynamic, adLockOptimistic

End With


cn.Execute "INSERT INTO tblaccountnum(AccountNumber)" & " VALUES ('" & Registerfrm.Accntxt.Text & "' ) "

rs.Requery

End Sub

Public Sub GetDRNumber()

If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

With rs

.Open "SELECT * FROM customize_drnumbertbl ORDER BY DR_Number Desc", cn, adOpenDynamic, adLockOptimistic

End With

'Set TransFrm.DRtxt1.DataSource = rs
'Set ItemFrm.DRtxtClone.DataSource = rs
'TransFrm.DRtxt1.DataField = "DR_Number"
'ItemFrm.DRtxtClone.DataField = "DR_Number"
TransFrm.DRtxt1.Text = "" & rs!DR_Number

'ItemFrm.DRtxtClone.Text = "" & rs!DR_Number
End Sub


Public Sub GetStoreInfo()
If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

With rs

.Open " SELECT * FROM Store_Info ", cn, adOpenKeyset, adLockOptimistic

End With


Set FrmCustomerInfo.DataGrid1.DataSource = rs

End Sub


Public Sub GetInsert_Info()

If FrmCustomerInfo.TxtStoreName.Text = "" And FrmCustomerInfo.TxtCost.Text = "" And FrmCustomerInfo.Txtadd.Text = "" Then

MsgBox "Kindly Fillup Text Data Entry", vbInformation + vbExclamation

Else

If cn.State = 1 Then
cn.Close
End If

Call condatabase

Set rs = New ADODB.Recordset

With rs



.Open " SELECT * FROM Store_Info ", cn, adOpenKeyset, adLockOptimistic

End With

cn.Execute "INSERT INTO Store_Info(Store_Name,Cost_Center,Address) " & "VALUES ('" & FrmCustomerInfo.TxtStoreName.Text & "','" & FrmCustomerInfo.TxtCost.Text & "','" & FrmCustomerInfo.Txtadd.Text & "')"

rs.Requery

Set FrmCustomerInfo.DataGrid1.DataSource = rs

End If


End Sub

Public Sub GetMaterial()

If cn.State = 1 Then
cn.Close
End If

Call condatabase

Set rs = New ADODB.Recordset


With rs

.Open "SELECT * FROM materialtypetlb", cn, adOpenDynamic, adLockOptimistic

End With

Do While Not rs.EOF

FrmAddNewMaterial.CmbMatType.AddItem "" & rs!Category

rs.MoveNext
Loop

End Sub

Public Sub GetInventoryStock()

If cn.State = 1 Then
cn.Close
End If

Call condatabase

Set rs = New ADODB.Recordset


With rs

.Open "SELECT Date_Entry,ItemDes,BrandModel,MaterialCode,ItemCode,Unit_Cost,Add_Des,MaterialType FROM inventorystocktbl  WHERE ItemCode LIKE '" & FrmAddNewMaterial.Txtitemcode.Text & "'  ", cn, adOpenDynamic, adLockOptimistic
' WHERE ItemCode LIKE '" & FrmAddNewMaterial.TxtItemCode.Text & "'
End With

Set FrmAddNewMaterial.DataGrid1.DataSource = rs


End Sub

Public Sub AddMaterial()


If cn.State = 1 Then
cn.Close
End If

Call condatabase

Set rs = New ADODB.Recordset

With rs

.Open "SELECT *  FROM inventorystocktbl", cn, adOpenDynamic, adLockOptimistic

End With


cn.Execute "INSERT INTO inventorystocktbl(Date_Entry,ItemDes,BrandModel,MaterialCode,ItemCode,Unit_Cost,Add_Des,MaterialType,MaterialCon,MaximumStock,Unit,Total_Cost,TotalStock,Dailyout,RemainingStock,Qty_Out) " & _
"VALUES ('" & FrmAddNewMaterial.DTPicker1.Value & "','" & _
FrmAddNewMaterial.TxtBox_Itemdesc.Text & "','" & _
FrmAddNewMaterial.TxtBrand.Text & "','" & _
FrmAddNewMaterial.TxtMatCode.Text & "','" & _
FrmAddNewMaterial.Txtitemcode.Text & "','" & _
FrmAddNewMaterial.TxtCost.Text & "','" & _
FrmAddNewMaterial.TxtBox_AddDesc.Text & "' , '" & _
FrmAddNewMaterial.CmbMatType.Text & "', '" & _
FrmAddNewMaterial.CmbMatCon.Text & "' , '" & _
FrmAddNewMaterial.TxtMaxStock.Text & "', '" & _
FrmAddNewMaterial.TxtUnitType.Text & "', '" & _
FrmAddNewMaterial.TxtTotalCost.Text & "', '" & _
FrmAddNewMaterial.TxtTotal.Text & "', '" & _
FrmAddNewMaterial.TxtDailyOut.Text & "', '" & _
FrmAddNewMaterial.Txtremain.Text & "', '" & _
FrmAddNewMaterial.Txtqtyout.Text & "') "


'Total_Cost , TotalStock, Dailyout, RemainingStock

rs.Requery

MsgBox "Data has been save", vbInformation


Call GetInventoryStock


FrmAddNewMaterial.TxtBox_Itemdesc.Text = ""
FrmAddNewMaterial.TxtBrand.Text = ""
FrmAddNewMaterial.TxtMatCode.Text = ""
FrmAddNewMaterial.Txtitemcode.Text = ""
FrmAddNewMaterial.TxtCost.Text = ""
FrmAddNewMaterial.TxtBox_AddDesc.Text = ""
FrmAddNewMaterial.CmbMatType.Text = "Select"
FrmAddNewMaterial.CmbMatCon.Text = "Select"
FrmAddNewMaterial.TxtMaxStock.Text = ""
FrmAddNewMaterial.TxtUnitType.Text = ""
FrmAddNewMaterial.TxtTotalCost.Text = ""
FrmAddNewMaterial.TxtTotal.Text = ""
FrmAddNewMaterial.TxtDailyOut.Text = ""
FrmAddNewMaterial.Txtremain.Text = ""
FrmAddNewMaterial.Txtqtyout.Text = ""

End Sub

Public Sub LogInMe()

Dim msg As String

LoginFrm.CondtionTxt.Text = LoginFrm.CondtionTxt.Text - 1

If cn.State = 1 Then
cn.Close
End If

Set rs = New ADODB.Recordset

Call condatabase

With rs
.Open "SELECT * FROM tbluseraccount WHERE User_type = '" & LoginFrm.Text1 & "' AND  User_Name = '" & LoginFrm.UserTxt.Text & "' AND Password = '" & LoginFrm.PasTxt.Text & "'  ", cn, adOpenKeyset, adLockOptimistic
End With

If rs.RecordCount <> 0 Then

Main.menuaccnt.Enabled = True
Main.MenuInv.Enabled = True
Main.MenuTran.Enabled = True
Main.Menucus.Enabled = True
Main.MenuLogin.Visible = False
Main.MenuLog.Visible = True
Unload LoginFrm
TransFrm.Show vbModal

ElseIf LoginFrm.CondtionTxt.Text = 0 Then

msg = MsgBox("3 Times Attempt to enter valid Username and Password", vbCritical, "Need to Change Password")

ChangePassFrm.Show vbModal



Else


msg = MsgBox("Invalid Username and password", vbCritical)
LoginFrm.UserTxt.Text = ""
LoginFrm.PasTxt.Text = ""
LoginFrm.UserTxt.SetFocus



End If




End Sub


Public Sub AddDRNumber()

If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

With rs

.Open "SELECT * FROM customize_drnumbertbl ORDER BY DR_Number Desc ", cn, adOpenDynamic, adLockOptimistic

End With

cn.Execute "INSERT INTO customize_drnumbertbl (DR_Number) " & " VALUES ('" & ItemFrm.DRtxtClone.Text & "') "
rs.Requery

TransFrm.DRtxt1.Text = "" & rs!DR_Number

End Sub

Public Sub Item_Peripherals()

If cn.State = 1 Then
cn.Close
End If
Call condatabase
Set rs = New ADODB.Recordset

With rs
.Open "SELECT * FROM inventorystocktbl WHERE ItemCode LIKE '" & ItemFrm.itemcodelabel.Caption & "' ", cn, adOpenKeyset, adLockOptimistic
End With

Set AdditionalFrm.withTxt.DataSource = rs

AdditionalFrm.withTxt.DataField = "" & "Add_Des"
End Sub



Public Sub GetRequest23()

If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

With rs
.Open "SELECT * FROM item_request_tbl WHERE DR_No LIKE '" & TransFrm.DRtxt1.Text & "' And ItemCode LIKE '" & ItemFrm.ItemDesTxt.Text & "' ", cn, adOpenKeyset, adLockOptimistic
End With


Set EditFRmQty.ItemDesTxt1.DataSource = rs
Set EditFRmQty.QtyTxt.DataSource = rs

EditFRmQty.ItemDesTxt1.DataField = "Particulars_Description"
EditFRmQty.QtyTxt.DataField = "Quantity"


End Sub

Public Sub GetReSet()

If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

With rs
.Open "SELECT * FROM item_request_tbl WHERE DR_No LIKE '" & TransFrm.DRtxt1.Text & "' And ItemCode LIKE '" & ItemFrm.ItemDesTxt.Text & "' ", cn, adOpenKeyset, adLockOptimistic
End With



Set EditFRmQty.EditQtyTxt.DataSource = rs

EditFRmQty.EditQtyTxt.DataField = "Quantity"

'rs("Quantity") = EditFRmQty.EditQtyTxt.DataField

'rs.Update

End Sub

Public Sub GetEmployee()

If cn.State = 1 Then
cn.Close
End If
Call condatabase


Set rs = New ADODB.Recordset

With rs
.Open "SELECT * FROM employeetable ", cn, adOpenKeyset, adLockOptimistic
End With

Set ARForm.DataGrid1.DataSource = rs


Set ARForm.TxtFirstVar.DataSource = rs
Set ARForm.TxtLastVar.DataSource = rs
Set ARForm.TxtCost.DataSource = rs
Set ARForm.TxtDept.DataSource = rs
Set ARForm.TxtDiv.DataSource = rs
Set ARForm.TxtEmpNo.DataSource = rs
Set ARForm.TxtCompany.DataSource = rs

ARForm.TxtFirstVar.DataField = "" & "FirstName"
ARForm.TxtLastVar.DataField = "" & "LastName"
ARForm.TxtCost.DataField = "" & "CostCenter"
ARForm.TxtDept.DataField = "" & "Dept"
ARForm.TxtEmpNo.DataField = "" & "EmpNo"
ARForm.TxtDiv.DataField = "" & "Division"
ARForm.TxtCompany.DataField = "" & "Company"

ARForm.TxtEmpName = ARForm.TxtFirstVar.Text & " " & ARForm.TxtLastVar.Text

ARForm.TxtEmpName.Text = ARForm.TxtEmpName



End Sub

Public Sub GetEmployeeSearch()

If cn.State = 1 Then
cn.Close
End If
Call condatabase


Set rs = New ADODB.Recordset

With rs
.Open "SELECT * FROM employeetable WHERE FirstName LIKE '" & ARForm.TxtSearch.Text & "%' or LastName LIKE '" & ARForm.TxtSearch.Text & "%' or EmpNo LIKE '" & ARForm.TxtSearch.Text & "%' or CostCenter LIKE '" & ARForm.TxtSearch.Text & "%'  ", cn, adOpenKeyset, adLockOptimistic
End With

Set ARForm.DataGrid1.DataSource = rs

Set ARForm.TxtFirstVar.DataSource = rs
Set ARForm.TxtLastVar.DataSource = rs
Set ARForm.TxtCost.DataSource = rs
Set ARForm.TxtDept.DataSource = rs
Set ARForm.TxtDiv.DataSource = rs
Set ARForm.TxtEmpNo.DataSource = rs
Set ARForm.TxtCompany.DataSource = rs

ARForm.TxtFirstVar.DataField = "" & "FirstName"
ARForm.TxtLastVar.DataField = "" & "LastName"
ARForm.TxtCost.DataField = "" & "CostCenter"
ARForm.TxtDept.DataField = "" & "Dept"
ARForm.TxtEmpNo.DataField = "" & "EmpNo"
ARForm.TxtDiv.DataField = "" & "Division"
ARForm.TxtCompany.DataField = "" & "Company"


End Sub


Public Sub GetEmployeeLogin()

Call GetAkcnoNumber

If cn.State = 1 Then
cn.Close
End If
Call condatabase


Set rs = New ADODB.Recordset

With rs
.Open "SELECT * FROM employeetable WHERE EmpNo = '" & InputEmpForm.TxtEmpNo.Text & "'", cn, adOpenKeyset, adLockOptimistic
End With


If rs.RecordCount <> 0 Then

Set ARForm.DataGrid1.DataSource = rs
Set ARForm.TxtFirstVar.DataSource = rs
Set ARForm.TxtLastVar.DataSource = rs
Set ARForm.TxtCost.DataSource = rs
Set ARForm.TxtDept.DataSource = rs
Set ARForm.TxtDiv.DataSource = rs
Set ARForm.TxtEmpNo.DataSource = rs
Set ARForm.TxtCompany.DataSource = rs

ARForm.TxtFirstVar.DataField = "" & "FirstName"
ARForm.TxtLastVar.DataField = "" & "LastName"
ARForm.TxtCost.DataField = "" & "CostCenter"
ARForm.TxtDept.DataField = "" & "Dept"
ARForm.TxtEmpNo.DataField = "" & "EmpNo"
ARForm.TxtDiv.DataField = "" & "Division"
ARForm.TxtCompany.DataField = "" & "Company"

ARForm.Option1.Value = True

ARForm.TxtEmpName = ARForm.TxtFirstVar.Text & " " & ARForm.TxtLastVar.Text

ARForm.TxtEmpName = ARForm.TxtEmpName.Text



ARForm.Show



Else

MsgBox "Employee Number Doesn't Exist" & " " & "Pls Try Again", vbCritical

InputEmpForm.TxtEmpNo.Text = ""



End If


End Sub

Public Sub GetAkcnoNumber()
If cn.State = 1 Then
cn.Close
End If
Call condatabase


Set rs = New ADODB.Recordset


With rs
.Open "SELECT * FROM arnumber ", cn, adOpenDynamic, adLockOptimistic
End With

ARForm.TxtAR.Text = rs!ARNo


End Sub

Public Sub viewstore()

If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

With rs

.Open " SELECT * FROM Store_Info ", cn, adOpenKeyset, adLockOptimistic

End With

Set TransFrm.DataGrid2.DataSource = rs

End Sub

Public Sub srchitemcode()

If cn.State = 1 Then
cn.Close
End If

Call condatabase

Set rs = New ADODB.Recordset

With rs

.Open "SELECT * FROM InventoryStocktbl WHERE ItemCode Like '" & ItemFrm.itemcodelabel.Caption & "'", cn, adOpenKeyset, adLockOptimistic

Set ItemFrm.List1.DataSource = rs
Set ItemFrm.DataGrid2.DataSource = rs
Set ItemFrm.TotalStcktxt.DataSource = rs
Set ItemFrm.Retxtvar.DataSource = rs
Set ItemFrm.maTxtvar.DataSource = rs
Set ItemFrm.QtyOutTxt.DataSource = rs
Set ItemFrm.MtrTxtvar.DataSource = rs
Set ItemFrm.Sertxt.DataSource = rs
Set ItemFrm.Qtytxtvar.DataSource = rs
Set ItemFrm.UntCmb.DataSource = rs
Set ItemFrm.RemarksCmb.DataSource = rs
Set ItemFrm.Txtinvitemcode.DataSource = rs

ItemFrm.Txtinvitemcode.DataField = "ItemCode"
ItemFrm.Qtytxtvar.DataField = "DailyOut"
ItemFrm.TotalStcktxt.DataField = "TotalStock"
ItemFrm.List1.DataField = "ItemDes"
ItemFrm.Retxtvar.DataField = "RemainingStock"
ItemFrm.maTxtvar.DataField = "Maximumstock"
ItemFrm.MtrTxtvar.DataField = "MaterialCode"
ItemFrm.Sertxt.DataField = "MaterialCon"
ItemFrm.QtyOutTxt.DataField = "Qty_out"
ItemFrm.UntCmb.DataField = "Unit"
ItemFrm.RemarksCmb.DataField = "MaterialType"

End With
If ItemFrm.ItemTxt.Text = 11 Then
Unload ItemFrm
End If
End Sub


Public Sub viewDRnumber()

If cn.State = 1 Then ' 1
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

With rs ' OPEN THE RECORDSET FROM CONNECTION
.Open "SELECT * FROM ITEM_REQUEST_tbl ", cn, adOpenKeyset, adLockOptimistic
End With

'Set DataGrid4.DataSource = xitem

Do While Not rs.EOF

ItemFrm.txtvalue.Text = "" & rs!Uniquevalue
ItemFrm.labelvar2.Caption = "" & rs!DR_ID
rs.MoveNext

Loop

Call viewMat

End Sub

Public Sub viewMat()

If cn.State = 1 Then ' 2
cn.Close
End If

Call condatabase

Set rs = New ADODB.Recordset

With rs

.Open "SELECT * FROM MaterialTypetlb", cn, adOpenDynamic, adLockOptimistic

End With

Do While Not rs.EOF

ItemFrm.RemarksCmb.AddItem rs!Category

rs.MoveNext

Loop

Call viewinvCode

End Sub

Public Sub viewinvCode()

If cn.State = 1 Then '3
cn.Close
End If

Call condatabase

Set rs = New ADODB.Recordset

With rs

.Open "SELECT * FROM InventoryStocktbl ", cn, adOpenKeyset, adLockOptimistic

End With

'Set DataGrid2.DataSource = rs

Do While Not rs.EOF

ItemFrm.List1.AddItem rs("ItemDes")
ItemFrm.ItemDesCmb.AddItem rs("ItemCode") & " - " & rs("ItemDes")

rs.MoveNext

Loop

End Sub

Public Sub srchInvserial()

If cn.State = 1 Then
cn.Close
End If

Call condatabase

Set rs = New ADODB.Recordset

With rs

.Open "SELECT * FROM listofiventory_TBL WHERE SerialNum = '" & ItemFrm.SerialTxt.Text & "' ", cn, adOpenDynamic, adLockOptimistic

End With

Set ItemFrm.TxtvarserialNo.DataSource = rs
Set ItemFrm.itembartxt.DataSource = rs
Set ItemFrm.DataGrid3.DataSource = rs
Set ItemFrm.QtyTxt.DataSource = rs
Set ItemFrm.UntCmb.DataSource = rs
Set ItemFrm.RemarksCmb.DataSource = rs
Set ItemFrm.Codtxtvar.DataSource = rs
Set ItemFrm.itemcodelabel.DataSource = rs
Set ItemFrm.Txtout.DataSource = rs
Set ItemFrm.Txtrelease.DataSource = rs
Set ItemFrm.Txtstatus.DataSource = rs
Set ItemFrm.ListInvCaptionId.DataSource = rs
Set ItemFrm.TxtItemcodesrch.DataSource = rs

ItemFrm.TxtvarserialNo.DataField = "SerialNum"
ItemFrm.itembartxt.DataField = "ItemDescription"
ItemFrm.TxtItemcodesrch.DataField = "ItemCode"
ItemFrm.ListInvCaptionId.DataField = "ListInv_ID"
ItemFrm.Txtout.DataField = "Date_Out"
ItemFrm.Txtrelease.DataField = "Released_To"
ItemFrm.Txtstatus.DataField = "Status"
ItemFrm.QtyTxt.DataField = "Quantity"
ItemFrm.Codtxtvar.DataField = "ProductCode"
ItemFrm.UntCmb.DataField = "Unit"
ItemFrm.RemarksCmb.DataField = "MaterialType"
ItemFrm.itemcodelabel.DataField = "ItemCode"

Set ItemFrm.TxtItemcodesrch.DataSource = Nothing
Set ItemFrm.Txtstatus.DataSource = Nothing
Set ItemFrm.Txtout.DataSource = Nothing
Set ItemFrm.Txtrelease.DataSource = Nothing

End Sub

Public Sub GetItemcode()

Set ItemFrm.TxtItemcodesrch.DataSource = Nothing

If cn.State = 1 Then
cn.Close
End If

Call condatabase

Set rs = New ADODB.Recordset

With rs
.Open "SELECT * FROM InventoryStocktbl WHERE ItemCode Like '" & ItemFrm.ItemDesTxt.Text & "' ", cn, adOpenKeyset, adLockOptimistic
End With

Set ItemFrm.List1.DataSource = rs
Set ItemFrm.TxtvarTotal.DataSource = rs
Set ItemFrm.TxtvarRemain.DataSource = rs
Set ItemFrm.TxtvarMat.DataSource = rs
Set ItemFrm.Txtvarqtyout.DataSource = rs
Set ItemFrm.Txtvarser.DataSource = rs
Set ItemFrm.TxtvarUnt.DataSource = rs
Set ItemFrm.TxtvarMarks.DataSource = rs
Set ItemFrm.TxtvarDes.DataSource = rs
Set ItemFrm.itemcodelabel.DataSource = rs

ItemFrm.itemcodelabel.DataField = "ItemCode"
ItemFrm.List1.DataField = "ItemDes"
ItemFrm.TxtvarDes.DataField = "ItemDes"
ItemFrm.TxtvarTotal.DataField = "TotalStock"
ItemFrm.TxtvarRemain.DataField = "RemainingStock"
ItemFrm.TxtvarMat.DataField = "MaterialCode"
ItemFrm.Txtvarser.DataField = "MaterialCon"
ItemFrm.TxtvarUnt.DataField = "Unit"
ItemFrm.TxtvarMarks.DataField = "MaterialType"
ItemFrm.Txtvarqtyout.DataField = "Qty_Out"

'If ItemFrm.ItemTxt.Text = 11 Then
'Unload ItemFrm
'End If

End Sub


Public Sub SendtheDataInv()
' Process for out the items
Dim msg As String

If Not ItemFrm.SerialTxt.Text = ItemFrm.TxtvarserialNo.Text Then
MsgBox "The Serial Number Does Not Exist", vbCritical, "Try Again"
ItemFrm.SerialTxt.Text = ""
ItemFrm.TxtvarserialNo.Text = "@4343FRDFD343D@"
Else
If ItemFrm.Txtstatus.Text = "OUT" Then

msg = MsgBox("Item is already out :" & "  " & ItemFrm.Txtout.Text, vbInformation, " Try another Item ")

ItemFrm.SerialTxt.Text = ""

ElseIf ItemFrm.Txtinvitemcode.Text = ItemFrm.itemcodelabel.Caption Then

ItemFrm.Txtstatus.Text = "OUT"
ItemFrm.Txtout.Text = TransFrm.DateTxt.Text
ItemFrm.Txtrelease.Text = TransFrm.DelTxt.Text
Call callmeadd
Call Qtyout

ElseIf ItemFrm.Txtinvitemcode.Text <> ItemFrm.itemcodelabel.Caption Then

MsgBox "Serial Number Could not Found ", vbCritical, "Error Try again "
ItemFrm.SerialTxt.Text = ""

End If
End If
End Sub

' For Manual Entry

Public Sub ManualEntry()
Call AddDRNumber
If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

Dim sItem As String
Dim sdes As String
Dim sqty As String
Dim sernum As String
Dim sCat As String
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
Dim Emp As String
Dim coditem As String
Dim var3 As String

Emp = TransFrm.TxtEmpNo.Text
sdte = TransFrm.DateTxt.Text
sdes = FormManualEntry.RichtxtDesc.Text
sItem = ItemFrm.ItemTxt.Text
sqty = FormManualEntry.Txtvarqty.Text
sernum = FormManualEntry.Txtser.Text
remrks = FormManualEntry.Cboremarks.Text
stats = ItemFrm.LabelPending.Caption
unt = FormManualEntry.Txtunit.Text
sdr = TransFrm.DRtxt1.Text
Requester = TransFrm.DelTxt.Text
cost = TransFrm.CostTxt.Text
'add = TransFrm.AddTxt.Text
eng = TransFrm.EngTxt.Text
recev = TransFrm.ReceivedTxt
tme = TransFrm.TimeTxt.Text
coditem = ItemFrm.Txtitemcode.Text
var3 = ItemFrm.txtvalue.Text
sCat = FormManualEntry.CboCategory.Text

If cn.State = 1 Then
cn.Close
End If
Call condatabase

With rs
.Open "SELECT  * FROM item_request_tbl", cn, adOpenDynamic, adLockOptimistic
End With
'Item,Particulars_Description,Quantity,Unit,Serial_Number,Remarks,Status,

cn.Execute " INSERT INTO ITEM_REQUEST_tbl (DR_No,DR_Date,EmpNo,Requester_Store,Cost_Center,Item,Particulars_Description,Category,ItemCode,Quantity,Unit,Serial_Number,Remarks,Status,Shipped_By,Received_By,Time_Created,Uniquevalue)" & _
" VALUES ( '" & sdr & "' ,'" & sdte & "','" & Emp & "', '" & Requester & "' , '" & cost & "', '" & sItem & "', '" & sdes & "', '" & sCat & "', '" & coditem & "', '" & sqty & "', '" & unt & "', '" & sernum & "', '" & remrks & "', '" & stats & "', '" & eng & "', '" & recev & "', '" & tme & "'   , '" & var3 & "') "

rs.Requery

MsgBox "Data has been successfully Added"

FormManualEntry.Txtvarqty.Text = 1
Call listmeView
Call GetDRNew

If FormManualEntry.Txtvarunload.Text = "M" Then
Unload QtyManualform
End If
ItemFrm.ListView1.Refresh

ItemFrm.ItemTxt = ItemFrm.ItemTxt + 1

Set ItemFrm.List1.DataSource = Nothing
Set TransFrm.DelTxt.DataSource = Nothing
Set TransFrm.CostTxt.DataSource = Nothing



End Sub

' Load for dr manualEntry

Public Sub GetDRNew()

If cn.State = 1 Then
cn.Close
End If
Call condatabase


Set rs = New ADODB.Recordset

With rs
.Open "SELECT DR_No as 'DRNo',Particulars_Description as 'Description',Serial_Number as 'SerialNo',Quantity as 'Qty',Unit FROM item_request_tbl WHERE DR_No LIKE '" & ItemFrm.DRtxtClone.Text & "' ", cn, adOpenDynamic, adLockOptimistic

End With

Set FormManualEntry.DataGrid2.DataSource = rs

FormManualEntry.DataGrid2.Columns(0).Width = 700
FormManualEntry.DataGrid2.Columns(1).Width = 2800
FormManualEntry.DataGrid2.Columns(2).Width = 1700
FormManualEntry.DataGrid2.Columns(3).Width = 500
FormManualEntry.DataGrid2.Columns(4).Width = 500


End Sub



Public Sub GetEmployeeView()

If cn.State = 1 Then
cn.Close
End If
Call condatabase


Set rs = New ADODB.Recordset

With rs
.Open "SELECT * FROM employeetable ", cn, adOpenKeyset, adLockOptimistic
End With

Set ARForm.DataGrid1.DataSource = rs

Set ARForm.TxtFirstVar.DataSource = rs
Set ARForm.TxtLastVar.DataSource = rs
Set ARForm.TxtCost.DataSource = rs
Set ARForm.TxtDept.DataSource = rs
Set ARForm.TxtDiv.DataSource = rs
Set ARForm.TxtEmpNo.DataSource = rs
Set ARForm.TxtCompany.DataSource = rs

ARForm.TxtFirstVar.DataField = "" & "FirstName"
ARForm.TxtLastVar.DataField = "" & "LastName"
ARForm.TxtCost.DataField = "" & "CostCenter"
ARForm.TxtDept.DataField = "" & "Dept"
ARForm.TxtEmpNo.DataField = "" & "EmpNo"
ARForm.TxtDiv.DataField = "" & "Division"
ARForm.TxtCompany.DataField = "" & "Company"

End Sub

' for ManualConsumables and ou- serviceunt

Public Sub GetInvStock()

If cn.State = 1 Then
cn.Close
End If
Call condatabase
Set rs = New ADODB.Recordset
With rs
.Open "SELECT ItemCode,ItemDes,Unit,RemainingStock as 'Remain_Bal',Unit_Cost,MaterialType as 'Remarks' FROM inventorystocktbl ", cn, adOpenKeyset, adLockOptimistic
End With

Set FormManualEntry.DataGrid1.DataSource = rs

FormManualEntry.DataGrid1.Columns(0).Width = 800
FormManualEntry.DataGrid1.Columns(1).Width = 2800
FormManualEntry.DataGrid1.Columns(2).Width = 600
FormManualEntry.DataGrid1.Columns(3).Width = 1200
FormManualEntry.DataGrid1.Columns(4).Width = 900
FormManualEntry.DataGrid1.Columns(5).Width = 1000


End Sub

Public Sub GetInvStocksrch()
If cn.State = 1 Then
cn.Close
End If
Call condatabase
Set rs = New ADODB.Recordset
With rs
.Open "SELECT ItemCode,ItemDes,Unit,RemainingStock as 'Remain_Bal',Unit_Cost,MaterialType as 'Remarks' FROM inventorystocktbl WHERE ItemCode LIKE '" & FormManualEntry.TxtSrch.Text & "%' or ItemDes LIKE '" & FormManualEntry.TxtSrch.Text & "%'  ", cn, adOpenKeyset, adLockOptimistic
End With

Set FormManualEntry.DataGrid1.DataSource = rs
Set FormManualEntry.Txtcode.DataSource = rs
Set FormManualEntry.Txtdesc.DataSource = rs
Set FormManualEntry.TxtDrUnit.DataSource = rs
Set FormManualEntry.TxtCost.DataSource = rs
Set FormManualEntry.Txtmarks.DataSource = rs
Set FormManualEntry.Txtremain.DataSource = rs

FormManualEntry.Txtcode.DataField = "ItemCode"
FormManualEntry.Txtdesc.DataField = "ItemDes"
FormManualEntry.TxtDrUnit.DataField = "Unit"
FormManualEntry.Txtremain.DataField = "Remain_Bal"
FormManualEntry.Txtmarks.DataField = "Remarks"
FormManualEntry.TxtCost.DataField = "Unit_Cost"

FormManualEntry.DataGrid1.Columns(0).Width = 800
FormManualEntry.DataGrid1.Columns(1).Width = 2800
FormManualEntry.DataGrid1.Columns(2).Width = 600
FormManualEntry.DataGrid1.Columns(3).Width = 1200
FormManualEntry.DataGrid1.Columns(4).Width = 900
FormManualEntry.DataGrid1.Columns(5).Width = 1000

End Sub

Public Sub GetItemsrch()
If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

With rs
.Open "SELECT MaterialCode,ItemDes,ItemCode,Unit,MaterialType,Unit_Cost,MaterialCon,RemainingStock,QTY_Out,TotalStock FROM InventoryStocktbl WHERE ItemDes LIKE '" & AddInventoryIn.Txtitemsrch.Text & "%' ", cn, adOpenKeyset, adLockOptimistic
End With

Set AddInventoryIn.DataGrid1.DataSource = rs
Set AddInventoryIn.Txtdes.DataSource = rs
Set AddInventoryIn.Txtitemcode.DataSource = rs
Set AddInventoryIn.TxtMatCode.DataSource = rs
Set AddInventoryIn.TxtMaType.DataSource = rs
Set AddInventoryIn.Txtunit.DataSource = rs
Set AddInventoryIn.TxtUnitCost.DataSource = rs
Set AddInventoryIn.TxtMatCon.DataSource = rs
Set AddInventoryIn.Txtremain.DataSource = rs
Set AddInventoryIn.Txtqtyout.DataSource = rs
Set AddInventoryIn.TxtTotalstock.DataSource = rs


AddInventoryIn.Txtdes.DataField = "ItemDes"
AddInventoryIn.Txtitemcode.DataField = "ItemCode"
AddInventoryIn.TxtMatCode.DataField = "MaterialCode"
AddInventoryIn.TxtMaType.DataField = "MaterialType"
AddInventoryIn.Txtunit.DataField = "Unit"
AddInventoryIn.TxtUnitCost.DataField = "Unit_Cost"
AddInventoryIn.TxtMatCon.DataField = "MaterialCon"
AddInventoryIn.Txtremain.DataField = "RemainingStock"
AddInventoryIn.Txtqtyout.DataField = "QTY_Out"
AddInventoryIn.TxtTotalstock.DataField = "TotalStock"


End Sub

Public Sub countme()
Dim i As Integer
i = 1
Do While i <= 5
AddInventoryIn.CmbWarranty.AddItem i & " - " & "Yr/Yrs Warranty"
i = i + 1
Loop
End Sub

Public Sub Getfusiontable()
If cn.State = 1 Then
cn.Close
End If
Call condatabase
Set rs = New ADODB.Recordset
With rs
.Open "SELECT * FROM store_info JOIN sample_table ON store_info.StoreID = sample_table.SamID ", cn, adOpenKeyset, adLockOptimistic
End With

Set EditinfoFrm.DataGrid1.DataSource = rs

End Sub

Public Sub GetARview()
If cn.State = 1 Then
cn.Close
End If
Call condatabase
Set rs = New ADODB.Recordset
With rs
.Open "SELECT ARNumber as 'A.RNo',Description as 'Desc',SerialNo,AssetNo,Qty,Unit,Remarks FROM arinsert_table ", cn, adOpenKeyset, adLockOptimistic
End With

Set FormManualEntry.DataGrid3.DataSource = rs

FormManualEntry.DataGrid3.Columns(0).Width = 900
FormManualEntry.DataGrid3.Columns(1).Width = 2500
FormManualEntry.DataGrid3.Columns(2).Width = 2000
FormManualEntry.DataGrid3.Columns(3).Width = 1000
FormManualEntry.DataGrid3.Columns(4).Width = 500
FormManualEntry.DataGrid3.Columns(5).Width = 600
FormManualEntry.DataGrid3.Columns(6).Width = 1500

End Sub

Public Sub GetARviewSrch()
If cn.State = 1 Then
cn.Close
End If
Call condatabase
Set rs = New ADODB.Recordset
With rs
.Open "SELECT ARNumber as 'A.RNo',Description as 'Desc',SerialNo,AssetNo,Qty,Unit,Remarks FROM arinsert_table WHERE Description LIKE '" & FormManualEntry.Txtcon.Text & "%' or ARNumber LIKE '" & FormManualEntry.Txtcon.Text & "%'  ", cn, adOpenKeyset, adLockOptimistic
End With

Set FormManualEntry.DataGrid3.DataSource = rs

FormManualEntry.DataGrid3.Columns(0).Width = 900
FormManualEntry.DataGrid3.Columns(1).Width = 2500
FormManualEntry.DataGrid3.Columns(2).Width = 2000
FormManualEntry.DataGrid3.Columns(3).Width = 1000
FormManualEntry.DataGrid3.Columns(4).Width = 500
FormManualEntry.DataGrid3.Columns(5).Width = 600
FormManualEntry.DataGrid3.Columns(6).Width = 1500
End Sub

Public Sub GetDRNew1()

'Call ViewARTrans

If cn.State = 1 Then
cn.Close
End If
Call condatabase


Set rs = New ADODB.Recordset

With rs
.Open "SELECT DR_No as 'DRNo',Particulars_Description as 'Description',Serial_Number as 'SerialNo',Quantity as 'Qty',Unit FROM item_request_tbl ", cn, adOpenDynamic, adLockOptimistic

End With

Set FormManualEntry.DataGridNew.DataSource = rs

'Set FormManualAsset.TxtModel.DataSource = rs
'Set FormManualAsset.Txtcategory.DataSource = rs
Set FormManualEntry.Txtdesnew.DataSource = rs
Set FormManualEntry.Txtsernew.DataSource = rs
Set FormManualEntry.Txtqtynew.DataSource = rs
Set FormManualEntry.Txtunitnew.DataSource = rs

FormManualEntry.Txtdesnew.DataField = "Description"
FormManualEntry.Txtsernew.DataField = "SerialNo"
FormManualEntry.Txtqtynew.DataField = "Qty"
FormManualEntry.Txtunitnew.DataField = "Unit"

FormManualEntry.DataGridNew.Columns(0).Width = 900
FormManualEntry.DataGridNew.Columns(1).Width = 3500
FormManualEntry.DataGridNew.Columns(2).Width = 1700
FormManualEntry.DataGridNew.Columns(3).Width = 500
FormManualEntry.DataGridNew.Columns(4).Width = 500


End Sub

Public Sub UniqueSerial()
If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

With rs
.Open "SELECT * FROM listofiventory_tbl WHERE SerialNum LIKE '" & SerialInvFrm.TxtSerialFrm.Text & "' ", cn, adOpenKeyset, adLockOptimistic
End With

Set SerialInvFrm.Txtvarser.DataSource = rs

SerialInvFrm.Txtvarser.DataField = "SerialNum"

End Sub

' use to execute the data of inventory
Public Sub ViewData()
If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

With rs
.Open "SELECT DR_No,ItemDescription,SerialNum,Quantity,MaterialType FROM listofiventory_tbl WHERE DR_No LIKE '" & AddInventoryIn.TxtDRno.Text & "' ", cn, adOpenKeyset, adLockOptimistic
End With
  
Set AddItemFormInv.DataGrid1.DataSource = rs

End Sub
















































'-----------------------------------332018 - 342018 coding -----------------------------------------------------------------------------------------------------------------------

Public Sub Qtyout()
On Error Resume Next

If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

With rs
.Open "SELECT * FROM inventorystocktbl WHERE ItemCode LIKE '" & ItemFrm.itemcodelabel.Caption & "' ", cn, adOpenKeyset, adLockOptimistic
End With

Set ItemFrm.TxtvarRemain.DataSource = rs
Set ItemFrm.maTxtvar.DataSource = rs
Set ItemFrm.Txtvarqtyout.DataSource = rs
Set ItemFrm.MtrTxtvar.DataSource = rs
Set ItemFrm.Sertxt.DataSource = rs
Set ItemFrm.TxtvarTotal.DataSource = rs
Set ItemFrm.Qtytxtvar.DataSource = rs
Set ItemFrm.QtyOutTxt.DataSource = rs
Set ItemFrm.Retxtvar.DataSource = rs
Set ItemFrm.Txtreserved.DataSource = rs
Set ItemFrm.Txtavail.DataSource = rs

ItemFrm.Txtavail.DataField = "Avail_Bal"
ItemFrm.Txtreserved.DataField = "Reserved_Bal"
ItemFrm.Retxtvar.DataField = "RemainingStock"
ItemFrm.QtyOutTxt.DataField = "Qty_out"
ItemFrm.Qtytxtvar.DataField = "DailyOut"
ItemFrm.TxtvarTotal.DataField = "TotalStock"
ItemFrm.TxtvarRemain.DataField = "RemainingStock"
ItemFrm.maTxtvar.DataField = "Maximumstock"
ItemFrm.MtrTxtvar.DataField = "MaterialCode"
ItemFrm.Sertxt.DataField = "MaterialCon"
ItemFrm.Txtvarqtyout.DataField = "Qty_out"

If ItemFrm.Txtvarser.Text = "NA" Then

rs("Reserved_Bal") = Val(ItemFrm.Txtreserved.Text) + Val(Qtyfrm.Text1.Text)
ItemFrm.Txtreserved.Text = rs("Reserved_Bal")

rs("Avail_Bal") = Val(ItemFrm.TxtvarRemain.Text) - Val(ItemFrm.Txtreserved.Text)
ItemFrm.Txtavail.Text = rs("Avail_Bal")

rs.Update

'Set2("Qty_out") = Val(Set2("Qty_out")) + Val(Qtyfrm.Text1.Text)
'ItemFrm.Txtvarqtyout.Text = Set2("Qty_out")
'Set2("RemainingStock") = Val(Set2("RemainingStock")) - Val(Qtyfrm.Text1.Text)
'ItemFrm.TxtvarRemain.Text = Set2("RemainingStock")
'Set2("Totalstock") = Val(Set2("RemainingStock")) + Val(Set2("Qty_out"))
'ItemFrm.TxtvarTotal.Text = Set2("Totalstock")
'Set2("DailyOut") = Val(Set2("DailyOut")) + Val(Qtyfrm.Text1.Text)
'ItemFrm.Qtytxtvar.Text = Set2("DailyOut")

ElseIf ItemFrm.Sertxt.Text = "REQUIRED" Then


rs("Reserved_Bal") = Val(ItemFrm.Txtreserved.Text) + Val(ItemFrm.Qtytxt2.Text)
ItemFrm.Txtreserved.Text = rs("Reserved_Bal")

rs("Avail_Bal") = Val(ItemFrm.TxtvarRemain.Text) - Val(ItemFrm.Txtreserved.Text)
ItemFrm.Txtavail.Text = rs("Avail_Bal")

'rs("Qty_out") = Val(rs("Qty_out")) + Val(ItemFrm.Qtytxt2.Text)
'ItemFrm.QtyOutTxt.Text = rs("Qty_out")
'rs("RemainingStock") = Val(rs("RemainingStock")) - Val(ItemFrm.Qtytxt2.Text)
'ItemFrm.Retxtvar.Text = rs("RemainingStock")
'rs("Totalstock") = Val(rs("RemainingStock")) + Val(rs("Qty_out"))
'ItemFrm.TotalStcktxt.Text = rs("Totalstock")
'rs("DailyOut") = Val(rs("DailyOut")) + Val(ItemFrm.Qtytxt2.Text)
'ItemFrm.Qtytxtvar.Text = rs("DailyOut")

rs.Update

End If

End Sub


Public Sub editme()
If cn.State = 1 Then
cn.Close
End If
Call condatabase

With itemrs1
.Open "SELECT * FROM item_request_tbl WHERE DR_No LIKE '" & TransFrm.DRtxt1.Text & "' And ItemCode LIKE '" & ItemFrm.ItemDesTxt.Text & "' ", cn, adOpenKeyset, adLockOptimistic
End With

If itemrs1.RecordCount <> 0 Then

'Set EditFRmQty.ItemDesTxt1.DataSource = itemrs1
'Set EditFRmQty.QtyTxt.DataSource = itemrs1

'EditFRmQty.ItemDesTxt1.DataField = "Particulars_Description"
'EditFRmQty.QtyTxt.DataField = "Quantity"

ItemFrm.EdTxt.Text = 12

ItemFrm.ListView1.ListItems.Clear

Set ItemFrm.Txtreserved.DataSource = Nothing
Set ItemFrm.Txtavail.DataSource = Nothing

Call GetRequest
Else

Qtyfrm.Show vbModal

End If

End Sub

Public Sub GetRequest()

If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

With rs
.Open "SELECT * FROM item_request_tbl WHERE DR_No LIKE '" & TransFrm.DRtxt1.Text & "' And ItemCode LIKE '" & ItemFrm.ItemDesTxt.Text & "' ", cn, adOpenKeyset, adLockOptimistic
End With


Set EditFRmQty.ItemDesTxt1.DataSource = rs
Set EditFRmQty.EditQtyTxt.DataSource = rs
Set EditFRmQty.TxtId.DataSource = rs

EditFRmQty.TxtId.DataField = "DR_ID"
EditFRmQty.ItemDesTxt1.DataField = "Particulars_Description"
EditFRmQty.EditQtyTxt.DataField = "Quantity"

Set EditFRmQty.QtyTxt.DataSource = Nothing
Set EditFRmQty.ItemDesTxt1.DataSource = Nothing

Call GetStock

End Sub


Public Sub GetStock()

If cn.State = 1 Then

cn.Close

End If

Call condatabase


Set rs = New ADODB.Recordset

With rs

.Open "SELECT * FROM inventorystocktbl WHERE itemcode LIKE  '" & ItemFrm.ItemDesTxt.Text & "' ", cn, adOpenDynamic, adLockOptimistic

End With

Set EditFRmQty.Txtremain.DataSource = rs
Set EditFRmQty.Txtqtyout.DataSource = rs
Set EditFRmQty.TxtTotalstock.DataSource = rs
Set EditFRmQty.Txtinvid.DataSource = rs
Set ItemFrm.Txtreserved.DataSource = rs
Set ItemFrm.Txtavail.DataSource = rs

ItemFrm.Txtavail.DataField = "Avail_Bal"
ItemFrm.Txtreserved.DataField = "Reserved_Bal"
EditFRmQty.Txtinvid.DataField = "Inv_ID"
EditFRmQty.Txtremain.DataField = "" & "RemainingStock"
EditFRmQty.Txtqtyout.DataField = "" & "Qty_Out"
EditFRmQty.TxtTotalstock.DataField = "" & "TotalStock"

If ItemFrm.EdTxt.Text = 12 Then


rs("Reserved_Bal") = Val(ItemFrm.Txtreserved.Text) - Val(EditFRmQty.QtyTxt.Text)
ItemFrm.Txtreserved.Text = rs("Reserved_Bal")

rs("Avail_Bal") = Val(ItemFrm.TxtvarRemain.Text) - Val(ItemFrm.Txtreserved.Text)
ItemFrm.Txtavail.Text = rs("Avail_Bal")

rs.Update

'rs("RemainingStock") = Val(rs("RemainingStock")) + Val(EditFRmQty.QtyTxt.Text)
'EditFRmQty.Txtremain.Text = rs("RemainingStock")

'rs("Qty_Out") = rs("Qty_Out") - Val(EditFRmQty.QtyTxt.Text)
'EditFRmQty.TxtQtyOut.Text = rs("Qty_Out")

'rs("TotalStock") = Val(rs("RemainingStock")) + Val(rs("Qty_Out"))
'EditFRmQty.TxtTotalstock.Text = rs("TotalStock")

'rs.Fields("RemainingStock") = EditFRmQty.Txtremain.Text
'rs.Update
Set EditFRmQty.QtyTxt.DataSource = Nothing
Set EditFRmQty.ItemDesTxt1.DataSource = Nothing
Set EditFRmQty.EditQtyTxt.DataSource = Nothing
Set EditFRmQty.Txtqtyout.DataSource = Nothing
Set EditFRmQty.Txtremain.DataSource = Nothing
Set EditFRmQty.TxtTotalstock.DataSource = Nothing
Set EditFRmQty.Txtinvid.DataSource = Nothing
Set ItemFrm.Txtreserved.DataSource = Nothing
Set ItemFrm.Txtavail.DataSource = Nothing

EditFRmQty.Show vbModal

End If
End Sub

Public Sub GetUpdateStock()

If cn.State = 1 Then
cn.Close
End If

Call condatabase


Set rs = New ADODB.Recordset

If EditFRmQty.EditQtyTxt.Text > Val(EditFRmQty.Txtremain.Text) Then

MsgBox " 'Value does not match' " & " " & " Remaining Stock : " & " " & EditFRmQty.Txtremain.Text, vbCritical
Else

With rs

.Open "SELECT * FROM inventorystocktbl WHERE Inv_ID = '" & EditFRmQty.Txtinvid.Text & "'  ", cn, adOpenDynamic, adLockOptimistic
End With

rs("Reserved_Bal") = Val(ItemFrm.Txtreserved.Text) + Val(EditFRmQty.QtyTxt.Text)
ItemFrm.Txtreserved.Text = rs("Reserved_Bal")

rs("Avail_Bal") = Val(ItemFrm.TxtvarRemain.Text) - Val(ItemFrm.Txtreserved.Text)
ItemFrm.Txtavail.Text = rs("Avail_Bal")


'rs("RemainingStock") = Val(rs("RemainingStock")) - Val(EditFRmQty.EditQtyTxt.Text)
'EditFRmQty.Txtremain.Text = rs("RemainingStock")

'rs("Qty_Out") = rs("Qty_Out") + Val(EditFRmQty.EditQtyTxt.Text)
'EditFRmQty.TxtQtyOut.Text = rs("Qty_Out")

'rs("TotalStock") = Val(rs("RemainingStock")) + Val(rs("Qty_Out"))
'EditFRmQty.TxtTotalstock.Text = rs("TotalStock")
 
'rs.Fields("RemainingStock") = EditFRmQty.TxtRemain.Text
rs.Update


'cn.Execute "UPDATE inventorystocktbl SET RemainingStock = '" & EditFRmQty.TxtRemain.Text & _
'"', Qty_Out = '" & EditFRmQty.TxtQtyOut.Text & "', TotalStock = '" & EditFRmQty.TxtTotalstock.Text & _
'"'  VALUES Inv_ ID = '" & EditFRmQty.TxtinvId.Text & "' "
'rs.UpdateBatch adAffectCurrent
'TxtRemain
'TxtQtyOut
'TxtTotalStock
'TxtinvId
Call GetEditupdate
End If

End Sub


Public Sub GetEditupdate()

If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

With rs
.Open "SELECT * FROM item_request_tbl ", cn, adOpenKeyset, adLockOptimistic
End With

'WHERE DR_No LIKE '" & TransFrm.DRtxt1.Text & "' And ItemCode LIKE '" & ItemFrm.ItemDesTxt.Text & "'

cn.Execute "UPDATE item_request_tbl SET Particulars_Description = '" & EditFRmQty.ItemDesTxt1.Text & "',Quantity = '" & EditFRmQty.EditQtyTxt.Text & _
"'  WHERE DR_ID = '" & EditFRmQty.TxtId.Text & "'  "
rs.UpdateBatch adAffectCurrent

MsgBox "Data has been Successfully updated and stock is updated"

ItemFrm.ItemDesTxt.Text = ""

Call listmeView2

End Sub

Public Sub View_INVSTOCK()
If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

With rs
.Open "SELECT * FROM InventoryStocktbl WHERE Itemcode = '" & FormDRitemUpdate.Txtitemcode.Text & "' ", cn, adOpenKeyset, adLockOptimistic

If rs.RecordCount <> 0 Then

FormDRitemUpdate.Txtinvid.Text = rs!INV_ID
FormDRitemUpdate.Txtindes.Text = rs!ItemDes
FormDRitemUpdate.Txtinvitemcode.Text = rs!ItemCode
FormDRitemUpdate.Txtinvremain.Text = rs!RemainingStock

FormDRitemUpdate.Txtinvtotal.Text = rs!TotalStock
FormDRitemUpdate.Txtqtyout.Text = rs!QTY_OUT
FormDRitemUpdate.Txtreser.Text = rs!Reserved_Bal
FormDRitemUpdate.Txtavail.Text = rs!AVAIL_BAL

Else


FormUpdatePendDR.Show vbModal

End If
End With

End Sub


Public Sub LoadDR()

On Error Resume Next

If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

With rs
.Open "SELECT DR_ID, DR_No, Requester_Store, Cost_Center, EmpNo, Particulars_Description as 'Description', Quantity as 'QTY', Unit, Serial_Number as 'SerialNum', AssetNo, Remarks, Status,ItemCode FROM item_request_tbl WHERE Status = '" & FormDRitemUpdate.TxtPend.Text & "' AND DR_No = '" & FormDRitemUpdate.TxtDR.Text & "' ", cn, adOpenKeyset, adLockOptimistic
End With

'DR_No = '" & TxtDR.Text & "' AND Status = '" & TxtPending.Text & "'

Set FormDRitemUpdate.DataGrid1.DataSource = rs
FormDRitemUpdate.DataGrid1.Columns(0).Visible = False
FormDRitemUpdate.DataGrid1.Columns(1).Width = 700
FormDRitemUpdate.DataGrid1.Columns(2).Visible = False
FormDRitemUpdate.DataGrid1.Columns(3).Visible = False
FormDRitemUpdate.DataGrid1.Columns(4).Visible = False
FormDRitemUpdate.DataGrid1.Columns(5).Width = 2500
FormDRitemUpdate.DataGrid1.Columns(6).Width = 600
FormDRitemUpdate.DataGrid1.Columns(7).Width = 500
FormDRitemUpdate.DataGrid1.Columns(8).Width = 2000
FormDRitemUpdate.DataGrid1.Columns(9).Visible = False
FormDRitemUpdate.DataGrid1.Columns(10).Width = 1200
FormDRitemUpdate.DataGrid1.Columns(11).Width = 1200
FormDRitemUpdate.DataGrid1.Columns(12).Visible = False
'DR_ID , DR_No, Requester_Store, Cost_Center, EmpNo, Particulars_Description, Quantity, Unit, Serial_Number, AssetNo, Remarks, Status

End Sub


Public Sub SRCHDRNO()

On Error Resume Next

If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

With rs
.Open "SELECT DR_ID, DR_No, Requester_Store, Cost_Center, EmpNo, Particulars_Description as 'Description', Quantity as 'QTY', Unit, Serial_Number as 'SerialNum', AssetNo, Remarks, Status, ItemCode FROM item_request_tbl WHERE Status = '" & FormDRitemUpdate.TxtPend.Text & "' AND DR_No = '" & FormDRitemUpdate.TxtDR.Text & "' ", cn, adOpenKeyset, adLockOptimistic

'AND Status LIKE '" & status & "'

Set FormDRitemUpdate.DataGrid1.DataSource = rs

Set FormDRitemUpdate.TxtId.DataSource = rs
Set FormDRitemUpdate.Txtdes.DataSource = rs
Set FormDRitemUpdate.Txtqty.DataSource = rs
Set FormDRitemUpdate.Txtunit.DataSource = rs
Set FormDRitemUpdate.Txtser.DataSource = rs
Set FormDRitemUpdate.Txtmarks.DataSource = rs
Set FormDRitemUpdate.Txtstatus.DataSource = rs
Set FormDRitemUpdate.Txtitemcode.DataSource = rs
Set FormDRitemUpdate.DelTxt.DataSource = rs
Set FormDRitemUpdate.CostTxt.DataSource = rs
Set FormDRitemUpdate.TxtEmpNo.DataSource = rs

FormDRitemUpdate.DelTxt.DataField = "Requester_Store"
FormDRitemUpdate.CostTxt.DataField = "Cost_Center"
FormDRitemUpdate.TxtEmpNo.DataField = "EmpNo"

FormDRitemUpdate.Txtitemcode.DataField = "ItemCode"
FormDRitemUpdate.TxtId.DataField = "DR_ID"
FormDRitemUpdate.Txtdes.DataField = "Description"
FormDRitemUpdate.Txtqty.DataField = "QTY"
FormDRitemUpdate.Txtunit.DataField = "Unit"
FormDRitemUpdate.Txtser.DataField = "SerialNum"
FormDRitemUpdate.Txtmarks.DataField = "Remarks"
FormDRitemUpdate.Txtstatus.DataField = "Status"

FormDRitemUpdate.DataGrid1.Columns(0).Visible = False
FormDRitemUpdate.DataGrid1.Columns(1).Width = 700
FormDRitemUpdate.DataGrid1.Columns(2).Visible = False
FormDRitemUpdate.DataGrid1.Columns(3).Visible = False
FormDRitemUpdate.DataGrid1.Columns(4).Visible = False
FormDRitemUpdate.DataGrid1.Columns(5).Width = 2500
FormDRitemUpdate.DataGrid1.Columns(6).Width = 600
FormDRitemUpdate.DataGrid1.Columns(7).Width = 500
FormDRitemUpdate.DataGrid1.Columns(8).Width = 2000
FormDRitemUpdate.DataGrid1.Columns(9).Visible = False
FormDRitemUpdate.DataGrid1.Columns(10).Width = 1200
FormDRitemUpdate.DataGrid1.Columns(11).Width = 1200
FormDRitemUpdate.DataGrid1.Columns(12).Visible = False

End With

End Sub


Public Sub UPDATE_INVSTOCK()

If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

If Not FormDRitemUpdate.Txtitemcode.Text = "" Then

FormDRitemUpdate.Txtinvremain.Text = Val(FormDRitemUpdate.Txtinvremain.Text) - Val(FormUpdatePendDR.Txtqty.Text)
FormDRitemUpdate.Txtqtyout.Text = Val(FormDRitemUpdate.Txtinvtotal.Text) - Val(FormDRitemUpdate.Txtinvremain.Text)
FormDRitemUpdate.Txtreser.Text = Val(FormDRitemUpdate.Txtreser.Text) - Val(FormUpdatePendDR.Txtqty.Text)
FormDRitemUpdate.Txtavail.Text = Val(FormDRitemUpdate.Txtinvremain.Text) - Val(FormDRitemUpdate.Txtreser.Text)
FormUpdatePendDR.Txtstatus.Text = "Received"
With rs
.Open "SELECT * FROM InventoryStocktbl ", cn, adOpenKeyset, adLockOptimistic
End With

cn.Execute "UPDATE InventoryStocktbl SET RemainingStock = '" & FormDRitemUpdate.Txtinvremain.Text & _
"',TotalStock = '" & FormDRitemUpdate.Txtinvtotal.Text & "',Reserved_Bal = '" & FormDRitemUpdate.Txtreser.Text & _
"',Avail_Bal = '" & FormDRitemUpdate.Txtavail.Text & "',Qty_Out = '" & FormDRitemUpdate.Txtqtyout.Text & _
"' WHERE Inv_ID = '" & FormDRitemUpdate.Txtinvid.Text & "' "

rs.UpdateBatch adAffectCurrent

Call UPDATE_DRSTATUS

Else
FormUpdatePendDR.Txtstatus.Text = "Received"
Call UPDATE_DRSTATUS
End If

End Sub

Public Sub UPDATE_DRSTATUS()

Dim STATUS As String
Dim DRid As String

DRid = FormUpdatePendDR.TxtId.Text
STATUS = FormUpdatePendDR.Txtstatus.Text

If cn.State = 1 Then
cn.Close
End If
Call condatabase

Set rs = New ADODB.Recordset

With rs
.Open "SELECT * FROM item_request_tbl", cn, adOpenKeyset, adLockOptimistic
End With

cn.Execute "UPDATE item_request_tbl SET Status = '" & STATUS & _
"' WHERE DR_ID = '" & DRid & "' "

rs.UpdateBatch adAffectCurrent

MsgBox "Stock has been updated", vbInformation

Call SRCHDRNO
Unload FormUpdatePendDR


End Sub



























