function OnRtnDepthMarketData(sender,arg)
% ����ر�

    global hCTPGUI
    if(IsGUI)
        set(hCTPGUI.PriceText, 'String', arg.pDepthMarketData.LastPrice);
        set(hCTPGUI.InstText, 'String', arg.pDepthMarketData.InstrumentID);
    else
        disp(arg.pDepthMarketData.InstrumentID);
        disp(arg.pDepthMarketData.LastPrice);
    end
end
