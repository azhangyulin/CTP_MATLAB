
function OnRspQryInstrument( sender, arg)
%查询合约回应
global instruments
% instruments{length(instruments) + 1, 1} = char(arg.pInstrument.InstrumentID);
instruments{length(instruments) + 1, 1} = arg.pInstrument;
end

