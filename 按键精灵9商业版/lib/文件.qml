[General]
SyntaxVersion=2
MacroID=1f3dfae4-1654-4de0-a32c-37e85ed16fd8
[Comment]
������ǰ�������8.0���Ƴ���ȫ�¹���
�����԰��Լ����õĺ������ӳ���д����������úܶ���ű�ȥ����
����������������ö���ű�����һ������޸�һ���͵����޸Ķദ
Ŀǰ����⹦�ܻ��ڲ��Ե��У����κν�������ڰ���������̳�������ַ��http://bbs.ajjl.cn

******ע�⣡���ǹٷ��ṩ������⣬�����޸ģ������Ժ󰴼���������ʱ���������޸ġ�******//
******          ������������⣬������������Ҽ�ѡ���½��������            ******//




[Script]
Function ��ȡָ�����ı�����(�ı�·��, ����)
    //���ӣ�Msgbox lib.�ļ�.��ȡָ�����ı�����("C:\Log.txt", 3)
    Dim fso,myfile,i,flag,tempp 
    flag = 1
    Set fso=CreateObject("scripting.FileSystemObject")
    If fso.FileExists(�ı�·��) then
        Set myfile = fso.openTextFile(�ı�·��,1,false)
    Else
        flag = 0
    End If
    For i=1 To ���� - 1
        myfile.SkipLine
        If Not myfile.AtEndOfLine Then
            tempp = myfile.Line
        End If
    Next
    If flag = 1 Then
        If Not myfile.AtEndOfLine Then
            ��ȡָ�����ı����� = myfile.ReadLine
        Else
            ��ȡָ�����ı����� = ""//�����
        End If
        myfile.close
    Else
        ��ȡָ�����ı����� = ""//�ļ������ڣ�
    End If
    Set fso = Nothing
End Function
Sub ɾ��ָ�����ı�����(�ı�·��, ����)
    //���ӣ�Call lib.�ļ�.ɾ��ָ�����ı�����("C:\log.txt",5)
    Dim ForReading ,ForWriting 
    ForReading = 1
    ForWriting = 2
    Dim objFSO,objFile,strLine,strNewFile
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    Set objFile = objFSO.OpenTextFile(�ı�·��,ForReading)
    Do Until objFile.AtEndOfStream
        strLine = objFile.Readline       
        If ���� = objFile.Line-1 or ���� = 0 then 
            strNewFile = strNewFile 
        Else
            strNewFile = strNewFile & strLine & vbcrlf
        End If
    Loop
    objFile.Close
    Set objFile = objFSO.OpenTextFile(�ı�·��,ForWriting)
    objFile.Write strNewFile
    objFile.Close
    Set objFSO = Nothing
End Sub
Sub �滻ָ�����ı�����(�ı�·��, �ı�����, ����)
    //���ӣ�Call lib.�ļ�.�滻ָ�����ı�����("C:\log.txt","�ı�����",5)
    Dim ForReading ,ForWriting 
    ForReading = 1
    ForWriting = 2
    Dim objFSO,objFile,strLine,strNewFile
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    Set objFile = objFSO.OpenTextFile(�ı�·��,ForReading)
    Do Until objFile.AtEndOfStream
        strLine = objFile.Readline  
        If ���� = objFile.Line-1 or ���� = 0 then
            strNewFile = strNewFile & �ı����� & vbcrlf
        Else
            strNewFile = strNewFile & strLine & vbcrlf
        End If
    Loop
    objFile.Close
    Set objFile = objFSO.OpenTextFile(�ı�·��,ForWriting)
    objFile.Write strNewFile
    objFile.Close
    Set objFSO = Nothing
End Sub
Sub �����ı����ݵ�ָ����(�ı�·��, �ı�����, ����)
    //���ӣ�Call lib.�ļ�.�����ı����ݵ�ָ����("C:\log.txt","�ı�����",5)
    Dim ForReading ,ForWriting 
    ForReading = 1
    ForWriting = 2
    Dim objFSO,objFile,strLine,strNewFile
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    Set objFile = objFSO.OpenTextFile(�ı�·��,ForReading)
    Do Until objFile.AtEndOfStream
        strLine = objFile.Readline       
        strNewFile = strNewFile & strLine & vbcrlf
        If ���� = objFile.Line-1 or ���� = 0 then
            strNewFile = strNewFile & �ı����� & vbcrlf
        End If
    Loop
    objFile.Close
    Set objFile = objFSO.OpenTextFile(�ı�·��,ForWriting)
    objFile.Write strNewFile
    objFile.Close
    Set objFSO = Nothing
End Sub
Function ����ָ��Ŀ¼�������ļ���(�ļ���·��)
    //ע�⣺���ص�������������洢��ÿһ���ļ�����
    //���ӣ����� = lib.�ļ�.����ָ��Ŀ¼�������ļ���("C:\")
    //      For i=0 to UBound(����)-1
    //          TracePrint ����(i)
    //      Next
    Dim �ļ���,fso,folder,f,files
    �ļ��� = ""
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set folder = fso.getfolder(�ļ���·��)
    Set files = folder.files
    For Each f In files
        �ļ��� = �ļ��� & f.name & "|"
    Next
    Set fso = Nothing
    //����ָ��Ŀ¼�������ļ��� = �ļ���
    ����ָ��Ŀ¼�������ļ��� = Split(�ļ���, "|")
End Function
Function ����ָ��Ŀ¼�������ļ�����(�ļ���·��)
    //ע�⣺���ص�������������洢��ÿһ���ļ�������
    //���ӣ����� = lib.�ļ�.����ָ��Ŀ¼�������ļ�����("C:\")
    //      For i=0 to UBound(����)-1
    //          TracePrint ����(i)
    //      Next
    Dim �ļ�����,fso,folder,f,files
    �ļ����� = ""
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set folder = fso.getfolder(�ļ���·��)
    Set files = folder.SubFolders
    For Each f In files
        �ļ����� = �ļ����� & f.name & "|"
    Next
    Set fso = Nothing
    //����ָ��Ŀ¼�������ļ����� = �ļ�����
    ����ָ��Ŀ¼�������ļ����� = Split(�ļ�����, "|")
End Function
Function �ж��ļ����Ƿ����(�ļ���·��)
    //���ӣ�Msgbox lib.�ļ�.�ж��ļ����Ƿ����("c:\WINDOWS")
    Dim fso 
    Set fso = CreateObject("Scripting.FileSystemObject")
    �ж��ļ����Ƿ���� = fso.FolderExists(�ļ���·��)
    Set fso = Nothing
End Function



//������һֻ��
//���ڣ�2009.12.22
//�޸ģ�2014.03.10


