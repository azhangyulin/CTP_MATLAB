function GetInstruments(instrument)
%QRYINSTRUMENTS ��ѯ�������н��׺�Լ
global td hCTPGUI
if(~IsConnect)
    
    td.ReqQryInstrument(instrument);
    if(IsGUI)
        set(hCTPGUI.SuccessText, 'String', '��ȡ��Լ�ɹ�');
    else
        disp('��ȡ��Լ�ɹ�');
    end
else
    if(IsGUI)
        set(hCTPGUI.FailText, 'String', 'δ��ȡ���׶�');
    else
        disp('δ���ӽ��׶�');
    end
end

end

