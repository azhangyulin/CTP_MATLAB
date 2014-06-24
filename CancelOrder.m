function CancelOrder(pOrder)
%CANCELORDER 撤单
global td;
if(isempty(td))
    error('未连接行情端');
end
td.CancelOrder(pOrder);
ind = strcmp(orderRef, char(pOrder.OrderRef));
orderRef{ind} = [];
orders{ind} = [];
end

