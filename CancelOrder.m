function CancelOrder(pOrder)
%CANCELORDER 撤单
global td;
if(~exist('td', 'var'))
    error('未连接行情端');
end
td.CancelOrder(pOrder);

end

