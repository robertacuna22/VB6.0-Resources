VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{88F7F54F-F24B-4B64-B0E0-2454E1E6DA40}#1.0#0"; "ciaXPButton30.ocx"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form ItemFrm 
   BackColor       =   &H8000000A&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Delivery Receipt System"
   ClientHeight    =   11160
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   15270
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   11160
   ScaleWidth      =   15270
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame2 
      Caption         =   "variable Monitoring"
      Height          =   1575
      Left            =   7920
      TabIndex        =   70
      Top             =   9000
      Width           =   3735
      Begin VB.TextBox Txtavail 
         Height          =   285
         Left            =   360
         TabIndex        =   72
         Top             =   600
         Width           =   1575
      End
      Begin VB.TextBox Txtreserved 
         Height          =   285
         Left            =   360
         TabIndex        =   71
         Top             =   240
         Width           =   1575
      End
   End
   Begin VB.TextBox TxtvarserialNo 
      Height          =   285
      Left            =   3600
      TabIndex        =   68
      Text            =   "Text3"
      Top             =   10560
      Width           =   1335
   End
   Begin VB.TextBox Txtinvitemcode 
      Height          =   1245
      Left            =   5280
      TabIndex        =   64
      Top             =   9240
      Width           =   1455
   End
   Begin VB.TextBox TxtvarUnt 
      Height          =   285
      Left            =   1920
      TabIndex        =   63
      Top             =   10560
      Width           =   1455
   End
   Begin VB.TextBox TxtvarDes 
      Height          =   285
      Left            =   3600
      TabIndex        =   62
      Top             =   9960
      Width           =   1455
   End
   Begin VB.TextBox TxtvarMarks 
      Height          =   285
      Left            =   3600
      TabIndex        =   61
      Top             =   9480
      Width           =   1455
   End
   Begin VB.TextBox Txtvarqtyout 
      Height          =   285
      Left            =   1920
      TabIndex        =   60
      Top             =   9480
      Width           =   1455
   End
   Begin VB.TextBox Txtvarser 
      Height          =   285
      Left            =   2040
      TabIndex        =   59
      Top             =   9960
      Width           =   1455
   End
   Begin VB.TextBox TxtvarMat 
      Height          =   285
      Left            =   360
      TabIndex        =   58
      Top             =   10560
      Width           =   1455
   End
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   960
      TabIndex        =   57
      Top             =   0
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.TextBox TxtvarRemain 
      Height          =   285
      Left            =   360
      TabIndex        =   56
      Top             =   9960
      Width           =   1455
   End
   Begin VB.TextBox TxtvarTotal 
      Height          =   285
      Left            =   360
      TabIndex        =   55
      Top             =   9480
      Width           =   1455
   End
   Begin VB.TextBox TxtItemFirst 
      Height          =   285
      Left            =   14400
      TabIndex        =   48
      Text            =   "No item to print."
      Top             =   8520
      Width           =   975
   End
   Begin ComctlLib.ListView ListView1 
      Height          =   6255
      Left            =   480
      TabIndex        =   15
      Top             =   1440
      Width           =   8415
      _ExtentX        =   14843
      _ExtentY        =   11033
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   6
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "ItemNo"
         Object.Width           =   882
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Item Description"
         Object.Width           =   3528
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Qty"
         Object.Width           =   706
      EndProperty
      BeginProperty ColumnHeader(4) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   3
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Unit"
         Object.Width           =   1058
      EndProperty
      BeginProperty ColumnHeader(5) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   4
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Serial No"
         Object.Width           =   3528
      EndProperty
      BeginProperty ColumnHeader(6) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   5
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Remarks "
         Object.Width           =   2540
      EndProperty
   End
   Begin VB.TextBox Txtout 
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   14400
      TabIndex        =   46
      Top             =   6720
      Width           =   2175
   End
   Begin VB.TextBox Txtrelease 
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   14400
      TabIndex        =   45
      Top             =   6360
      Width           =   2175
   End
   Begin VB.TextBox Txtstatus 
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   14400
      TabIndex        =   44
      Top             =   6000
      Width           =   2175
   End
   Begin MSDataGridLib.DataGrid DataGrid4 
      Height          =   1455
      Left            =   14400
      TabIndex        =   42
      Top             =   7080
      Width           =   4455
      _ExtentX        =   7858
      _ExtentY        =   2566
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
   Begin VB.TextBox Qtytxtvar 
      Height          =   285
      Left            =   14400
      TabIndex        =   33
      Text            =   "Text3"
      Top             =   360
      Width           =   1215
   End
   Begin VB.TextBox TotalStcktxt 
      Height          =   285
      Left            =   14400
      TabIndex        =   32
      Top             =   5640
      Width           =   1095
   End
   Begin VB.TextBox QtyOutTxt 
      Height          =   285
      Left            =   14400
      TabIndex        =   31
      Top             =   5280
      Width           =   1095
   End
   Begin VB.TextBox Statustxt 
      Height          =   285
      Left            =   14400
      TabIndex        =   30
      Top             =   4920
      Width           =   1095
   End
   Begin VB.TextBox Qtytxt 
      Height          =   285
      Left            =   14400
      TabIndex        =   29
      Top             =   3960
      Width           =   1095
   End
   Begin VB.TextBox Sertxt 
      Height          =   285
      Left            =   14400
      TabIndex        =   27
      Text            =   "Text3"
      Top             =   3240
      Width           =   1095
   End
   Begin VB.TextBox Codtxtvar 
      Height          =   285
      Left            =   14400
      TabIndex        =   26
      Text            =   "Text3"
      Top             =   3600
      Width           =   1095
   End
   Begin VB.TextBox itemDstxt 
      Height          =   285
      Left            =   14400
      TabIndex        =   21
      Text            =   "Text3"
      Top             =   2520
      Width           =   1095
   End
   Begin VB.TextBox totalTxt 
      Height          =   285
      Left            =   14400
      TabIndex        =   20
      Text            =   "Text3"
      Top             =   2880
      Width           =   1095
   End
   Begin VB.TextBox MtrTxtvar 
      Height          =   285
      Left            =   14400
      TabIndex        =   19
      Text            =   "Text3"
      Top             =   2160
      Width           =   1215
   End
   Begin VB.TextBox maTxtvar 
      Height          =   285
      Left            =   14400
      TabIndex        =   18
      Text            =   "Text3"
      Top             =   1800
      Width           =   1215
   End
   Begin MSDataGridLib.DataGrid DataGrid2 
      Height          =   1215
      Left            =   12000
      TabIndex        =   17
      Top             =   9120
      Width           =   3615
      _ExtentX        =   6376
      _ExtentY        =   2143
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
   Begin VB.TextBox Retxtvar 
      Height          =   285
      Left            =   14400
      TabIndex        =   16
      Text            =   "Text3"
      Top             =   4560
      Width           =   1215
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   450
      Left            =   15600
      Top             =   2160
      Width           =   1440
      _ExtentX        =   2540
      _ExtentY        =   794
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
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   14400
      TabIndex        =   14
      Text            =   "Generate Printing "
      Top             =   1440
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   14400
      TabIndex        =   13
      Text            =   "The item will be printed. "
      Top             =   1080
      Width           =   1815
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H80000016&
      Caption         =   "DRS"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   8775
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   14175
      Begin VB.TextBox TxtItemCode 
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
         Left            =   5280
         TabIndex        =   74
         Top             =   1080
         Width           =   1815
      End
      Begin VB.TextBox TxtItemcodesrch 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   11280
         TabIndex        =   54
         Top             =   5520
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.TextBox TxtAutoSerial 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   11280
         TabIndex        =   52
         Top             =   4560
         Visible         =   0   'False
         Width           =   2655
      End
      Begin VB.ComboBox ItemDesCmb 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   11400
         TabIndex        =   51
         Top             =   4080
         Visible         =   0   'False
         Width           =   2655
      End
      Begin VB.TextBox DRtxtClone 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   2520
         Locked          =   -1  'True
         TabIndex        =   50
         Top             =   960
         Visible         =   0   'False
         Width           =   1455
      End
      Begin VB.CommandButton CmdManual 
         Caption         =   "Asset"
         Height          =   495
         Left            =   1560
         TabIndex        =   49
         Top             =   7800
         Width           =   975
      End
      Begin VB.TextBox txtvalue 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   8760
         TabIndex        =   43
         Text            =   "0"
         Top             =   600
         Visible         =   0   'False
         Width           =   1215
      End
      Begin VB.TextBox EdTxt 
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
         Left            =   6840
         TabIndex        =   39
         Top             =   120
         Visible         =   0   'False
         Width           =   2295
      End
      Begin VB.TextBox VarTxtcode 
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
         Left            =   2400
         TabIndex        =   38
         Top             =   600
         Width           =   2295
      End
      Begin VB.TextBox Qtytxt2 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   4440
         TabIndex        =   37
         Text            =   "1.00"
         Top             =   240
         Visible         =   0   'False
         Width           =   2175
      End
      Begin VB.TextBox Serialtxt3 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   5760
         TabIndex        =   36
         Top             =   480
         Visible         =   0   'False
         Width           =   2175
      End
      Begin VB.CommandButton AddCmd2 
         Caption         =   "Additional / w/ "
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   480
         Style           =   1  'Graphical
         TabIndex        =   35
         Top             =   7800
         Width           =   975
      End
      Begin VB.Timer Timer1 
         Interval        =   1000
         Left            =   6960
         Top             =   600
      End
      Begin VB.TextBox tmrtxt 
         Height          =   285
         Left            =   4800
         TabIndex        =   34
         Text            =   "0"
         Top             =   600
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Cancel"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   9000
         Style           =   1  'Graphical
         TabIndex        =   28
         Top             =   7800
         Width           =   975
      End
      Begin MSDataGridLib.DataGrid DataGrid3 
         Height          =   975
         Left            =   3720
         TabIndex        =   25
         Top             =   6360
         Width           =   4935
         _ExtentX        =   8705
         _ExtentY        =   1720
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
      Begin VB.TextBox itembartxt 
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
         Left            =   2160
         TabIndex        =   24
         Top             =   360
         Visible         =   0   'False
         Width           =   2295
      End
      Begin VB.ListBox List1 
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
         Height          =   6300
         Left            =   8880
         TabIndex        =   22
         Top             =   1320
         Width           =   2175
      End
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   1335
         Left            =   2880
         TabIndex        =   11
         Top             =   5880
         Width           =   4455
         _ExtentX        =   7858
         _ExtentY        =   2355
         _Version        =   393216
         AllowUpdate     =   0   'False
         Appearance      =   0
         BackColor       =   16777215
         BorderStyle     =   0
         ForeColor       =   4210688
         HeadLines       =   1
         RowHeight       =   18
         TabAction       =   1
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Franklin Gothic Book"
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
      Begin VB.ComboBox UntCmb 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   11280
         TabIndex        =   10
         Text            =   "PCS"
         Top             =   2760
         Width           =   615
      End
      Begin VB.TextBox SerialTxt 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   11280
         TabIndex        =   8
         Top             =   2040
         Width           =   2175
      End
      Begin VB.TextBox ItemTxt 
         BackColor       =   &H00C0FFFF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   1080
         Locked          =   -1  'True
         TabIndex        =   6
         Text            =   "1"
         Top             =   600
         Width           =   405
      End
      Begin VB.ComboBox RemarksCmb 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   11280
         TabIndex        =   5
         Text            =   "BILLING"
         Top             =   3480
         Width           =   1815
      End
      Begin VB.TextBox ItemDesTxt 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   11280
         TabIndex        =   3
         Top             =   1320
         Width           =   2655
      End
      Begin ciaXPButton30.XPButton30 Printcmd 
         Height          =   495
         Left            =   10080
         TabIndex        =   12
         Top             =   7800
         Width           =   855
         _ExtentX        =   1508
         _ExtentY        =   873
         AutoSelectTheme =   -1  'True
         Caption         =   "005000520049004E0054"
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
      Begin VB.Label LabelPending 
         Caption         =   "Pending"
         Height          =   255
         Left            =   4200
         TabIndex        =   73
         Top             =   1080
         Width           =   975
      End
      Begin VB.Label ListInvCaptionId 
         Height          =   255
         Left            =   11280
         TabIndex        =   53
         Top             =   5040
         Visible         =   0   'False
         Width           =   1095
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Add_Item Recorded "
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
         Left            =   360
         TabIndex        =   47
         Top             =   1080
         Width           =   2415
      End
      Begin VB.Label labelvar2 
         Height          =   255
         Left            =   10080
         TabIndex        =   41
         Top             =   600
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.Label itemcodelabel 
         Caption         =   "(34343DR)"
         Height          =   255
         Left            =   11400
         TabIndex        =   40
         Top             =   600
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label8 
         BackStyle       =   0  'Transparent
         Caption         =   "Add_Item"
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
         Left            =   8880
         TabIndex        =   23
         Top             =   1080
         Width           =   1455
      End
      Begin VB.Line Line5 
         BorderColor     =   &H00800080&
         X1              =   240
         X2              =   11160
         Y1              =   7680
         Y2              =   7680
      End
      Begin VB.Line Line4 
         X1              =   11160
         X2              =   11160
         Y1              =   360
         Y2              =   8400
      End
      Begin VB.Line Line3 
         X1              =   240
         X2              =   240
         Y1              =   360
         Y2              =   8400
      End
      Begin VB.Line Line2 
         X1              =   240
         X2              =   11160
         Y1              =   360
         Y2              =   360
      End
      Begin VB.Line Line1 
         X1              =   240
         X2              =   11160
         Y1              =   8400
         Y2              =   8400
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "Unit"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   255
         Left            =   11280
         TabIndex        =   9
         Top             =   2520
         Width           =   615
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Transparent
         Caption         =   "SERIAL/ASSET NO"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   255
         Left            =   11280
         TabIndex        =   7
         Top             =   1800
         Width           =   2175
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Remarks"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   255
         Left            =   11280
         TabIndex        =   4
         Top             =   3240
         Width           =   855
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "ItemCode "
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   255
         Left            =   11280
         TabIndex        =   2
         Top             =   1080
         Width           =   2415
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Item no "
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   255
         Left            =   360
         TabIndex        =   1
         Top             =   720
         Width           =   855
      End
   End
   Begin VB.Label Label11 
      BackStyle       =   0  'Transparent
      Caption         =   "TxtvarSerialNo"
      Height          =   255
      Left            =   3600
      TabIndex        =   69
      Top             =   10320
      Width           =   1095
   End
   Begin VB.Label Label10 
      BackStyle       =   0  'Transparent
      Caption         =   "QtyOut"
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
      Left            =   2040
      TabIndex        =   67
      Top             =   9240
      Width           =   855
   End
   Begin VB.Label Label9 
      BackStyle       =   0  'Transparent
      Caption         =   "Remainingstock"
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
      Left            =   360
      TabIndex        =   66
      Top             =   9720
      Width           =   1215
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "TotalStock"
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
      Left            =   360
      TabIndex        =   65
      Top             =   9240
      Width           =   855
   End
End
Attribute VB_Name = "ItemFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub AddCmd2_Click()
AdditionalFrm.Show vbModal
End Sub

Private Sub CmdManual_Click()
FormManualEntry.Show vbModal
End Sub

Private Sub Command1_Click()
Unload Me
Unload TransFrm
End Sub

Private Sub Command3_Click()
DashBoardFrm.Show vbModal
End Sub

Private Sub Form_Activate()
ItemDesTxt.SetFocus
End Sub

Private Sub Form_Load()
Call viewDRnumber
End Sub


Private Sub ItemDesCmb_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Call Tryme1
End If
If (KeyAscii >= vbKey0 And KeyAscii <= vbKey9) Or (KeyAscii = vbKeyBack) Or (KeyAscii = 46) Then
    Exit Sub
Else
    KeyAscii = 0
End If
End Sub

Private Sub ItemDesTxt_Change()
Set itemcodelabel.DataSource = Nothing
Set List1.DataSource = Nothing
Set itembartxt.DataSource = Nothing
'On Error Resume Next
'Call srchitemcode
Call GetItemcode
End Sub

Private Sub List1_Click()
itembartxt.Text = List1.Text
End Sub
Private Sub Printcmd_Click()

Dim voice As SpVoice

Set voice = New SpVoice
voice.Volume = 100


If ItemTxt.Text = 1 Then

voice.Speak TxtItemFirst.Text, SVSFlagsAsync
MsgBox ("Add the item first")

ElseIf ItemTxt.Text >= 2 And MsgBox("Are You sure you want to print", vbQuestion + vbYesNo) = vbYes Then

Dim voice2 As SpVoice

Set voice2 = New SpVoice
voice2.Volume = 100
voice2.Speak Text1.Text, SVSFlagsAsync

FormOtherRemarks.Show vbModal
Unload Me

End If

End Sub

Private Sub QtyTxt_KeyPress(KeyAscii As Integer)

If KeyAscii = 13 Then

setx("RemainingStock") = Val(setx("RemainingStock")) - Val(Qtytxt.Text)

UntCmb.SetFocus
End If

If (KeyAscii >= vbKey0 And KeyAscii <= vbKey9) Or (KeyAscii = vbKeyBack) Or (KeyAscii = 46) Then
    Exit Sub
Else
    KeyAscii = 0
End If
End Sub

Private Sub ItemDesTxt_KeyPress(KeyAscii As Integer)
'On Error Resume Next

If KeyAscii = 13 Then
Call Tryme1
End If
If (KeyAscii >= vbKey0 And KeyAscii <= vbKey9) Or (KeyAscii = vbKeyBack) Or (KeyAscii = 46) Then
    Exit Sub
Else
    KeyAscii = 0
End If
End Sub

Private Sub RemarksCmb_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 And SerialTxt.Visible = False Then

serialtxt2.SetFocus

ElseIf KeyAscii = 13 And SerialTxt.Visible = True Then

SerialTxt.SetFocus

End If

End Sub

Private Sub rsetcmd_Click()

End Sub

Private Sub SerialTxt_Change()
Set itemcodelabel.DataSource = Nothing
Set List1.DataSource = Nothing
Set itembartxt.DataSource = Nothing
Call srchInvserial
End Sub

Private Sub SerialTxt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
If SerialTxt.Text = "" Then
Else
Call srchitemcode
Call SendtheDataInv
End If
End If
End Sub
Private Sub Timer1_Timer()
tmrtxt.Text = Date
End Sub

Private Sub TxtItemcodesrch_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Call GetItemcode
End If
End Sub

Private Sub UntCmb_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then

RemarksCmb.SetFocus

End If
End Sub

