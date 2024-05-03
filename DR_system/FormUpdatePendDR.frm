VERSION 5.00
Object = "{88F7F54F-F24B-4B64-B0E0-2454E1E6DA40}#1.0#0"; "ciaXPButton30.ocx"
Begin VB.Form FormUpdatePendDR 
   BorderStyle     =   0  'None
   Caption         =   "DR_UPDATE"
   ClientHeight    =   3990
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5115
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3990
   ScaleWidth      =   5115
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      Caption         =   "Update Item"
      ForeColor       =   &H00400040&
      Height          =   3735
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4815
      Begin VB.TextBox Txtdes 
         BackColor       =   &H00C0E0FF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1080
         Locked          =   -1  'True
         TabIndex        =   13
         Top             =   480
         Width           =   2295
      End
      Begin VB.TextBox TxtId 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   3720
         TabIndex        =   12
         Top             =   960
         Width           =   975
      End
      Begin VB.TextBox Txtqty 
         BackColor       =   &H00C0E0FF&
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   285
         Left            =   1080
         Locked          =   -1  'True
         TabIndex        =   11
         Top             =   840
         Width           =   975
      End
      Begin VB.TextBox Txtser 
         BackColor       =   &H00C0E0FF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1080
         Locked          =   -1  'True
         TabIndex        =   10
         Top             =   1560
         Width           =   2055
      End
      Begin VB.TextBox Txtunit 
         BackColor       =   &H00C0E0FF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1080
         Locked          =   -1  'True
         TabIndex        =   9
         Top             =   1200
         Width           =   975
      End
      Begin VB.TextBox Txtmarks 
         BackColor       =   &H00C0E0FF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1080
         Locked          =   -1  'True
         TabIndex        =   8
         Top             =   1920
         Width           =   1575
      End
      Begin VB.TextBox Txtstatus 
         BackColor       =   &H00C0E0FF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1080
         TabIndex        =   7
         Top             =   2640
         Width           =   2055
      End
      Begin VB.TextBox Txtitemcode 
         BackColor       =   &H00C0E0FF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   1080
         Locked          =   -1  'True
         TabIndex        =   6
         Top             =   2280
         Width           =   1575
      End
      Begin ciaXPButton30.XPButton30 XPButton301 
         Height          =   495
         Left            =   240
         TabIndex        =   16
         Top             =   3120
         Width           =   855
         _ExtentX        =   1508
         _ExtentY        =   873
         AutoSelectTheme =   -1  'True
         Caption         =   "0053004100560045"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         UseImageShadow  =   0   'False
         LicValid        =   -1  'True
      End
      Begin ciaXPButton30.XPButton30 XPButton302 
         Height          =   495
         Left            =   2520
         TabIndex        =   17
         Top             =   3120
         Width           =   855
         _ExtentX        =   1508
         _ExtentY        =   873
         AutoSelectTheme =   -1  'True
         Caption         =   "0045005800490054"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         UseImageShadow  =   0   'False
         LicValid        =   -1  'True
      End
      Begin VB.Line Line2 
         X1              =   240
         X2              =   3240
         Y1              =   360
         Y2              =   360
      End
      Begin VB.Line Line1 
         X1              =   240
         X2              =   3240
         Y1              =   3000
         Y2              =   3000
      End
      Begin VB.Label Label7 
         Caption         =   "ItemCode:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404000&
         Height          =   255
         Left            =   120
         TabIndex        =   15
         Top             =   2280
         Width           =   855
      End
      Begin VB.Label Label6 
         Caption         =   "Status:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404000&
         Height          =   255
         Left            =   360
         TabIndex        =   14
         Top             =   2640
         Width           =   735
      End
      Begin VB.Label Label5 
         Caption         =   "Remarks:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404000&
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   1920
         Width           =   735
      End
      Begin VB.Label Label4 
         Caption         =   "Unit:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404000&
         Height          =   255
         Left            =   480
         TabIndex        =   4
         Top             =   1200
         Width           =   375
      End
      Begin VB.Label Label3 
         Caption         =   "SerialNo:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404000&
         Height          =   255
         Left            =   120
         TabIndex        =   3
         Top             =   1560
         Width           =   735
      End
      Begin VB.Label Label2 
         Caption         =   "ItemDes:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404000&
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   480
         Width           =   735
      End
      Begin VB.Label Label1 
         Caption         =   "TxtQty:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404000&
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   840
         Width           =   735
      End
   End
End
Attribute VB_Name = "FormUpdatePendDR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub XPButton301_Click()

Dim msg As String

msg = MsgBox("The Stock will be updated, Are you sure?", vbCritical + vbYesNo)

If msg = vbNo Then

Else

Call UPDATE_INVSTOCK

End If


End Sub

Private Sub XPButton302_Click()
Call SRCHDRNO
Unload Me
End Sub
