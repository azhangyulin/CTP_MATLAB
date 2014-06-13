function OnMdDisconnect(sender,arg)
% 行情断线回报
disp('行情端中断');
disp(arg.pRspInfo.ErrorMsg)

end
