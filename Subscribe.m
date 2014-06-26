function Subscribe(instrument)
% SUBSCRIBE ��������
% USAGE:
%       SUBSCRIBE('all');
%           �������к�Լ����
%       SUBSCRIBE('instrument1, instrument2, ');
%           ����ָ����Լ���飬�ö��Ż��߷ֺŸ���
    global md instruments hCTPGUI;
    if(~IsConnect)
        warning('δ���ӵ�CTP');
    else
        if(strcmpi(instrument, 'all'))
            if(isempty(instruments))
                if(IsGUI)
                    set(hCTPGUI.FailText, 'String', 'δ��ȡ���к�Լ');
                else
                    warning('δ��ȡ���к�Լ');
                end
            else
                cellfun(@(x) md.Subscribe(char(x.InstrumentID)), instruments, 'UniformOutput', false);
                if(~IsGUI)
                    set(hCTPGUI.SuccessText, 'String', '������������ɹ�');
                else
                    disp('������������ɹ�');
                end
            end
            
        else
            md.Subscribe(instrument);
            if(IsGUI)
                set(hCTPGUI.SuccessText, 'String', '��������ɹ�');
            else
                disp('��������ɹ�');
            end
        end
    end

end

