function Unsubscribe(instrument)
% UNSUBSCRIBE �˶�����
% USAGE:
%       UNSUBSCRIBE('all');
%           �������к�Լ����
%       UNSUBSCRIBE('instrument1, instrument2, ');
%           ����ָ����Լ���飬�ö��Ż��߷ֺŸ���
    global md instruments hCTPGUI;
    if(isempty(md))
        if(isempty(hCTPGUI))
            warning('δ���ӵ�CTP');
        else
            set(hCTPGUI.FailText, 'String', 'δ���ӵ�CTP');
        end
    else
        if(strcmpi(instrument, 'all'))
            if(isempty(instruments))
                if(isempty(hCTPGUI))
                    warning('δ��ȡ���к�Լ');
                else
                    set(hCTPGUI.FailText, 'String', 'δ��ȡ���к�Լ');
                end
            else
                 cellfun(@(x) md.Unsubscribe(char(x.InstrumentID)), instruments, 'UniformOutput', false);
            end
        else
            md.Unsubscribe(instrument);
        end
    end
end

