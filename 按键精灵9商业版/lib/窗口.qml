[Comment]
������ǰ�������8.0���Ƴ���ȫ�¹���
�����԰��Լ����õĺ������ӳ���д����������úܶ���ű�ȥ����
����������������ö���ű�����һ������޸�һ���͵����޸Ķദ
Ŀǰ����⹦�ܻ��ڲ��Ե��У����κν�������ڰ���������̳�������ַ��http://bbs.ajjl.cn

******ע�⣡���ǹٷ��ṩ������⣬�����޸ģ������Ժ󰴼���������ʱ���������޸ġ�******//
******          ������������⣬������������Ҽ�ѡ���½��������            ******//


[General]
MacroID=45322cb5-c49c-4570-97d6-48c53e5170ed

[Script]
Function �õ�����ڴ�����λ��()
    //���ӣ�MsgBox lib.����.�õ�����ڴ�����λ��()
    Dim ����¾��,x,y,����
    ����¾�� = Plugin.Window.MousePoint()
    Call GetCursorPos(x,y)
    ���� = Plugin.Window.GetClientRect(����¾��)
    Dim MyArray
    MyArray = Split(����, "|")
    �õ�����ڴ�����λ�� = x - Clng(MyArray(0)) & "|" & y - Clng(MyArray(1)) 
End Function

Function �����Ի���(��ʾ����,�ȴ�ʱ��,��ʾ����,��ʾ��ʽ)
    //���ӣ�MsgBox "��ѡ����ǣ�" & lib.����.�����Ի���("��ʾ����",0,"��ʾ����",68)
    //��ϸʹ�òο����http://bbs.vrbrothers.com/viewthread.php?tid=7662
    Dim obj
    Set obj = CreateObject("WScript.Shell")
    �����Ի���=Cint(obj.Popup(��ʾ����,�ȴ�ʱ��,��ʾ����,��ʾ��ʽ))
    Set obj = Nothing
End Function





//������һֻ��
//���ڣ�2009.12.22
//�޸ģ�2010.01.19


