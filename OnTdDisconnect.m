function OnTdDisconnect(sender,arg)
% ������߻ر�
global hCTPGUI;
if(isempty(hCTPGUI))
    disp('���׶��ж�');
else
    set(hCTPGUI.TdConnection, 'String', '���׶����ж�');
end
disp(arg.pRspInfo.ErrorMsg);

end
