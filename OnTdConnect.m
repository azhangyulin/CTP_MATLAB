function OnTdConnect(sender,arg)
% �������ӻر�

% ����״̬��E_confirmed�ͱ�ʾ��¼��ȷ�ϳɹ�
global hCTPGUI;
if arg.result == QuantBox.CSharp2CTP.ConnectionStatus.E_confirmed
%     disp('���׶�������');
    if(isempty(hCTPGUI))
        disp('���׶�������');
    else
        set(hCTPGUI.TdConnection, 'String', '���׶�������');
    end
end
