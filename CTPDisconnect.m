
global md td hCTPGUI;
if(~IsConnect)
    if(~IsGUI)
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

