VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form FormManualEntry 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Asset Details and Information"
   ClientHeight    =   7185
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   8655
   BeginProperty Font 
      Name            =   "Calibri"
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
   ScaleHeight     =   7185
   ScaleWidth      =   8655
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Txtvarunload 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   9240
      TabIndex        =   57
      Text            =   "Text134343"
      Top             =   1440
      Visible         =   0   'False
      Width           =   975
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   6975
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   8415
      _ExtentX        =   14843
      _ExtentY        =   12303
      _Version        =   393216
      Tabs            =   4
      TabsPerRow      =   4
      TabHeight       =   520
      BackColor       =   -2147483638
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "Asset_Entry"
      TabPicture(0)   =   "FrmAddItemCode.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "Inv_Stock"
      TabPicture(1)   =   "FrmAddItemCode.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame1"
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "Asset_Returned"
      TabPicture(2)   =   "FrmAddItemCode.frx":0038
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame3"
      Tab(2).Control(0).Enabled=   0   'False
      Tab(2).ControlCount=   1
      TabCaption(3)   =   "New_DR"
      TabPicture(3)   =   "FrmAddItemCode.frx":0054
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "Frame4"
      Tab(3).ControlCount=   1
      Begin VB.Frame Frame2 
         BackColor       =   &H80000000&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404000&
         Height          =   6375
         Left            =   120
         TabIndex        =   35
         Top             =   360
         Width           =   8175
         Begin VB.ComboBox CboUnit 
            Height          =   315
            Left            =   5640
            TabIndex        =   58
            Text            =   "Select"
            Top             =   1920
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.ComboBox CboCategory 
            Height          =   315
            Left            =   1920
            TabIndex        =   56
            Text            =   "Select"
            Top             =   840
            Width           =   2775
         End
         Begin VB.ComboBox Cboremarks 
            Height          =   315
            Left            =   1920
            TabIndex        =   55
            Text            =   "Select"
            Top             =   2640
            Width           =   2055
         End
         Begin VB.TextBox TxtModel 
            BackColor       =   &H80000004&
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
            Left            =   1920
            TabIndex        =   46
            Text            =   "NA"
            Top             =   480
            Width           =   2775
         End
         Begin VB.TextBox Txtcategory 
            BackColor       =   &H80000004&
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
            Left            =   840
            TabIndex        =   45
            Text            =   "NA"
            Top             =   3120
            Visible         =   0   'False
            Width           =   2775
         End
         Begin VB.TextBox TxtUnit 
            BackColor       =   &H80000004&
            Enabled         =   0   'False
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
            Left            =   1920
            TabIndex        =   44
            Top             =   2280
            Width           =   1215
         End
         Begin VB.TextBox TxtSer 
            BackColor       =   &H80000004&
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
            Left            =   1920
            TabIndex        =   43
            Text            =   "NA"
            Top             =   1920
            Width           =   2175
         End
         Begin VB.TextBox TxtQty 
            BackColor       =   &H80000003&
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   7680
            TabIndex        =   42
            Top             =   1200
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.TextBox TxtSer1 
            BackColor       =   &H80000003&
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
            Left            =   4320
            TabIndex        =   41
            Top             =   2760
            Visible         =   0   'False
            Width           =   1935
         End
         Begin VB.TextBox TxtUnit1 
            BackColor       =   &H80000003&
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
            Left            =   4320
            TabIndex        =   40
            Top             =   3120
            Visible         =   0   'False
            Width           =   1215
         End
         Begin VB.CommandButton Command4 
            BackColor       =   &H80000002&
            Caption         =   "Exit.."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   5400
            Style           =   1  'Graphical
            TabIndex        =   39
            Top             =   3480
            Width           =   1095
         End
         Begin VB.TextBox Txtvarqty 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   5640
            TabIndex        =   38
            Text            =   "1"
            Top             =   2280
            Visible         =   0   'False
            Width           =   975
         End
         Begin VB.CommandButton Command1 
            BackColor       =   &H80000002&
            Caption         =   "Add"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   240
            Style           =   1  'Graphical
            TabIndex        =   37
            Top             =   3480
            Width           =   1095
         End
         Begin VB.CommandButton CmdReset 
            BackColor       =   &H80000002&
            Caption         =   "Reset"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   1440
            Style           =   1  'Graphical
            TabIndex        =   36
            Top             =   3480
            Width           =   1095
         End
         Begin RichTextLib.RichTextBox RichtxtDesc 
            Height          =   615
            Left            =   1920
            TabIndex        =   47
            Top             =   1200
            Width           =   3615
            _ExtentX        =   6376
            _ExtentY        =   1085
            _Version        =   393217
            BackColor       =   -2147483644
            TextRTF         =   $"FrmAddItemCode.frx":0070
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin MSDataGridLib.DataGrid DataGrid2 
            Height          =   2055
            Left            =   120
            TabIndex        =   48
            Top             =   4080
            Width           =   6735
            _ExtentX        =   11880
            _ExtentY        =   3625
            _Version        =   393216
            BackColor       =   -2147483646
            BorderStyle     =   0
            HeadLines       =   1
            RowHeight       =   16
            BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Calibri"
               Size            =   8.25
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
         Begin VB.Label Label12 
            BackStyle       =   0  'Transparent
            Caption         =   "Remarks:"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   600
            TabIndex        =   54
            Top             =   2640
            Width           =   1215
         End
         Begin VB.Label Label4 
            BackStyle       =   0  'Transparent
            Caption         =   "AddDesc:"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   600
            TabIndex        =   53
            Top             =   1200
            Width           =   1095
         End
         Begin VB.Label Label1 
            BackStyle       =   0  'Transparent
            Caption         =   "Category:"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   600
            TabIndex        =   52
            Top             =   840
            Width           =   1095
         End
         Begin VB.Label Label11 
            BackStyle       =   0  'Transparent
            Caption         =   "Unit:"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   600
            TabIndex        =   51
            Top             =   2280
            Width           =   1215
         End
         Begin VB.Label Label10 
            BackStyle       =   0  'Transparent
            Caption         =   "BrandModel:"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   600
            TabIndex        =   50
            Top             =   480
            Width           =   1095
         End
         Begin VB.Label Label3 
            BackStyle       =   0  'Transparent
            Caption         =   "SerialNo:"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   600
            TabIndex        =   49
            Top             =   1920
            Width           =   975
         End
      End
      Begin VB.Frame Frame1 
         BackColor       =   &H80000002&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   6255
         Left            =   -74880
         TabIndex        =   25
         Top             =   480
         Width           =   8295
         Begin VB.TextBox Txtremain 
            Height          =   285
            Left            =   5040
            TabIndex        =   65
            Text            =   "NA"
            Top             =   960
            Width           =   975
         End
         Begin VB.TextBox Txtmarks 
            Height          =   285
            Left            =   6960
            TabIndex        =   63
            Text            =   "NA"
            Top             =   960
            Width           =   1095
         End
         Begin VB.TextBox TxtSrch 
            BackColor       =   &H80000000&
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404000&
            Height          =   285
            Left            =   720
            TabIndex        =   32
            Top             =   240
            Width           =   2415
         End
         Begin VB.CommandButton Command2 
            BackColor       =   &H80000002&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   240
            Picture         =   "FrmAddItemCode.frx":00F0
            Style           =   1  'Graphical
            TabIndex        =   31
            Top             =   5280
            Width           =   1095
         End
         Begin VB.CommandButton Command5 
            BackColor       =   &H80000002&
            Caption         =   "Exit.."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   6840
            Style           =   1  'Graphical
            TabIndex        =   30
            Top             =   5280
            Width           =   1215
         End
         Begin VB.TextBox Txtcost 
            Height          =   285
            Left            =   6120
            TabIndex        =   29
            Text            =   "NA"
            Top             =   960
            Width           =   855
         End
         Begin VB.TextBox TxtDrUnit 
            Height          =   285
            Left            =   4200
            TabIndex        =   28
            Top             =   960
            Width           =   855
         End
         Begin VB.TextBox Txtdesc 
            Height          =   285
            Left            =   1560
            TabIndex        =   27
            Top             =   960
            Width           =   2655
         End
         Begin VB.TextBox Txtcode 
            Height          =   285
            Left            =   240
            TabIndex        =   26
            Top             =   960
            Width           =   1335
         End
         Begin MSDataGridLib.DataGrid DataGrid1 
            Height          =   3855
            Left            =   240
            TabIndex        =   33
            Top             =   1320
            Width           =   7815
            _ExtentX        =   13785
            _ExtentY        =   6800
            _Version        =   393216
            BorderStyle     =   0
            HeadLines       =   1
            RowHeight       =   16
            BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Calibri"
               Size            =   8.25
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
         Begin VB.Label Label14 
            BackStyle       =   0  'Transparent
            Caption         =   "Rem.Bal"
            ForeColor       =   &H00C0FFC0&
            Height          =   255
            Left            =   5040
            TabIndex        =   66
            Top             =   720
            Width           =   855
         End
         Begin VB.Label Label18 
            BackStyle       =   0  'Transparent
            Caption         =   "Remarks:"
            ForeColor       =   &H00C0FFC0&
            Height          =   255
            Left            =   6960
            TabIndex        =   64
            Top             =   720
            Width           =   855
         End
         Begin VB.Label Label17 
            BackStyle       =   0  'Transparent
            Caption         =   "Unit:"
            ForeColor       =   &H00C0FFC0&
            Height          =   255
            Left            =   4200
            TabIndex        =   62
            Top             =   720
            Width           =   495
         End
         Begin VB.Label Label16 
            BackStyle       =   0  'Transparent
            Caption         =   "Desc:"
            ForeColor       =   &H00C0FFC0&
            Height          =   255
            Left            =   1560
            TabIndex        =   61
            Top             =   720
            Width           =   495
         End
         Begin VB.Label Label15 
            BackStyle       =   0  'Transparent
            Caption         =   "Cost:"
            ForeColor       =   &H00C0FFC0&
            Height          =   255
            Left            =   6120
            TabIndex        =   60
            Top             =   720
            Width           =   495
         End
         Begin VB.Label Label13 
            BackStyle       =   0  'Transparent
            Caption         =   "ItemCode:"
            ForeColor       =   &H00C0FFC0&
            Height          =   255
            Left            =   240
            TabIndex        =   59
            Top             =   720
            Width           =   855
         End
         Begin VB.Label Label2 
            BackStyle       =   0  'Transparent
            Caption         =   "Search:"
            ForeColor       =   &H80000011&
            Height          =   255
            Left            =   120
            TabIndex        =   34
            Top             =   240
            Width           =   615
         End
      End
      Begin VB.Frame Frame3 
         BackColor       =   &H80000002&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   6255
         Left            =   -74880
         TabIndex        =   11
         Top             =   480
         Width           =   8175
         Begin VB.CommandButton CmdExit 
            BackColor       =   &H80000002&
            Caption         =   "Exit.."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   6840
            Style           =   1  'Graphical
            TabIndex        =   19
            Top             =   5640
            Width           =   1095
         End
         Begin VB.CommandButton CmdExe 
            BackColor       =   &H80000002&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   240
            Picture         =   "FrmAddItemCode.frx":0652
            Style           =   1  'Graphical
            TabIndex        =   18
            Top             =   5640
            Width           =   1095
         End
         Begin VB.TextBox Txtcon 
            BackColor       =   &H80000000&
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404000&
            Height          =   285
            Left            =   720
            TabIndex        =   17
            Top             =   240
            Width           =   2415
         End
         Begin VB.TextBox TxtMat 
            Height          =   285
            Left            =   9600
            TabIndex        =   16
            Top             =   840
            Width           =   2175
         End
         Begin VB.TextBox TxtDescon 
            Height          =   285
            Left            =   9600
            TabIndex        =   15
            Top             =   1440
            Width           =   2175
         End
         Begin VB.TextBox TxtUntcon 
            Height          =   285
            Left            =   9600
            TabIndex        =   14
            Top             =   2040
            Width           =   735
         End
         Begin VB.TextBox TxtSNcon 
            Height          =   285
            Left            =   9720
            TabIndex        =   13
            Text            =   "NA"
            Top             =   2880
            Width           =   2055
         End
         Begin VB.TextBox TxtAssetcon 
            Height          =   285
            Left            =   9600
            TabIndex        =   12
            Text            =   "NA"
            Top             =   3240
            Width           =   735
         End
         Begin MSDataGridLib.DataGrid DataGrid3 
            Height          =   4815
            Left            =   240
            TabIndex        =   20
            Top             =   720
            Width           =   7695
            _ExtentX        =   13573
            _ExtentY        =   8493
            _Version        =   393216
            BorderStyle     =   0
            HeadLines       =   1
            RowHeight       =   16
            BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Calibri"
               Size            =   8.25
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
         Begin VB.Label Label5 
            BackStyle       =   0  'Transparent
            Caption         =   "Search:"
            ForeColor       =   &H80000011&
            Height          =   255
            Left            =   120
            TabIndex        =   24
            Top             =   240
            Width           =   615
         End
         Begin VB.Label Label6 
            BackStyle       =   0  'Transparent
            Caption         =   "MaterialCode"
            BeginProperty Font 
               Name            =   "Garamond"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   9600
            TabIndex        =   23
            Top             =   600
            Width           =   1095
         End
         Begin VB.Label Label7 
            BackStyle       =   0  'Transparent
            Caption         =   "Description"
            BeginProperty Font 
               Name            =   "Garamond"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   9600
            TabIndex        =   22
            Top             =   1200
            Width           =   1095
         End
         Begin VB.Label Label8 
            BackStyle       =   0  'Transparent
            Caption         =   "Unit"
            BeginProperty Font 
               Name            =   "Garamond"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   9720
            TabIndex        =   21
            Top             =   1800
            Width           =   495
         End
      End
      Begin VB.Frame Frame4 
         BackColor       =   &H80000002&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   6375
         Left            =   -74880
         TabIndex        =   1
         Top             =   480
         Width           =   8175
         Begin VB.TextBox Txtdesnew 
            Height          =   285
            Left            =   6960
            TabIndex        =   8
            Top             =   720
            Visible         =   0   'False
            Width           =   2175
         End
         Begin VB.TextBox Txtsernew 
            Height          =   285
            Left            =   6960
            TabIndex        =   7
            Top             =   1200
            Visible         =   0   'False
            Width           =   2175
         End
         Begin VB.TextBox Txtqtynew 
            Height          =   285
            Left            =   6960
            TabIndex        =   6
            Top             =   1560
            Visible         =   0   'False
            Width           =   2175
         End
         Begin VB.TextBox Txtunitnew 
            Height          =   285
            Left            =   6960
            TabIndex        =   5
            Text            =   "NA"
            Top             =   1920
            Visible         =   0   'False
            Width           =   2175
         End
         Begin VB.CommandButton Cmdexitme 
            BackColor       =   &H80000002&
            Caption         =   "Exit.."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   6720
            Style           =   1  'Graphical
            TabIndex        =   4
            Top             =   5760
            Width           =   1215
         End
         Begin VB.CommandButton Cmdaddnew 
            BackColor       =   &H80000002&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   240
            Picture         =   "FrmAddItemCode.frx":0BB4
            Style           =   1  'Graphical
            TabIndex        =   3
            Top             =   5760
            Width           =   1095
         End
         Begin VB.TextBox Txtsrchdrnew 
            BackColor       =   &H80000000&
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00404000&
            Height          =   285
            Left            =   720
            TabIndex        =   2
            Top             =   240
            Width           =   2415
         End
         Begin MSDataGridLib.DataGrid DataGridNew 
            Height          =   4935
            Left            =   240
            TabIndex        =   9
            Top             =   720
            Width           =   7695
            _ExtentX        =   13573
            _ExtentY        =   8705
            _Version        =   393216
            BorderStyle     =   0
            HeadLines       =   1
            RowHeight       =   16
            BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Calibri"
               Size            =   8.25
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
         Begin VB.Label Label9 
            BackStyle       =   0  'Transparent
            Caption         =   "Search:"
            ForeColor       =   &H80000011&
            Height          =   255
            Left            =   120
            TabIndex        =   10
            Top             =   240
            Width           =   615
         End
      End
   End
End
Attribute VB_Name = "FormManualEntry"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Cboremarks_Change()
Set Cboremarks.DataSource = Nothing
End Sub

Private Sub CmdReset_Click()
TxtModel.Text = ""
Txtcategory.Text = ""
RichtxtDesc.Text = ""
Txtser.Text = ""
Txtunit.Text = ""
End Sub

Private Sub Command1_Click()

If Cboremarks.Text = "Select" Then
MsgBox "Pls select remarks Field", vbCritical, "Required"
Else
If RichtxtDesc.Text = "" Then

MsgBox "Pls fillup the description field", vbInformation, "Required"

Else

Dim msgr As String

msgr = MsgBox("Are you sure you want to add the record", vbInformation + vbYesNo)

If msgr = vbNo Then
MsgBox "No Data has been Added"
Else
Txtvarunload.Text = "M"
QtyManualform.ItemDesTxt.Text = RichtxtDesc.Text
QtyManualform.Show vbModal
End If
End If
End If
End Sub

Private Sub Command2_Click()
If TxtSrch.Text = "" Then
MsgBox "Pls search the item to add", vbCritical, "Required"
Else
ItemFrm.ItemDesTxt.Text = Txtcode.Text
Unload Me
End If
End Sub

Private Sub Form_Load()
Call viewCat
Call viewMat
Call GetDRNew
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

Cboremarks.AddItem rs!Category

rs.MoveNext

Loop

End Sub


Private Sub RichtxtDesc_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Txtser.SetFocus
End If
End Sub

Private Sub SSTab1_Click(PreviousTab As Integer)
If SSTab1.Caption = "Asset_Entry" Then
Call GetDRNew
ElseIf SSTab1.Caption = "Inv_Stock" Then
Call GetInvStock
ElseIf SSTab1.Caption = "Asset_Returned" Then
Call GetARview
ElseIf SSTab1.Caption = "New_DR" Then
Call GetDRNew1
End If
End Sub

Private Sub Txtcategory_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
RichtxtDesc.SetFocus
End If
End Sub

Private Sub Txtcon_Change()
If Txtcon.Text = "" Then
Call GetARview
Else
Call GetARviewSrch
End If
End Sub

Private Sub TxtModel_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Txtcategory.SetFocus
End If
End Sub

Private Sub Txtremain_Change()
TxtCost.Text = Format$(TxtCost.Text, "00.00")
End Sub

Private Sub TxtSer_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then

Dim msg As String

msg = MsgBox("Are you sure to add this record ", vbInformation + vbYesNo)

If msg = vbNo Then
Cboremarks.SetFocus
Else
Txtunit.Text = "PC"
Call ManualEntry
End If

End If
End Sub

Private Sub TxtSrch_Change()
If Not TxtSrch.Text = "" Then
Call GetInvStocksrch
Else
Call GetInvStock
End If
End Sub

Private Sub TxtUnit_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
TxtModel.SetFocus
End If
End Sub

Public Sub viewCat()

If cn.State = 1 Then ' 2
cn.Close
End If

Call condatabase

Set rs = New ADODB.Recordset

With rs

.Open "SELECT * FROM Category_tbl", cn, adOpenDynamic, adLockOptimistic

End With

Do While Not rs.EOF

CboCategory.AddItem rs!Description

rs.MoveNext

Loop

End Sub





















