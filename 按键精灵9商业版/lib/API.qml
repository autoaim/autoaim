[General]
SyntaxVersion=2
MacroID=703c757b-2ea1-46a1-8191-3111913e3930
[Comment]
������ǰ�������8.0���Ƴ���ȫ�¹���
�����԰��Լ����õĺ������ӳ���д����������úܶ���ű�ȥ����
����������������ö���ű�����һ������޸�һ���͵����޸Ķദ
Ŀǰ����⹦�ܻ��ڲ��Ե��У����κν�������ڰ���������̳�������ַ��http://bbs.ajjl.cn

******ע�⣡���ǹٷ��ṩ������⣬�����޸ģ������Ժ󰴼���������ʱ���������޸ġ�******//
******          ������������⣬������������Ҽ�ѡ���½��������            ******//



[Script]
//API���ã����ԣ���һ����ǿ��Ĺ��ܣ����Է����ʹ��ϵͳ�Դ���API��ǿ�ű����ܡ�
//��ͬʱAPI��������һ�������õĹ��ܣ�ֻ����ϤAPI�����ߣ�һ���ǳ���Ա���������������úá�
//��ˣ����������API���ù��ܵ�ʹ��̬��Ӧ���ǣ�
//1��������API���ù��ܰ�װΪ��������������ʹ�á�
//2�������κ�����API���ù��ܿ���д�ڴ桢�޸����ݷ�����޸���Ϸ�ͻ������ݵȿ����ַ�������֪ʶ��Ȩ�Ĺ��ܡ�
//3������һЩ�����API����ʱ�޷�֧�ֵģ������ò���������ֲ�API�Ĳ��㡣

Private Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
Private Declare Function SetForegroundWindow Lib "user32" (ByVal hwnd As Long) As Long
Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long) As Long
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Private Declare Function SetLayeredWindowAttributes Lib "user32" (ByVal hwnd As Long, ByVal crKey As Long, ByVal bAlpha As Byte, ByVal dwFlags As Long) As Long
Private Declare Function GetDesktopWindow Lib "user32" () As Long
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal Hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Private Declare Function ShowWindow Lib "user32.dll" (ByVal hwnd As Long, ByVal nCmdShow As Long) As Long

Function ���Ҵ��ھ��(��������,���ڱ���)
    //���ӣ�MsgBox lib.API.���Ҵ��ھ��("notepad",0)
    Dim sClass, sTitle
    If Cstr(��������) = "0" Then
        ���Ҵ��ھ�� = FindWindow(vbNullString, Cstr(���ڱ���))
    ElseIf Cstr(���ڱ���) = "0" Then
        ���Ҵ��ھ�� = FindWindow(Cstr(��������), vbNullString)
    Else
        ���Ҵ��ھ�� = FindWindow(Cstr(��������), Cstr(���ڱ���))
    End If
End Function
Sub ����ڲ���ǰ(���ھ��)
    //���ھ�� = lib.API.���Ҵ��ھ��("notepad",0)
    //���ӣ�Call lib.API.����ڲ���ǰ(���ھ��)
    Dim SW_SHOWNORMAL
    SW_SHOWNORMAL = 1
    If ���ھ�� <> 0 Then 
        Call ShowWindow(���ھ��, SW_SHOWNORMAL)
        Call SetForegroundWindow(���ھ��)
    End If
End Sub
Sub ���ô���͸����(���ھ��, ͸����)
    //͸���ȣ�0~255
    //���ھ�� = lib.API.���Ҵ��ھ��("notepad",0)
    //���ӣ�Call lib.API.���ô���͸����(���ھ��,100)
    Dim GWL_EXSTYLE, LWA_ALPHA, WS_EX_LAYERED 
    GWL_EXSTYLE = (-20)
    LWA_ALPHA = &H2
    WS_EX_LAYERED = &H80000
    Dim Rt
    If ���ھ�� <> 0 And ͸����>=0 And ͸����<=255 Then
        Rt = GetWindowLong(���ھ��, GWL_EXSTYLE)
        Rt = Rt Or WS_EX_LAYERED
        Call SetWindowLong(���ھ��, GWL_EXSTYLE, Rt)
        Call SetLayeredWindowAttributes(���ھ��, 0, ͸����, LWA_ALPHA)
    End If
End Sub
Sub ���ô�����괩͸(���ھ��)
    //���ھ�� = lib.API.���Ҵ��ھ��("notepad",0)
    //���ӣ�Call lib.API.���ô�����괩͸(���ھ��)
    Dim GWL_EXSTYLE, WS_EX_TRANSPARENT, WS_EX_LAYERED 
    GWL_EXSTYLE = (-20)
    WS_EX_TRANSPARENT = &H20
    WS_EX_LAYERED = &H80000
    Dim rtn
    If ���ھ�� <> 0 Then
        rtn = GetWindowLong(���ھ��, GWL_EXSTYLE)
        rtn = rtn Or WS_EX_LAYERED Or WS_EX_TRANSPARENT
        SetWindowLong ���ھ��, GWL_EXSTYLE, rtn
    End If
End Sub
Sub ȡ����������(���ھ��, ģʽ)
    //ģʽ��0(һ�㴰��)~1(UpdateLayeredWindow������)
    //���ھ�� = lib.API.���Ҵ��ھ��("notepad",0)
    //���ӣ�Call lib.API.ȡ����������(���ھ��,0)
    Dim GWL_EXSTYLE, WS_EX_LAYERED 
    GWL_EXSTYLE = (-20) 
    WS_EX_LAYERED = &H80000
    If ���ھ�� <> 0 Then
        If ģʽ = 0 then
            'ȡ����괩͸(һ�㴰��)  
            SetWindowLong ���ھ��, GWL_EXSTYLE, 0
        Else 
            'ȡ����괩͸(UpdateLayeredWindow������)  
            SetWindowLong ���ھ��, GWL_EXSTYLE, WS_EX_LAYERED
        End If
    End If
End Sub
Sub ���г���(����·��)
    //���ӣ�Call Lib.API.���г���("E:\������Ϸ\S������6\GLSGC.exe")
    Dim P, I, DirPath, ExeName
    P = Split(����·��, "\")
    For I = 0 To UBound(P) - 1
        DirPath = DirPath & P(I) & "\"
    Next
    ExeName = P(UBound(P))
    ShellExecute GetDesktopWindow, "open", ExeName, vbNullString, DirPath, 5
End Sub







//������һֻ��
//���ڣ�2010.11.10
//�޸ģ�2011.06.18
