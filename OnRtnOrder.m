function OnRtnOrder(sender,arg)
% ί�лر�

% ��ӡ����
% disp(arg)
    global orders orderNum orderRef;

    if(isempty(strcmp(orderRef, char(arg.pOrder.OrderRef))))
        orders{orderNum + 1, 1} = arg.pOrder;
        orderRef{orderNum + 1, 1} = char(arg.pOrder.OrderRef);
        orderNum = orderNum + 1;
    end

end
