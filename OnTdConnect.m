function OnTdConnect(sender,arg)
% �������ӻر�

% ����״̬��E_confirmed�ͱ�ʾ��¼��ȷ�ϳɹ�
if arg.result == QuantBox.CSharp2CTP.ConnectionStatus.E_confirmed
    disp('���׶�������');
end

end
