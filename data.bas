Attribute VB_Name = "modData"
'�������ݿ�
Public adoData As ADODB.Connection
Public adoDataRe As ADODB.Recordset
'��������
Public ElementName(118) As String
Public ElementAbbr(118) As String
Public ElementMass(118) As Double

Function dataOpen()
    '�����ݿ�
    Set adoData = New ADODB.Connection
    adoData.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + App.Path + "\data.mdb;Persist Security Info=False"
    '�������ݿ�·��
    adoData.Open
    Set adoDataRe = New ADODB.Recordset
    adoDataRe.ActiveConnection = adoData
    adoDataRe.CursorType = adOpenDynamic
    adoDataRe.LockType = adLockOptimistic
End Function

Function dataElement()
    '��ȡԪ��
    Dim i As Integer, n As Integer
    i = 0
    Call dataOpen
    adoDataRe.Open "select * from Element"
    While Not adoDataRe.EOF
        i = i + 1
        If Not IsNull(adoDataRe!ElementNumber) Then n = CStr(adoDataRe!ElementNumber)
        If Not IsNull(adoDataRe!ElementName) Then ElementName(n) = CStr(adoDataRe!ElementName)
        If Not IsNull(adoDataRe!ElementAbbr) Then ElementAbbr(n) = CStr(adoDataRe!ElementAbbr)
        If Not IsNull(adoDataRe!ElementMass) Then ElementName(n) = CStr(adoDataRe!ElementMass)
        adoDataRe.MoveNext
    Wend
End Function

