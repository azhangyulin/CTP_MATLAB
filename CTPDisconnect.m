
global md td hCTPGUI;
if(~IsConnect)
    if(~IsGUI)
        warning('未连接到CTP');
    else
        set(hCTPGUI.FailText, 'String', '未连接到CTP');
    end
    
else
    md.Disconnect;
    td.Disconnect;
    clear global;
    disp('断开连接成功');
end

