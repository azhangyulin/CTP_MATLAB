function OnRtnDepthMarketData(sender,arg)
% 行情回报

    global hCTPGUI
    if(IsGUI)
        set(hCTPGUI.PriceText, 'String', arg.pDepthMarketData.LastPrice);
        set(hCTPGUI.InstText, 'String', arg.pDepthMarketData.InstrumentID);
    else
        disp(arg.pDepthMarketData.InstrumentID);
        disp(arg.pDepthMarketData.LastPrice);
    end
end
