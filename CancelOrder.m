function CancelOrder(pOrder)
%CANCELORDER ����
global td;
if(isempty(td))
    error('δ���������');
end
td.CancelOrder(pOrder);
ind = strcmp(orderRef, char(pOrder.OrderRef));
orderRef{ind} = [];
orders{ind} = [];
end

