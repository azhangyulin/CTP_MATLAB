function CancelOrder(pOrder)
%CANCELORDER ����
global td hCTPGUI;
if(isempty(td))
    if(isempty(hCTPGUI))
        set(hCTPGUI.FailText, 'String', 'δ���������');
    else
        warning('δ���������');
    end
    
else
    td.CancelOrder(pOrder);
    ind = strcmp(orderRef, char(pOrder.OrderRef));
    orderRef{ind} = [];
    orders{ind} = [];
end

end

