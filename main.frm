VERSION 5.00
Begin VB.Form frmMain 
   BackColor       =   &H00FFFFFF&
   Caption         =   "��ѧС���� Designed by �Ŷ�һ��"
   ClientHeight    =   2295
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4815
   Icon            =   "main.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2295
   ScaleWidth      =   4815
   StartUpPosition =   2  '��Ļ����
   Begin VB.CommandButton cmdfrmAbout 
      Caption         =   "����"
      Height          =   615
      Left            =   3120
      TabIndex        =   3
      Top             =   1320
      Width           =   1575
   End
   Begin VB.CommandButton cmdfrmExam 
      Caption         =   "Ԫ�ؼ���"
      Height          =   615
      Left            =   1440
      TabIndex        =   2
      Top             =   1320
      Width           =   1335
   End
   Begin VB.CommandButton cmdfrmElement 
      Caption         =   "Ԫ�ز�ѯ"
      Height          =   615
      Left            =   1440
      TabIndex        =   1
      Top             =   360
      Width           =   1335
   End
   Begin VB.CommandButton cmdfrmMass 
      Caption         =   "��������"
      Height          =   615
      Left            =   3120
      TabIndex        =   0
      Top             =   360
      Width           =   1575
   End
   Begin VB.Image Image1 
      Height          =   1560
      Left            =   120
      Picture         =   "main.frx":1B692
      Stretch         =   -1  'True
      Top             =   360
      Width           =   1200
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

