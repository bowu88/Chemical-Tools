Attribute VB_Name = "modExam"
Function ExamAbbr(n As Integer, str As String) As Boolean
    '�Է���true������false
    If UCase(str) = UCase(ElementAbbr(n)) Then
        ExamAbbr = True
    Else
        ExamAbbr = False
    End If
End Function

Function ExamRnd(n As Integer) As Integer
    Randomize
    ExamRnd = Int(Rnd() * n) + 1
End Function
