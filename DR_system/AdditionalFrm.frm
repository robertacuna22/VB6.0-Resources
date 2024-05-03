VERSION 5.00
Begin VB.Form AdditionalFrm 
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "Additional of Item - Peripherals"
   ClientHeight    =   1095
   ClientLeft      =   120
   ClientTop       =   390
   ClientWidth     =   4695
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1095
   ScaleWidth      =   4695
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton CancemCmd 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   1320
      TabIndex        =   2
      Top             =   600
      Width           =   855
   End
   Begin VB.CommandButton Addcmd1 
      Caption         =   "Add"
      Height          =   375
      Left            =   240
      TabIndex        =   1
      Top             =   600
      Width           =   855
   End
   Begin VB.TextBox withTxt 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   6
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   240
      TabIndex        =   0
      Top             =   150
      Width           =   4335
   End
End
Attribute VB_Name = "AdditionalFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Addcmd1_Click()
Call Peripherals
End Sub

Private Sub CancemCmd_Click()
Unload Me
End Sub

Private Sub Form_Activate()
withTxt.SetFocus
End Sub

Private Sub Form_Load()
Call Item_Peripherals
End Sub

Private Sub withTxt_KeyPress(KeyAscii As Integer)
Dim itemRS2 As New ADODB.Recordset

If KeyAscii = 13 Then
Call Peripherals
End If
End Sub
