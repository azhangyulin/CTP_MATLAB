function GetInstruments(instrument)
%QRYINSTRUMENTS 查询当日所有交易合约
global td
if(isempty(td))
    error('CTP not connect');
end
td.ReqQryInstrument(instrument);
end

