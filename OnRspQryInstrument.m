
function OnRspQryInstrument( sender, arg)
%��ѯ��Լ��Ӧ
global instruments
% instruments{length(instruments) + 1, 1} = char(arg.pInstrument.InstrumentID);
instruments{length(instruments) + 1, 1} = arg.pInstrument;
end

