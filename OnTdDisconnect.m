function OnTdDisconnect(sender,arg)
% ������߻ر�
global hCTPGUI;
if(IsGUI)
    set(hCTPGUI.TdConnection, 'String', '���׶����ж�');
else
    disp('���׶��ж�');
end
disp(arg.pRspInfo.ErrorMsg);

end
