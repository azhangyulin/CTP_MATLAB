function Subscribe(instrument)
% SUBSCRIBE 订阅行情
% USAGE:
%       SUBSCRIBE('all');
%           订阅所有合约行情
%       SUBSCRIBE('instrument1, instrument2, ');
%           订阅指定合约行情，用逗号或者分号隔开
    global md instruments hCTPGUI;
    if(~IsConnect)
        warning('未连接到CTP');
    else
        if(strcmpi(instrument, 'all'))
            if(isempty(instruments))
                if(IsGUI)
                    set(hCTPGUI.FailText, 'String', '未获取所有合约');
                else
                    warning('未获取所有合约');
                end
            else
                cellfun(@(x) md.Subscribe(char(x.InstrumentID)), instruments, 'UniformOutput', false);
                if(~IsGUI)
                    set(hCTPGUI.SuccessText, 'String', '订阅所有行情成功');
                else
                    disp('订阅所有行情成功');
                end
            end
            
        else
            md.Subscribe(instrument);
            if(IsGUI)
                set(hCTPGUI.SuccessText, 'String', '订阅行情成功');
            else
                disp('订阅行情成功');
            end
        end
    end

end

