function CancelOrder(pOrder)
%CANCELORDER ����
global td;
if(~exist('td', 'var'))
    error('δ���������');
end
td.CancelOrder(pOrder);

end

