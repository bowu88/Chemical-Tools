VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "��ѧС���� Designed by �Ŷ�һ��"
   ClientHeight    =   4395
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6360
   LinkTopic       =   "Form1"
   ScaleHeight     =   4395
   ScaleWidth      =   6360
   StartUpPosition =   2  '��Ļ����
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
    frmMass.Show
End Sub

