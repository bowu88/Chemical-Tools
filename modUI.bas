Attribute VB_Name = "modUI"
Public Function UIMove()

End Function

Public Function UICopy(x As String)
    Clipboard.Clear
    Clipboard.SetText x, vbCFText
End Function

Public Function UITime(x As String) As String
    UITime = Year(x) & "��" & Month(x) & "��" & Day(x) & "��" & Hour(x) & ":" & Minute(x) & ":" & Second(x)
End Function

