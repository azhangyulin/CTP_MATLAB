function OnRtnOrder(sender,arg)
% 委托回报

% 打印内容
% disp(arg)
    global orders orderNum orderRef;
    if(isempty(orderRef(strcmp(orderRef, char(arg.pOrder.OrderRef) ) ) ) )
        orders{length(orders) + 1, 1} = arg.pOrder;
        orderRef{length(orderRef) + 1, 1} = char(arg.pOrder.OrderRef);
        orderNum = orderNum + 1;
    end

end
