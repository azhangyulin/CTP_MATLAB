function OnTdDisconnect(sender,arg)
% 行情断线回报
global hCTPGUI;
if(isempty(hCTPGUI))
    disp('交易端中断');
else
    set(hCTPGUI.TdConnection, 'String', '交易端已中断');
end
disp(arg.pRspInfo.ErrorMsg);

end
