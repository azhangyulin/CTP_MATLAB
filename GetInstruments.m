function GetInstruments(instrument)
%QRYINSTRUMENTS ��ѯ�������н��׺�Լ
global td hCTPGUI
if(isempty(td))
    if(isempty(hCTPGUI))
        disp('δ���ӽ��׶�');
    else
        set(hCTPGUI.FailText, 'String', 'δ��ȡ���׶�');
    end
else
    td.ReqQryInstrument(instrument);
    if(isempty(hCTPGUI))
        disp('��ȡ��Լ�ɹ�');
    else
        set(hCTPGUI.SuccessText, 'String', '��ȡ��Լ�ɹ�');
    end
    
end

end

