function OnTdDisconnect(sender,arg)
% 行情断线回报
disp('交易端中断');
disp(arg.pRspInfo.ErrorMsg);

end
