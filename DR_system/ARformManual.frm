VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{88F7F54F-F24B-4B64-B0E0-2454E1E6DA40}#1.0#0"; "ciaXPButton30.ocx"
Begin VB.Form FormOtherRemarks 
   BackColor       =   &H80000002&
   BorderStyle     =   4  'Fixed ToolWindow
   ClientHeight    =   3270
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   3855
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3270
   ScaleWidth      =   3855
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H80000002&
      Caption         =   "Other_Remarks"
      BeginProperty Font 
         Name            =   "Garamond"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3015
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3615
      Begin ciaXPButton30.XPButton30 BtnPrint 
         Height          =   375
         Left            =   240
         TabIndex        =   5
         Top             =   2520
         Width           =   975
         _ExtentX        =   1720
         _ExtentY        =   661
         AutoSelectTheme =   -1  'True
         Caption         =   "005000720069006E0074"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         UseImageShadow  =   0   'False
         LicValid        =   -1  'True
      End
      Begin RichTextLib.RichTextBox Richtxtcomment 
         Height          =   1215
         Left            =   960
         TabIndex        =   3
         Top             =   1080
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   2143
         _Version        =   393217
         Enabled         =   -1  'True
         TextRTF         =   $"ARformManual.frx":0000
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Garamond"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.TextBox TxtZendesk 
         BeginProperty Font 
            Name            =   "Garamond"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1320
         TabIndex        =   1
         Top             =   360
         Width           =   2175
      End
      Begin ciaXPButton30.XPButton30 btnExit 
         Height          =   375
         Left            =   2520
         TabIndex        =   6
         Top             =   2520
         Width           =   975
         _ExtentX        =   1720
         _ExtentY        =   661
         AutoSelectTheme =   -1  'True
         Caption         =   "0045007800690074"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         UseImageShadow  =   0   'False
         LicValid        =   -1  'True
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Note, Comment"
         BeginProperty Font 
            Name            =   "Garamond"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   960
         TabIndex        =   4
         Top             =   840
         Width           =   1455
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Zendesk Ticket"
         BeginProperty Font 
            Name            =   "Garamond"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFC0&
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   360
         Width           =   1455
      End
   End
End
Attribute VB_Name = "FormOtherRemarks"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnExit_Click()
Unload Me
End Sub

Private Sub BtnPrint_Click()
Call printme
End Sub
