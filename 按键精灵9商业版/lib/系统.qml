[Comment]
������ǰ�������8.0���Ƴ���ȫ�¹���
�����԰��Լ����õĺ������ӳ���д����������úܶ���ű�ȥ����
����������������ö���ű�����һ������޸�һ���͵����޸Ķദ
Ŀǰ����⹦�ܻ��ڲ��Ե��У����κν�������ڰ���������̳�������ַ��http://bbs.ajjl.cn

******ע�⣡���ǹٷ��ṩ������⣬�����޸ģ������Ժ󰴼���������ʱ���������޸ġ�******//
******          ������������⣬������������Ҽ�ѡ���½��������            ******//



[General]
MacroID=a2f21d32-ba73-4078-ab71-8b1c505273bd
SyntaxVersion=2
Description=ϵͳ

[Script]
//��������д�������ӳ������
//д�걣�������һ������ϵ���Ҽ���ѡ��ˢ�¡�����


Sub ��������(ӳ������)
    //Call Lib.ϵͳ.��������("notepad.exe")
    Dim strComputer, objWMIService, colProcessList, objProcess
    strComputer = "."
    Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
    Set colProcessList = objWMIService.ExecQuery("Select * from Win32_Process Where Name = '" & ӳ������ & "'")
    For Each objProcess in colProcessList
        objProcess.Terminate
    Next
End Sub


//������һֻ��
//���ڣ�2010.10.07
//�޸ģ�2010.10.07