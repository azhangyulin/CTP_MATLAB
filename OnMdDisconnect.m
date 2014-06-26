function OnMdDisconnect(sender,arg)
% 行情断线回报
global hCTPGUI;
    if(IsGUI)
        set(hCTPGUI.MdConnection, 'String', '行情段已中断');
    else
        disp('行情端已中断');
    end

end
