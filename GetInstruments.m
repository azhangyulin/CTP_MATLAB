function GetInstruments(instrument)
%QRYINSTRUMENTS ��ѯ�������н��׺�Լ
global td
if(isempty(td))
    error('CTP not connect');
end
td.ReqQryInstrument(instrument);
end

