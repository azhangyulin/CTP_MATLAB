function OnRtnDepthMarketData(sender,arg)
% ����ر�

% ��ӡ����
disp(arg.pDepthMarketData.TradingDay);
disp(arg.pDepthMarketData.InstrumentID);
disp(arg.pDepthMarketData.LastPrice);

end
