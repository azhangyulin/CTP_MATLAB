function QryPosition(instrument)
if(strcmpi(instrument, 'all'))
    instrument = '';
end
global td hCTPGUI
if(IsConnect)
    
    td.ReqQryInvestorPosition(instrument);
    if(IsGUI)
        set(hCTPGUI.SuccessText, 'String', '��ѯͶ���ֲֳ߳ɹ�');
    else
        disp('��ѯͶ���ֲֳ߳ɹ�');
    end
else
    if(IsGUI)
        set(hCTPGUI.FailText, 'String', 'δ���ӵ�CTP');
    else
        warning('δ���ӵ�CTP');
    end
end


end