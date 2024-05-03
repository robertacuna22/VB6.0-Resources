VERSION 5.00
Begin VB.Form SerialInvFrm 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Barcode"
   ClientHeight    =   555
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   4725
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   555
   ScaleWidth      =   4725
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Txtvarser 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   840
      TabIndex        =   1
      Top             =   1560
      Width           =   3015
   End
   Begin VB.TextBox TxtSerialFrm 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4455
   End
End
Attribute VB_Name = "SerialInvFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub TxtSerialFrm_Change()
Call UniqueSerial
End Sub

Private Sub TxtSerialFrm_KeyPress(KeyAscii As Integer)

If KeyAscii = 13 Then

If TxtSerialFrm.Text = "" Then

Else

If Txtvarser.Text = TxtSerialFrm.Text Then
MsgBox "The Serial Number is already Exist", vbCritical, "Unique Value"
Else

AddItemFormInv.TxtQty.Text = Val(AddItemFormInv.TxtQty.Text) - 1
Call InsertData01

End If
If Val(AddItemFormInv.TxtQty.Text) = 0 Then
Call GetItem
Unload Me
Unload AddItemFormInv

End If
End If
End If
End Sub
