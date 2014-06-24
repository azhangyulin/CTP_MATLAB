function Unsubscribe(instrument)
% UNSUBSCRIBE 退订行情
% USAGE:
%       UNSUBSCRIBE('all');
%           订阅所有合约行情
%       UNSUBSCRIBE('instrument1, instrument2, ');
%           订阅指定合约行情，用逗号或者分号隔开
    global md instruments;
    if(isempty(md))
        error('CTP md not connect');
    end
    
    
    if(strcmpi(instrument, 'all'))
        if(isempty(instruments))
            error('未获取所有合约');
        end
        cellfun(@(x) md.Unsubscribe(char(x.InstrumentID)), instruments, 'UniformOutput', false);
    else
        md.Unsubscribe(instrument);
    end

end

