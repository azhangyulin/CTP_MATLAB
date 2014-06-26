function GetInstruments(instrument)
%QRYINSTRUMENTS 查询当日所有交易合约
global td hCTPGUI
if(~IsConnect)
    
    td.ReqQryInstrument(instrument);
    if(IsGUI)
        set(hCTPGUI.SuccessText, 'String', '获取合约成功');
    else
        disp('获取合约成功');
    end
else
    if(IsGUI)
        set(hCTPGUI.FailText, 'String', '未获取交易端');
    else
        disp('未连接交易端');
    end
end

end

