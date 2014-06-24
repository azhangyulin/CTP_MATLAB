function Subscribe(instrument)
% SUBSCRIBE ��������
% USAGE:
%       SUBSCRIBE('all');
%           �������к�Լ����
%       SUBSCRIBE('instrument1, instrument2, ');
%           ����ָ����Լ���飬�ö��Ż��߷ֺŸ���
    global md instruments;
    if(isempty(md))
        error('CTP md not connect');
    end
    
    
    if(strcmpi(instrument, 'all'))
        if(isempty(instruments))
            error('δ��ȡ���к�Լ');
        end
        cellfun(@(x) md.Subscribe(char(x.InstrumentID)), instruments, 'UniformOutput', false);
    else
        md.Subscribe(instrument);
    end
    

end

