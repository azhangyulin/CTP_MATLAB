function Subscribe(instrument)
% SUBSCRIBE ��������
% USAGE:
%       SUBSCRIBE('all');
%           �������к�Լ����
%       SUBSCRIBE('instrument1, instrument2, ');
%           ����ָ����Լ���飬�ö��Ż��߷ֺŸ���
    global md instruments hCTPGUI;
    if(isempty(md))
        warning('δ���ӵ�CTP');
    else
        if(strcmpi(instrument, 'all'))
            if(isempty(instruments))
                if(isempty(hCTPGUI))
                    warning('δ��ȡ���к�Լ');
                else
                    set(hCTPGUI.FailText, 'String', 'δ��ȡ���к�Լ');
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

