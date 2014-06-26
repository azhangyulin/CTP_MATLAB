function Unsubscribe(instrument)
% UNSUBSCRIBE 退订行情
% USAGE:
%       UNSUBSCRIBE('all');
%           订阅所有合约行情
%       UNSUBSCRIBE('instrument1, instrument2, ');
%           订阅指定合约行情，用逗号或者分号隔开
    global md instruments hCTPGUI;
    if(isempty(md))
        if(isempty(hCTPGUI))
            warning('未连接到CTP');
        else
            set(hCTPGUI.FailText, 'String', '未连接到CTP');
        end
    else
        if(strcmpi(instrument, 'all'))
            if(isempty(instruments))
                if(isempty(hCTPGUI))
                    warning('未获取所有合约');
                else
                    set(hCTPGUI.FailText, 'String', '未获取所有合约');
                end
            else
                 cellfun(@(x) md.Unsubscribe(char(x.InstrumentID)), instruments, 'UniformOutput', false);
            end
        else
            md.Unsubscribe(instrument);
        end
    end
end

