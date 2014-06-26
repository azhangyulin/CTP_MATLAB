function OnTdConnect(sender,arg)
% 交易连接回报

% 交易状态到E_confirmed就表示登录并确认成功
global hCTPGUI;
if arg.result == QuantBox.CSharp2CTP.ConnectionStatus.E_confirmed
%     disp('交易端已连接');
    if(isempty(hCTPGUI))
        disp('交易端已连接');
    else
        set(hCTPGUI.TdConnection, 'String', '交易端已连接');
    end
end
