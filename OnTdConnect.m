function OnTdConnect(sender,arg)
% �������ӻر�

% ����״̬��E_confirmed�ͱ�ʾ��¼��ȷ�ϳɹ�
global hCTPGUI;
if arg.result == QuantBox.CSharp2CTP.ConnectionStatus.E_confirmed
%     disp('���׶�������');
    if(IsGUI)
       
        set(hCTPGUI.TdConnection, 'String', '���׶�������');
    else
        disp('���׶�������');
    end
end
