VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmOptions 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "ѡ��"
   ClientHeight    =   4920
   ClientLeft      =   2565
   ClientTop       =   1500
   ClientWidth     =   6150
   Icon            =   "frmOptions.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4920
   ScaleWidth      =   6150
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '��Ļ����
   Begin VB.PictureBox picOptions 
      BorderStyle     =   0  'None
      Height          =   3780
      Index           =   3
      Left            =   -20000
      ScaleHeight     =   3780
      ScaleWidth      =   5685
      TabIndex        =   8
      TabStop         =   0   'False
      Top             =   480
      Width           =   5685
      Begin VB.Frame fraSample4 
         Caption         =   "ʾ�� 4"
         Height          =   1785
         Left            =   2100
         TabIndex        =   11
         Top             =   840
         Width           =   2055
      End
   End
   Begin VB.PictureBox picOptions 
      BorderStyle     =   0  'None
      Height          =   3780
      Index           =   2
      Left            =   -20000
      ScaleHeight     =   3780
      ScaleWidth      =   5685
      TabIndex        =   7
      TabStop         =   0   'False
      Top             =   480
      Width           =   5685
      Begin VB.Frame fraSample3 
         Caption         =   "ʾ�� 3"
         Height          =   1785
         Left            =   1545
         TabIndex        =   10
         Top             =   675
         Width           =   2055
      End
   End
   Begin VB.PictureBox picOptions 
      BorderStyle     =   0  'None
      Height          =   3780
      Index           =   1
      Left            =   -20000
      ScaleHeight     =   3780
      ScaleWidth      =   5685
      TabIndex        =   6
      TabStop         =   0   'False
      Top             =   480
      Width           =   5685
      Begin VB.Frame fraSample2 
         Caption         =   "ʾ�� 2"
         Height          =   1785
         Left            =   645
         TabIndex        =   9
         Top             =   300
         Width           =   2055
      End
   End
   Begin VB.PictureBox picOptions 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   3780
      Index           =   0
      Left            =   240
      ScaleHeight     =   3780
      ScaleWidth      =   5685
      TabIndex        =   4
      TabStop         =   0   'False
      Top             =   480
      Width           =   5685
      Begin VB.Frame fraExamElement 
         BackColor       =   &H00FFFFFF&
         Caption         =   "���ⷶΧ����"
         Height          =   1455
         Left            =   120
         TabIndex        =   15
         Top             =   120
         Width           =   4095
         Begin VB.TextBox texNo 
            BeginProperty Font 
               Name            =   "΢���ź�"
               Size            =   12
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   1320
            TabIndex        =   17
            Text            =   "20"
            Top             =   840
            Width           =   1215
         End
         Begin VB.TextBox texNumber 
            BeginProperty Font 
               Name            =   "΢���ź�"
               Size            =   12
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   1320
            TabIndex        =   16
            Text            =   "100"
            Top             =   240
            Width           =   1215
         End
         Begin VB.Label lblExamElement 
            BackStyle       =   0  'Transparent
            Caption         =   "Ԫ�ط�Χ                     ��Ԫ��                                                   ��������                     ��"
            BeginProperty Font 
               Name            =   "΢���ź�"
               Size            =   12
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   975
            Left            =   120
            TabIndex        =   18
            Top             =   240
            Width           =   3495
         End
      End
      Begin VB.Frame fraExamTime 
         BackColor       =   &H00FFFFFF&
         Caption         =   "ʱ������"
         Height          =   1545
         Left            =   120
         TabIndex        =   5
         Top             =   1800
         Width           =   4095
         Begin VB.TextBox texTime 
            BeginProperty Font 
               Name            =   "΢���ź�"
               Size            =   12
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   720
            TabIndex        =   13
            Text            =   "60"
            Top             =   840
            Width           =   1335
         End
         Begin VB.CheckBox chkTimeIf 
            Caption         =   "��ʱ����"
            BeginProperty Font 
               Name            =   "΢���ź�"
               Size            =   12
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   12
            Top             =   360
            Value           =   1  'Checked
            Width           =   1455
         End
         Begin VB.Label lblTimeIf 
            Caption         =   "��ʱ                           ��"
            BeginProperty Font 
               Name            =   "΢���ź�"
               Size            =   10.5
               Charset         =   134
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   14
            Top             =   840
            Width           =   2415
         End
      End
   End
   Begin VB.CommandButton cmdApply 
      Caption         =   "Ӧ��"
      Enabled         =   0   'False
      Height          =   375
      Left            =   4920
      TabIndex        =   3
      Top             =   4440
      Width           =   1095
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "ȡ��"
      Height          =   375
      Left            =   3720
      TabIndex        =   2
      Top             =   4455
      Width           =   1095
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "ȷ��"
      Default         =   -1  'True
      Height          =   375
      Left            =   2490
      TabIndex        =   1
      Top             =   4440
      Width           =   1095
   End
   Begin MSComctlLib.TabStrip tbsOptions 
      Height          =   4245
      Left            =   105
      TabIndex        =   0
      Top             =   120
      Width           =   5895
      _ExtentX        =   10398
      _ExtentY        =   7488
      _Version        =   393216
      BeginProperty Tabs {1EFB6598-857C-11D1-B16A-00C0F0283628} 
         NumTabs         =   1
         BeginProperty Tab1 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "Ԫ�ؼ���"
            Key             =   "grpExam"
            Object.ToolTipText     =   "ΪԪ�ؼ����������ѡ��"
            ImageVarType    =   2
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "΢���ź�"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
End
Attribute VB_Name = "frmOptions"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Function ReadOptions()
    texNumber.Text = Trim(str(ExamNumberMax))
    texNo.Text = Trim(str(ExamNoMax))
    texTime.Text = Trim(str(ExamTimeMax))
    If ExamTimeIf = True Then chkTimeIf.Value = 1 Else chkTimeIf.Value = 0
    CheckTimeIf
    cmdApply.Enabled = False
End Function

Private Function WriteOptions() As Boolean
    Dim NumMax As Integer, NoMax As Integer, TimeMax As Integer, ErrorInfo As String
    WriteOptions = False
    NumMax = Int(Val(texNumber.Text))
    NoMax = Int(Val(texNo.Text))
    TimeMax = Int(Val(texTime.Text))
    If Not (NumMax < 119 And NumMax > 0) Then
        WriteOptions = True
        ErrorInfo = "Ԫ�ط�Χ�������"
    End If
    If Not (NoMax > 0) Then
        WriteOptions = True
        ErrorInfo = "��Ŀ�����������"
    End If
    If Not (TimeMax > 0) Then
        WriteOptions = True
        ErrorInfo = "����ʱ���������"
    End If
    If WriteOptions = False Then
        ExamNumberMax = NumMax
        ExamNoMax = NoMax
        ExamTimeMax = TimeMax
        If chkTimeIf.Value = 1 Then ExamTimeIf = True Else ExamTimeIf = False
        Call dataSettingSave
    Else
        MsgBox ErrorInfo
    End If
End Function

Private Function CheckTimeIf()
    If chkTimeIf.Value = 0 Then
        texTime.Enabled = False
    Else
        texTime.Enabled = True
    End If
End Function

Private Sub chkTimeIf_Click()
    CheckTimeIf
    cmdApply.Enabled = True
End Sub

Private Sub cmdApply_Click()
    If Not WriteOptions Then cmdApply.Enabled = False
End Sub

Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdOK_Click()
    If Not WriteOptions Then Unload Me
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    Dim i As Integer
    '���� ctrl+tab �����ƶ�����һ��ѡ��
    If Shift = vbCtrlMask And KeyCode = vbKeyTab Then
        i = tbsOptions.SelectedItem.Index
        If i = tbsOptions.Tabs.Count Then
            '�ѵ�������ѡ��,ת�ص�ѡ�� 1
            Set tbsOptions.SelectedItem = tbsOptions.Tabs(1)
        Else
            '����ѡ��
            Set tbsOptions.SelectedItem = tbsOptions.Tabs(i + 1)
        End If
    End If
End Sub

Private Sub Form_Load()
    Me.Move (Screen.Width - Me.Width) / 2, (Screen.Height - Me.Height) / 2
    ReadOptions
End Sub

Private Sub tbsOptions_Click()
    Dim i As Integer
    '��ʾ��ʹѡ��Ŀؼ�����
    '��������ʹ����������
    For i = 0 To tbsOptions.Tabs.Count - 1
        If i = tbsOptions.SelectedItem.Index - 1 Then
            picOptions(i).Left = 210
            picOptions(i).Enabled = True
        Else
            picOptions(i).Left = -20000
            picOptions(i).Enabled = False
        End If
    Next
End Sub

Private Sub texNo_KeyPress(KeyAscii As Integer)
    cmdApply.Enabled = True
End Sub

Private Sub texNumber_KeyPress(KeyAscii As Integer)
    cmdApply.Enabled = True
End Sub

Private Sub texTime_KeyPress(KeyAscii As Integer)
    cmdApply.Enabled = True
End Sub
