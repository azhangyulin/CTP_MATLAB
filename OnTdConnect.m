function OnTdConnect(sender,arg)
% �������ӻر�

% ����״̬��E_confirmed�ͱ�ʾ��¼��ȷ�ϳɹ�
if arg.result == QuantBox.CSharp2CTP.ConnectionStatus.E_confirmed
    disp('���׶�������');
    % �µ�
%     td.SendOrder('IF1401',... %��Լ
%         QuantBox.CSharp2CTP.TThostFtdcDirectionType.Buy,... %����
%         '0',... %��ƽ���
%         '1',... %Ͷ���ױ����
%         1,... %����
%         2250,... %�۸�
%         QuantBox.CSharp2CTP.TThostFtdcOrderPriceTypeType.LimitPrice,... %�۸�����
%         QuantBox.CSharp2CTP.TThostFtdcTimeConditionType.GFD,... %ʱ������
%         QuantBox.CSharp2CTP.TThostFtdcContingentConditionType.Immediately,... %��������
%         0,... % ֹ���
%         QuantBox.CSharp2CTP.TThostFtdcVolumeConditionType.AV); %�ɽ�������
end

end
