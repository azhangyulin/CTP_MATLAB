
global md td hCTPGUI;
if(isempty(md) || isempty(td))
    if(isempty(hCTPGUI))
        warning('δ���ӵ�CTP');
    else
        set(hCTPGUI.FailText, 'String', 'δ���ӵ�CTP');
    end
    
else
    md.Disconnect;
    td.Disconnect;
    clear global;
    disp('�Ͽ����ӳɹ�');
end

