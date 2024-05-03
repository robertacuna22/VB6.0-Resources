VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{61C20119-5677-48E5-9D43-CBF5F7B39FA0}#1.1#0"; "ciaXPCombo30.ocx"
Object = "{88F7F54F-F24B-4B64-B0E0-2454E1E6DA40}#1.0#0"; "ciaXPButton30.ocx"
Begin VB.Form TransFrm 
   BackColor       =   &H80000003&
   BorderStyle     =   0  'None
   Caption         =   "Delivery Receipt System"
   ClientHeight    =   7545
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12660
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   7545
   ScaleWidth      =   12660
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox TimeTxt 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   11400
      Locked          =   -1  'True
      TabIndex        =   41
      Top             =   480
      Width           =   975
   End
   Begin VB.TextBox DateTxt 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   11400
      Locked          =   -1  'True
      TabIndex        =   40
      Top             =   840
      Width           =   975
   End
   Begin VB.TextBox TxtvarInc 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Left            =   1680
      TabIndex        =   39
      Text            =   "34343"
      Top             =   7800
      Width           =   975
   End
   Begin VB.TextBox DRtxt1 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   38
      Top             =   1080
      Width           =   1455
   End
   Begin VB.TextBox TxtDateDelivered 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   1560
      TabIndex        =   37
      Top             =   8280
      Width           =   2295
   End
   Begin VB.TextBox Txtvar2 
      Height          =   285
      Left            =   3240
      TabIndex        =   36
      Text            =   "Text2"
      Top             =   240
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.TextBox SearchTxt 
      Height          =   285
      Left            =   9000
      Locked          =   -1  'True
      TabIndex        =   34
      Top             =   1560
      Width           =   2175
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Height          =   4095
      Left            =   11280
      TabIndex        =   2
      Top             =   8280
      Width           =   3015
      _ExtentX        =   5318
      _ExtentY        =   7223
      _Version        =   393216
      AllowUpdate     =   0   'False
      Appearance      =   0
      BackColor       =   -2147483644
      Enabled         =   -1  'True
      ForeColor       =   4210752
      HeadLines       =   1
      RowHeight       =   16
      RowDividerStyle =   1
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
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1560
      TabIndex        =   32
      Text            =   "Are you sure you want to exit?"
      Top             =   8520
      Visible         =   0   'False
      Width           =   2175
   End
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   10200
      Top             =   240
   End
   Begin VB.TextBox vardatetxt 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   480
      TabIndex        =   30
      Top             =   8880
      Width           =   975
   End
   Begin VB.TextBox vartxttime 
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
      Left            =   480
      TabIndex        =   29
      Top             =   8520
      Width           =   975
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   9720
      Top             =   240
   End
   Begin VB.TextBox timetxtvar 
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
      Left            =   480
      TabIndex        =   27
      Top             =   7800
      Width           =   975
   End
   Begin VB.TextBox datetxtvar 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   480
      TabIndex        =   26
      Top             =   8160
      Width           =   975
   End
   Begin VB.TextBox DRtxt2 
      Height          =   375
      Left            =   4440
      TabIndex        =   24
      Top             =   120
      Visible         =   0   'False
      Width           =   1455
   End
   Begin ciaXPButton30.XPButton30 Addcmd 
      Height          =   510
      Left            =   360
      TabIndex        =   19
      Top             =   6720
      Width           =   855
      _ExtentX        =   1508
      _ExtentY        =   900
      AutoSelectTheme =   -1  'True
      Caption         =   "004100640064004900740065006D"
      Enabled         =   0   'False
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
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   5880
      Top             =   240
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H80000003&
      Caption         =   "Customer-Info"
      Height          =   4695
      Left            =   360
      TabIndex        =   3
      Top             =   1920
      Width           =   4455
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
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   31
         Top             =   2400
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
         Left            =   120
         TabIndex        =   16
         Top             =   3600
         Width           =   2655
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
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   1  'Horizontal
         TabIndex        =   15
         Top             =   3000
         Width           =   2655
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
         TabIndex        =   12
         Top             =   1800
         Width           =   2055
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
         TabIndex        =   11
         Top             =   1200
         Width           =   2055
      End
      Begin VB.TextBox DelTxt 
         BackColor       =   &H00C0E0FF&
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
         TabIndex        =   10
         Top             =   600
         Width           =   4095
      End
      Begin ciaXPComboBox30.XPComboBox30 AuthoTxt 
         Height          =   300
         Left            =   120
         TabIndex        =   14
         Top             =   4200
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
         Left            =   120
         TabIndex        =   13
         Top             =   3960
         Width           =   1455
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
         Left            =   120
         TabIndex        =   9
         Top             =   3360
         Width           =   1095
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
         Left            =   120
         TabIndex        =   8
         Top             =   2760
         Width           =   975
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
         Left            =   120
         TabIndex        =   7
         Top             =   2160
         Width           =   975
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
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   1560
         Width           =   735
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "CostCode: "
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
         Left            =   120
         TabIndex        =   5
         Top             =   960
         Width           =   735
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
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   4
         Top             =   360
         Width           =   1575
      End
   End
   Begin ciaXPButton30.XPButton30 Addnewcmd 
      Height          =   510
      Left            =   2280
      TabIndex        =   20
      Top             =   6720
      Width           =   855
      _ExtentX        =   1508
      _ExtentY        =   900
      AutoSelectTheme =   -1  'True
      Caption         =   "0041006400640020004E00650077"
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
   Begin ciaXPButton30.XPButton30 EditCmd 
      Height          =   510
      Left            =   1320
      TabIndex        =   21
      Top             =   6720
      Width           =   855
      _ExtentX        =   1508
      _ExtentY        =   900
      AutoSelectTheme =   -1  'True
      Caption         =   "00450064006900740049006E0066006F"
      Enabled         =   0   'False
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
   Begin ciaXPButton30.XPButton30 findcmd 
      Height          =   510
      Left            =   3240
      TabIndex        =   22
      Top             =   6720
      Width           =   855
      _ExtentX        =   1508
      _ExtentY        =   900
      AutoSelectTheme =   -1  'True
      Caption         =   "00460069006E0064"
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
   Begin ciaXPButton30.XPButton30 Refreshcmd 
      Height          =   510
      Left            =   4200
      TabIndex        =   23
      Top             =   6720
      Width           =   855
      _ExtentX        =   1508
      _ExtentY        =   900
      AutoSelectTheme =   -1  'True
      Caption         =   "0052006500660072006500730068"
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
   Begin ciaXPButton30.XPButton30 ItemCmd 
      Height          =   510
      Left            =   360
      TabIndex        =   25
      Top             =   6720
      Visible         =   0   'False
      Width           =   855
      _ExtentX        =   1508
      _ExtentY        =   900
      AutoSelectTheme =   -1  'True
      Caption         =   "0045006400690074004900740065006D"
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
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   4560
      Top             =   8400
      Visible         =   0   'False
      Width           =   2175
      _ExtentX        =   3836
      _ExtentY        =   582
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
   Begin ciaXPButton30.XPButton30 Cancelcmd 
      Height          =   510
      Left            =   11640
      TabIndex        =   28
      Top             =   6720
      Width           =   855
      _ExtentX        =   1508
      _ExtentY        =   900
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
   Begin MSDataGridLib.DataGrid DataGrid2 
      Height          =   4575
      Left            =   4920
      TabIndex        =   33
      Top             =   2040
      Width           =   7575
      _ExtentX        =   13361
      _ExtentY        =   8070
      _Version        =   393216
      AllowUpdate     =   0   'False
      Appearance      =   0
      BackColor       =   -2147483644
      Enabled         =   -1  'True
      ForeColor       =   4210752
      HeadLines       =   1
      RowHeight       =   16
      RowDividerStyle =   1
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
   Begin ciaXPButton30.XPButton30 btnEmp 
      Height          =   510
      Left            =   5160
      TabIndex        =   44
      Top             =   6720
      Width           =   855
      _ExtentX        =   1508
      _ExtentY        =   900
      AutoSelectTheme =   -1  'True
      Caption         =   "002A0045006D0070"
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
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "Time: "
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   10800
      TabIndex        =   43
      Top             =   480
      Width           =   495
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "Date: "
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   10800
      TabIndex        =   42
      Top             =   840
      Width           =   495
   End
   Begin VB.Label Label14 
      Alignment       =   2  'Center
      BackColor       =   &H00FFC0C0&
      Caption         =   "Search"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   11280
      TabIndex        =   35
      Top             =   1560
      Width           =   975
   End
   Begin VB.Line Line5 
      BorderColor     =   &H00FF8080&
      X1              =   120
      X2              =   12480
      Y1              =   7440
      Y2              =   7440
   End
   Begin VB.Label Label13 
      BackStyle       =   0  'Transparent
      Caption         =   "Reference Copy"
      BeginProperty Font 
         Name            =   "Modern No. 20"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   600
      TabIndex        =   18
      Top             =   1440
      Width           =   1455
   End
   Begin VB.Label Label12 
      BackStyle       =   0  'Transparent
      Caption         =   "No."
      BeginProperty Font 
         Name            =   "Courier"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   480
      TabIndex        =   17
      Top             =   1080
      Width           =   495
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Solutions Experts and Enablers Incorporated"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   480
      TabIndex        =   1
      Top             =   720
      Width           =   5415
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "SEE,inc"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   480
      TabIndex        =   0
      Top             =   240
      Width           =   2535
   End
End
Attribute VB_Name = "TransFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private xtransaction As New ADODB.Recordset


Private Sub Addcmd_Click()

ItemFrm.DRtxtClone.Text = TransFrm.DRtxt1.Text
ItemFrm.Show vbModal
Addcmd.Enabled = False
DelTxt.Enabled = False

End Sub

Private Sub AddnewCmd_Click()
TxtvarInc.Text = 1
'ItemFrm.DRtxtClone.Text = ItemFrm.DRtxtClone.Text + 1
Me.DRtxt1.Text = Val(DRtxt1.Text) + 1

SearchTxt.Locked = False

DelTxt.Enabled = True
CostTxt.Enabled = True
TxtEmpNo.Enabled = True
EngTxt.Enabled = True
ReceivedTxt.Enabled = True

DelTxt.Text = ""
CostTxt.Text = ""
TxtEmpNo.Text = ""
EngTxt.Text = ""
ReceivedTxt.Text = ""
'DelTxt.SetFocus
SearchTxt.SetFocus
AddnewCmd.Enabled = False

DataGrid1.Visible = False

End Sub

Private Sub CmdEmp_Click()

End Sub

Private Sub btnEmp_Click()
If Not TxtvarInc.Text = 1 Then
Else
ARForm.Show vbModal
End If
End Sub

Private Sub TxtEmpNo_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
EngTxt.SetFocus

End If

End Sub

Private Sub Cancelcmd_Click()
Dim voice As SpVoice

Set voice = New SpVoice
voice.Volume = 100
voice.Speak Text1, SVSFlagsAsync
If MsgBox("Are you sure you want to exit?", vbQuestion + vbYesNo) = vbYes Then
Unload Me
End If
End Sub

Private Sub CostTxt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
TxtEmpNo.SetFocus
End If
End Sub

Private Sub DelTxt_KeyPress(KeyAscii As Integer)
If Not DelTxt.Text = "" Then

Addcmd.Enabled = True

ElseIf DelTxt = "" Then

Addcmd.Enabled = False

End If

If KeyAscii = 13 Then

CostTxt.SetFocus

End If


End Sub

Private Sub EditCmd_Click()

If cn.State = 1 Then
cn.Close
End If
Call condatabase
With xtransaction
.Open "SELECT DR_No,Requester_Store,Cost_Center,Address,Shipped_By,Received_By FROM ITEM_REQUEST_tbl WHERE DR_No LIKE '" & DRtxt2.Text & "' ", cn, adOpenKeyset, adLockOptimistic
End With
Set DataGrid1.DataSource = xtransaction

ItemCmd.Visible = True
Addcmd.Visible = False
EditCmd.Enabled = False
EditinfoFrm.Show vbModal
End Sub

Private Sub EngTxt_Change()
If Not EngTxt.Text = "" Then

Timer2.Enabled = True

End If

If EngTxt.Text = "" Then

Timer2.Enabled = False
timetxtvar.Text = ""
datetxtvar.Text = ""
End If

End Sub

Private Sub EngTxt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
ReceivedTxt.SetFocus
End If
End Sub

Private Sub findcmd_Click()
Txtvar2.Text = 1
FindFrm.Show vbModal
AddnewCmd.Enabled = False
EditCmd.Enabled = True
End Sub



Private Sub Form_Load()
Call GetDRNumber
Call viewstore
'Call Transaction
End Sub

Private Sub ItemCmd_Click()
Editfrm.Show vbModal
AddnewCmd.Enabled = True
DelTxt.Text = ""
CostTxt.Text = ""
TxtEmpNo.Text = ""
ReceivedTxt.Text = ""
EngTxt.Text = ""
ItemCmd.Enabled = True
End Sub

Private Sub ReceivedTxt_Change()
If Not ReceivedTxt.Text = "" Then

Timer3.Enabled = True

End If

If ReceivedTxt.Text = "" Then
Timer3.Enabled = False
vartxttime.Text = ""
vardatetxt.Text = ""
End If
End Sub

Private Sub ReceivedTxt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
DelTxt.SetFocus
End If
End Sub

Private Sub Refreshcmd_Click()
On Error Resume Next
If cn.State = 1 Then
cn.Close
End If
Call condatabase

With xtransaction
.Open "SELECT DR_No,Requester_Store,Cost_Center,Shipped_By,Received_By FROM ITEM_REQUEST_tbl ORDER BY DR_No desc", cn, adOpenKeyset, adLockOptimistic

Set TransFrm.DataGrid1.DataSource = xtransaction
TransFrm.DataGrid1.Refresh
DelTxt.SetFocus
End With
End Sub



Private Sub SearchTxt_Change()
TxtEmpNo.Text = ""
On Error Resume Next

If cn.State = 1 Then
cn.Close
End If
Call condatabase

With info1

.Open " SELECT * FROM Store_Info WHERE Store_Name LIKE '" & SearchTxt.Text & "%' ", cn, adOpenKeyset, adLockOptimistic

End With
Set DelTxt.DataSource = info1
Set CostTxt.DataSource = info1

DelTxt.DataField = "Store_Name"
CostTxt.DataField = "Cost_Center"

Set TransFrm.DataGrid2.DataSource = info1

Addcmd.Enabled = True
End Sub

Private Sub Timer1_Timer()
TimeTxt.Text = Time
DateTxt.Text = Date
End Sub

Private Sub XPButton303_Click()

End Sub

Private Sub Timer2_Timer()
timetxtvar.Text = Time
datetxtvar.Text = Date
End Sub

Private Sub Timer3_Timer()
vartxttime.Text = Time
vardatetxt.Text = Date
End Sub

Public Sub viewuser()

If cn.State = 1 Then
cn.Close
End If

Call condatabase
Set rs = New ADODB.Recordset

With rs
.Open "SELECT * FROM TblUserAccount ", cn, adOpenKeyset, adLockOptimistic
End With

Do While Not rs.EOF

AuthoTxt.AddItem "" & rs!FULL_NAME

rs.MoveNext
Loop

rs.Close

End Sub















