VERSION 5.00
Begin VB.Form Main 
   BackColor       =   &H80000003&
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "Delivery Receipt  Monitoring System"
   ClientHeight    =   7515
   ClientLeft      =   60
   ClientTop       =   585
   ClientWidth     =   13980
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7515
   ScaleWidth      =   13980
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   WindowState     =   2  'Maximized
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   3000
      TabIndex        =   0
      Text            =   "3"
      Top             =   600
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   1920
      Top             =   600
   End
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   840
      Top             =   600
   End
   Begin VB.Menu MenuLogin 
      Caption         =   "Login"
   End
   Begin VB.Menu MenuLog 
      Caption         =   "Logout"
   End
   Begin VB.Menu menuaccnt 
      Caption         =   "Accounts"
      Begin VB.Menu usermenu 
         Caption         =   "User_Registration"
         Shortcut        =   ^U
      End
   End
   Begin VB.Menu MenuInv 
      Caption         =   "Inventory"
      Begin VB.Menu MenuAIS 
         Caption         =   "AIS"
         Shortcut        =   ^A
      End
      Begin VB.Menu MenuDash 
         Caption         =   "Inventory_DashBoard"
         Shortcut        =   ^I
      End
   End
   Begin VB.Menu MenuTran 
      Caption         =   "Transaction"
      Begin VB.Menu MenuDel 
         Caption         =   "Delivery_Receipt"
         Shortcut        =   ^D
      End
   End
   Begin VB.Menu Menucus 
      Caption         =   "Customize"
      Begin VB.Menu MenuUpdate 
         Caption         =   "DR_Update"
         Shortcut        =   ^R
      End
   End
End
Attribute VB_Name = "Main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub MenuAIS_Click()
AddInventoryIn.Show vbModal
End Sub

Private Sub MenuDash_Click()
DashBoardFrm.Show vbModal
End Sub

Private Sub MenuDel_Click()

TransFrm.Show vbModal

End Sub

Private Sub menulog_Click()
End
End Sub

Private Sub MenuLogin_Click()
LoginFrm.Show vbModal
End Sub

Private Sub MenuUpdate_Click()
FormDRitemUpdate.Show vbModal
End Sub

Private Sub Timer1_Timer()
'Randomize

'Shape1.Width = Shape1.Width + 200
'menuaccnt.Visible = False

'If Shape1.Width >= 13000 Then

'Timer1.Enabled = False
'Shape1.Visible = False
'Frame1.Visible = False
'LoginFrm.Show vbModal

'End If

End Sub

Private Sub Timer2_Timer()
Text1.Text = Text1.Text - 1
Unload Me
End Sub

Private Sub usermenu_Click()
Registerfrm.Show vbModal
End Sub
