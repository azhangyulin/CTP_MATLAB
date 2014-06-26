function OnRtnDepthMarketData(sender,arg)
% 行情回报

% 打印行情
% disp(arg.pDepthMarketData.TradingDay);
% disp(arg.pDepthMarketData.InstrumentID);
% disp(arg.pDepthMarketData.LastPrice);
    global hCTPGUI
    if(isempty(hCTPGUI))
        disp(arg.pDepthMarketData.LastPrice);
    else
        set(hCTPGUI.PriceText, 'String', arg.pDepthMarketData.LastPrice);
    end
end
