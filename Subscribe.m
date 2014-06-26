function Subscribe(instrument)
% SUBSCRIBE 订阅行情
% USAGE:
%       SUBSCRIBE('all');
%           订阅所有合约行情
%       SUBSCRIBE('instrument1, instrument2, ');
%           订阅指定合约行情，用逗号或者分号隔开
    global md instruments hCTPGUI;
    if(isempty(md))
        warning('未连接到CTP');
    else
        if(strcmpi(instrument, 'all'))
            if(isempty(instruments))
                if(isempty(hCTPGUI))
                    warning('未获取所有合约');
                else
                    set(hCTPGUI.FailText, 'String', '未获取所有合约');
                end
            end
            cellfun(@(x) md.Subscribe(char(x.InstrumentID)), instruments, 'UniformOutput', false);
        else
            md.Subscribe(instrument);
            if(~isempty(hCTPGUI))
                set(hCTPGUI.InstText, 'String', instrument);
            end
        end
    end
    
    
    
    

end

