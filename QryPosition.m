function QryPosition(instrument)
if(strcmpi(instrument, 'all'))
    instrument = '';
end
global td hCTPGUI
if(IsConnect)
    
    td.ReqQryInvestorPosition(instrument);
    if(IsGUI)
        set(hCTPGUI.SuccessText, 'String', '查询投资者持仓成功');
    else
        disp('查询投资者持仓成功');
    end
else
    if(IsGUI)
        set(hCTPGUI.FailText, 'String', '未连接到CTP');
    else
        warning('未连接到CTP');
    end
end


end