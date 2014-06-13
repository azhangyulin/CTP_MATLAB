function OnMdConnect(sender,arg)
% 行情连接回报
if arg.result == QuantBox.CSharp2CTP.ConnectionStatus.E_logined

    disp('行情已连接');
end

end
