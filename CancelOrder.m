function CancelOrder(pOrder)
%CANCELORDER 撤单
global td hCTPGUI;
if(isempty(td))
    if(isempty(hCTPGUI))
        set(hCTPGUI.FailText, 'String', '未连接行情端');
    else
        warning('未连接行情端');
    end
    
else
    td.CancelOrder(pOrder);
    ind = strcmp(orderRef, char(pOrder.OrderRef));
    orderRef{ind} = [];
    orders{ind} = [];
end

end

