function OnErrRtnOrderInsert(sender, arg)
%ONERRRTNORDERINSERT 报单错误回调
disp(arg.pRspInfo.ErrorMsg);
end

