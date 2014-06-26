function GetInstruments(instrument)
%QRYINSTRUMENTS 查询当日所有交易合约
global td hCTPGUI
if(isempty(td))
    if(isempty(hCTPGUI))
        disp('未连接交易端');
    else
        set(hCTPGUI.FailText, 'String', '未获取交易端');
    end
else
    td.ReqQryInstrument(instrument);
    if(isempty(hCTPGUI))
        disp('获取合约成功');
    else
        set(hCTPGUI.SuccessText, 'String', '获取合约成功');
    end
    
end

end

