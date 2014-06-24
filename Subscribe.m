function Subscribe(instrument)
% SUBSCRIBE 订阅行情
% USAGE:
%       SUBSCRIBE('all');
%           订阅所有合约行情
%       SUBSCRIBE('instrument1, instrument2, ');
%           订阅指定合约行情，用逗号或者分号隔开
    global md instruments;
    if(isempty(md))
        error('CTP md not connect');
    end
    
    
    if(strcmpi(instrument, 'all'))
        if(isempty(instruments))
            error('未获取所有合约');
        end
        cellfun(@(x) md.Subscribe(char(x.InstrumentID)), instruments, 'UniformOutput', false);
    else
        md.Subscribe(instrument);
    end
    

end

