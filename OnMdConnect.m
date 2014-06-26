function OnMdConnect(sender,arg)
% 行情连接回报
global hCTPGUI;
if arg.result == QuantBox.CSharp2CTP.ConnectionStatus.E_logined
    
    if(IsGUI)
        
        set(hCTPGUI.MdConnection, 'String', '行情端已连接');
    else
        disp('行情端已连接');
    end
end

end
