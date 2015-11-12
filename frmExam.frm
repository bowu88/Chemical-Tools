VERSION 5.00
Begin VB.Form frmExam 
   Caption         =   "Ԫ�ؼ������ Designed by �Ŷ�һ��"
   ClientHeight    =   3585
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   5790
   LinkTopic       =   "Form1"
   ScaleHeight     =   3585
   ScaleWidth      =   5790
   StartUpPosition =   2  '��Ļ����
   Begin VB.CommandButton cmdCopyScore 
      Caption         =   "����ս��"
      Height          =   495
      Left            =   3240
      TabIndex        =   9
      Top             =   2160
      Width           =   1095
   End
   Begin VB.CommandButton cmdSetting 
      Caption         =   "����"
      Height          =   495
      Left            =   4560
      TabIndex        =   7
      Top             =   2160
      Width           =   1095
   End
   Begin VB.Timer tmrExam 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   0
      Top             =   0
   End
   Begin VB.CommandButton cmdExam 
      Caption         =   "�ύ"
      Default         =   -1  'True
      Height          =   495
      Left            =   3240
      TabIndex        =   3
      Top             =   1560
      Width           =   1095
   End
   Begin VB.TextBox texExam 
      ForeColor       =   &H00C0C0C0&
      Height          =   495
      Left            =   360
      TabIndex        =   2
      Top             =   1560
      Width           =   2655
   End
   Begin VB.CommandButton cmdStart 
      Caption         =   "��ʼ����"
      Height          =   495
      Left            =   4560
      TabIndex        =   1
      Top             =   1560
      Width           =   1095
   End
   Begin VB.Label lblTime 
      Caption         =   "��ʣ10��"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   15
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3120
      TabIndex        =   8
      Top             =   1080
      Width           =   1695
   End
   Begin VB.Label lblScoreMax 
      Caption         =   "��߷�Ϊ��0 ��ZJZ��2015��10��24��17:22����"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   240
      TabIndex        =   6
      Top             =   2760
      Width           =   5295
   End
   Begin VB.Label lblScore 
      Caption         =   "��ϰģʽ��"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   14.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   3120
      TabIndex        =   5
      Top             =   120
      Width           =   1815
   End
   Begin VB.Label lblCorrect 
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   360
      TabIndex        =   4
      Top             =   2160
      Width           =   2775
   End
   Begin VB.Label lblExamElementName 
      Alignment       =   2  'Center
      Caption         =   "��"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   48
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   360
      TabIndex        =   0
      Top             =   120
      Width           =   2655
   End
End
Attribute VB_Name = "frmExam"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private InTip As String

Function ExamNew()
    ExamElementNumber = ExamRnd(ExamNumberMax)
    lblExamElementName.Caption = ElementName(ExamElementNumber)
End Function

Function ExamStart()
    ExamIf = True
    texExam.SetFocus
    texExam.Text = InTip
    texExam.ForeColor = RGB(128, 128, 128)
    lblScore.Caption = "��ǰ����Ϊ��" & Chr(13) & Chr(10) & Int(ExamScore)
    If ExamTimeIf = True Then
        tmrExam.Enabled = True
        ExamTime = ExamTimeMax
        lblTime.Visible = True
        lblTime.Caption = "��ʣ" & ExamTime & "��"
    End If
    Call ExamNew
    cmdStart.Caption = "��������"
End Function

Function ExamEnd()
    ExamIf = False
    ExamNo = 0
    tmrExam.Enabled = False
    MsgBox ("�����������ķ���Ϊ��" & Int(ExamScore))
    If ExamScore > ExamScoreMax Then
        ExamScoreName = InputBox("�������������", "�߷ְ�", ExamScoreName)
        ExamScoreTime = Now()
        ExamScoreMax = ExamScore
        dataScoreSave
        ExamScoreGet
    End If
    lblScore.Caption = "��ϰģʽ��" & Chr(13) & Chr(10) & "�ϴη�����" & Int(ExamScore)
    cmdStart.Caption = "��ʼ����"
    lblTime.Visible = False
    ExamScore = 0
End Function

Function ExamScoreGet()
    If ExamScoreMax > 0 Then
        lblScoreMax = "��߷�Ϊ��" & ExamScoreMax & Chr(13) & Chr(10) & "��" & ExamScoreName & "��" & UITime(ExamScoreTime) & "����"
    Else
        lblScoreMax = ""
    End If
End Function

Private Sub cmdCopyScore_Click()
    Call UICopy("Hello, ����" & UITime(ExamScoreTime) & "������Ԫ�ؼ�����ԣ��õ���" & ExamScoreMax & "�֣���Ҳ��ʹ�û�ѧС�������԰ɣ�")
    MsgBox "�������ս���Ѿ����Ƶ����а壡"
End Sub

Private Sub cmdExam_Click()
    If ExamIf Then ExamNo = ExamNo + 1
    If ExamAbbr(ExamElementNumber, texExam.Text) Then
        lblCorrect.Caption = "��ϲ�㣬����ˣ�" & Chr(13) & Chr(10) & ElementName(ExamElementNumber) & "�ķ���Ϊ��" & ElementAbbr(ExamElementNumber)
        If ExamIf Then
            ExamScore = ExamScore + 100 / ExamNoMax
            lblScore.Caption = "��ǰ����Ϊ��" & Chr(13) & Chr(10) & Int(ExamScore)
        End If
    Else
        lblCorrect.Caption = "���ź�������ˣ�" & Chr(13) & Chr(10) & ElementName(ExamElementNumber) & "�ķ���Ϊ��" & ElementAbbr(ExamElementNumber)
    End If
    texExam.SetFocus
    texExam.Text = InTip
    texExam.ForeColor = RGB(128, 128, 128)
    If ExamNo >= ExamNoMax Then ExamEnd
    Call ExamNew
End Sub

Private Sub cmdSetting_Click()
    frmOptions.Show 1, Me
End Sub

Private Sub cmdStart_Click()
    If ExamIf = False Then
        Call ExamStart
    Else
        Call ExamEnd
    End If
End Sub

Private Sub Form_Load()
    InTip = "����������Ԫ�صķ��š�"
    texExam.Text = InTip
    lblTime.Caption = ""
    ExamIf = False
    ExamNo = 0
    ExamScore = 0
    Call ExamNew
    ExamScoreGet
End Sub

Private Sub texExam_Click()
    If texExam.Text = InTip Then
        texExam.Text = ""
        texExam.ForeColor = RGB(0, 0, 0)
    End If
End Sub

Private Sub texExam_KeyPress(KeyAscii As Integer)
    If texExam.Text = InTip Then
        texExam.Text = ""
        texExam.ForeColor = RGB(0, 0, 0)
    End If
End Sub

Private Sub tmrExam_Timer()
    ExamTime = ExamTime - 1
    lblTime = "��ʣ" & ExamTime & "��"
    If ExamTime <= 0 Then
        ExamEnd
    End If
End Sub
