VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "��ѧС���� Designed by �Ŷ�һ��"
   ClientHeight    =   3915
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4875
   LinkTopic       =   "Form1"
   ScaleHeight     =   3915
   ScaleWidth      =   4875
   StartUpPosition =   2  '��Ļ����
   Begin VB.CommandButton cmdfrmPhy 
      Caption         =   "����ѧ������ѧ������"
      Height          =   615
      Left            =   2280
      TabIndex        =   7
      Top             =   2160
      Width           =   1335
   End
   Begin VB.CommandButton cmdfrmAbout 
      Caption         =   "����"
      Height          =   495
      Left            =   2280
      TabIndex        =   6
      Top             =   3000
      Width           =   1215
   End
   Begin VB.CommandButton cmdfrmpH 
      Caption         =   "pH������"
      Height          =   615
      Left            =   2280
      TabIndex        =   5
      Top             =   1320
      Width           =   1215
   End
   Begin VB.CommandButton cmdfrmGas 
      Caption         =   "����״̬������"
      Height          =   615
      Left            =   2280
      TabIndex        =   4
      Top             =   480
      Width           =   1215
   End
   Begin VB.CommandButton cmdfrmEquation 
      Caption         =   "��ƽ����ʽ"
      Height          =   495
      Left            =   600
      TabIndex        =   3
      Top             =   3000
      Width           =   1095
   End
   Begin VB.CommandButton cmdfrmExam 
      Caption         =   "Ԫ�ؼ������"
      Height          =   615
      Left            =   600
      TabIndex        =   2
      Top             =   2160
      Width           =   1095
   End
   Begin VB.CommandButton cmdfrmElement 
      Caption         =   "Ԫ�ز�ѯ��"
      Height          =   615
      Left            =   600
      TabIndex        =   1
      Top             =   480
      Width           =   1095
   End
   Begin VB.CommandButton cmdfrmMass 
      Caption         =   "����������"
      Height          =   615
      Left            =   600
      TabIndex        =   0
      Top             =   1320
      Width           =   1095
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdfrmAbout_Click()
    Load frmAbout
    frmAbout.Show
End Sub

Private Sub cmdfrmElement_Click()
    Load frmElement
    frmElement.Show
End Sub

Private Sub cmdfrmExam_Click()
    Load frmExam
    frmExam.Show
End Sub

Private Sub cmdfrmmass_Click()
    Load frmMass
    frmMass.Show 1, Me
End Sub

