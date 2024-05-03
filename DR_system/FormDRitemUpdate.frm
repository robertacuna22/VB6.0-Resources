VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{61C20119-5677-48E5-9D43-CBF5F7B39FA0}#1.1#0"; "ciaXPCombo30.ocx"
Object = "{88F7F54F-F24B-4B64-B0E0-2454E1E6DA40}#1.0#0"; "ciaXPButton30.ocx"
Begin VB.Form FormDRitemUpdate 
   BackColor       =   &H80000004&
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "DR_UPDATE"
   ClientHeight    =   6930
   ClientLeft      =   120
   ClientTop       =   390
   ClientWidth     =   14610
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
   ScaleHeight     =   6930
   ScaleWidth      =   14610
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Txtitemcode 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   12960
      TabIndex        =   40
      Top             =   4080
      Width           =   2055
   End
   Begin VB.Frame Frame4 
      Caption         =   "Variable"
      Height          =   975
      Left            =   6360
      TabIndex        =   31
      Top             =   120
      Width           =   5655
      Begin VB.TextBox Txtavail 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   3000
         TabIndex        =   39
         Top             =   480
         Width           =   1335
      End
      Begin VB.TextBox Txtreser 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   3000
         TabIndex        =   38
         Top             =   120
         Width           =   1335
      End
      Begin VB.TextBox Txtinvremain 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1560
         TabIndex        =   37
         Top             =   360
         Width           =   1335
      End
      Begin VB.TextBox Txtqtyout 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1560
         TabIndex        =   36
         Top             =   600
         Width           =   1335
      End
      Begin VB.TextBox Txtinvtotal 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1560
         TabIndex        =   35
         Top             =   120
         Width           =   1335
      End
      Begin VB.TextBox Txtindes 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   34
         Top             =   360
         Width           =   1335
      End
      Begin VB.TextBox Txtinvitemcode 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   33
         Top             =   600
         Width           =   1335
      End
      Begin VB.TextBox Txtinvid 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   32
         Top             =   120
         Width           =   1335
      End
   End
   Begin VB.TextBox Txtstatus 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   12960
      TabIndex        =   30
      Top             =   3720
      Width           =   2055
   End
   Begin VB.TextBox Txtmarks 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   12960
      TabIndex        =   29
      Top             =   3360
      Width           =   2055
   End
   Begin VB.TextBox Txtunit 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   12960
      TabIndex        =   28
      Top             =   2640
      Width           =   2055
   End
   Begin VB.TextBox Txtser 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   12960
      TabIndex        =   27
      Top             =   3000
      Width           =   2055
   End
   Begin VB.TextBox Txtqty 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   12960
      TabIndex        =   26
      Top             =   2280
      Width           =   2055
   End
   Begin VB.TextBox TxtId 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   12960
      TabIndex        =   25
      Top             =   1560
      Width           =   2055
   End
   Begin VB.TextBox Txtdes 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   12960
      TabIndex        =   24
      Top             =   1920
      Width           =   2055
   End
   Begin VB.TextBox TxtPend 
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
      TabIndex        =   23
      Text            =   "Pending "
      Top             =   120
      Width           =   2055
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H80000004&
      Caption         =   "Customer-Info"
      Height          =   2295
      Left            =   120
      TabIndex        =   8
      Top             =   1440
      Width           =   2895
      Begin VB.TextBox DelTxt 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
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
         TabIndex        =   14
         Top             =   600
         Width           =   2535
      End
      Begin VB.TextBox CostTxt 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   13
         Top             =   1200
         Width           =   2055
      End
      Begin VB.TextBox TxtEmpNo 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   12
         Top             =   1800
         Width           =   2055
      End
      Begin VB.TextBox EngTxt 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   240
         MultiLine       =   -1  'True
         ScrollBars      =   1  'Horizontal
         TabIndex        =   11
         Top             =   3720
         Width           =   2655
      End
      Begin VB.TextBox ReceivedTxt 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   240
         TabIndex        =   10
         Top             =   4320
         Width           =   2655
      End
      Begin VB.TextBox Preparetxt 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   240
         Locked          =   -1  'True
         TabIndex        =   9
         Top             =   3120
         Width           =   2655
      End
      Begin ciaXPComboBox30.XPComboBox30 AuthoTxt 
         Height          =   300
         Left            =   240
         TabIndex        =   15
         Top             =   4920
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   529
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   0
         BackColor       =   16777215
         FullRowSelect   =   -1  'True
         LicValid        =   -1  'True
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Deliver_To/EmpName: "
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   22
         Top             =   360
         Width           =   1575
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Cost Center: "
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   120
         TabIndex        =   21
         Top             =   960
         Width           =   1215
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "Emp_No:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   120
         TabIndex        =   20
         Top             =   1560
         Width           =   735
      End
      Begin VB.Label Label8 
         BackStyle       =   0  'Transparent
         Caption         =   "Prepared By:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   19
         Top             =   2880
         Width           =   975
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "Shipped By:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   18
         Top             =   3480
         Width           =   975
      End
      Begin VB.Label Label11 
         BackStyle       =   0  'Transparent
         Caption         =   "Received By:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   17
         Top             =   4080
         Width           =   1095
      End
      Begin VB.Label Label10 
         BackStyle       =   0  'Transparent
         Caption         =   "Authorized By: "
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   16
         Top             =   4680
         Width           =   1455
      End
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   3720
      Top             =   480
      Width           =   2415
      _ExtentX        =   4260
      _ExtentY        =   661
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
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin ciaXPButton30.XPButton30 SRCHCMD 
      Height          =   495
      Left            =   120
      TabIndex        =   3
      Top             =   5640
      Width           =   855
      _ExtentX        =   1508
      _ExtentY        =   873
      AutoSelectTheme =   -1  'True
      Caption         =   "0053005200430048"
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
   Begin VB.Frame Frame2 
      Caption         =   "Select_Items"
      Height          =   4695
      Left            =   3240
      TabIndex        =   2
      Top             =   1440
      Width           =   9495
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   4095
         Left            =   120
         TabIndex        =   4
         Top             =   360
         Width           =   9255
         _ExtentX        =   16325
         _ExtentY        =   7223
         _Version        =   393216
         BackColor       =   14737632
         ForeColor       =   -2147483629
         HeadLines       =   1
         RowHeight       =   14
         RowDividerStyle =   6
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   6.75
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
   Begin VB.Frame Frame1 
      BackColor       =   &H80000004&
      Caption         =   "DR_Number"
      Height          =   735
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   2415
      Begin VB.TextBox TxtDR 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   2175
      End
   End
   Begin ciaXPButton30.XPButton30 XPButton301 
      Height          =   495
      Left            =   1080
      TabIndex        =   5
      Top             =   5640
      Width           =   855
      _ExtentX        =   1508
      _ExtentY        =   873
      AutoSelectTheme =   -1  'True
      Caption         =   "005500500044004100540045"
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
      Left            =   2040
      TabIndex        =   6
      Top             =   5640
      Width           =   855
      _ExtentX        =   1508
      _ExtentY        =   873
      AutoSelectTheme =   -1  'True
      Caption         =   "00430041004E00430045004C"
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
   Begin ciaXPButton30.XPButton30 XPButton303 
      Height          =   495
      Left            =   11760
      TabIndex        =   7
      Top             =   6240
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
      X1              =   120
      X2              =   12600
      Y1              =   6840
      Y2              =   6840
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   12600
      Y1              =   1200
      Y2              =   1200
   End
End
Attribute VB_Name = "FormDRitemUpdate"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Call LoadDR
End Sub

Private Sub Text1_Change()
End Sub

Private Sub SRCHCMD_Click()
If Not TxtDR.Text = "" Then
Call SRCHDRNO
Else
Call LoadDR
End If
End Sub

Private Sub TxtDR_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then

If Not TxtDR.Text = "" Then
Call SRCHDRNO
Else
Call LoadDR
End If

End If
End Sub

Private Sub XPButton301_Click()

If Not TxtItemCode.Text = "" Then

FormUpdatePendDR.TxtItemCode.Text = TxtItemCode.Text
FormUpdatePendDR.Txtid.Text = Txtid.Text
FormUpdatePendDR.TxtDes.Text = TxtDes.Text
FormUpdatePendDR.TxtQty.Text = TxtQty.Text
FormUpdatePendDR.TxtUnit.Text = TxtUnit.Text
FormUpdatePendDR.Txtser.Text = Txtser.Text
FormUpdatePendDR.Txtmarks.Text = Txtmarks.Text
FormUpdatePendDR.TxtStatus.Text = TxtStatus.Text


Call View_INVSTOCK
FormUpdatePendDR.Show vbModal

Else

FormUpdatePendDR.TxtItemCode.Text = TxtItemCode.Text
FormUpdatePendDR.Txtid.Text = Txtid.Text
FormUpdatePendDR.TxtDes.Text = TxtDes.Text
FormUpdatePendDR.TxtQty.Text = TxtQty.Text
FormUpdatePendDR.TxtUnit.Text = TxtUnit.Text
FormUpdatePendDR.Txtser.Text = Txtser.Text
FormUpdatePendDR.Txtmarks.Text = Txtmarks.Text
FormUpdatePendDR.TxtStatus.Text = TxtStatus.Text

Call View_INVSTOCK

End If

End Sub

Private Sub XPButton303_Click()
Unload Me
End Sub
