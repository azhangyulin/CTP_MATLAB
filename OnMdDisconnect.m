function OnMdDisconnect(sender,arg)
% ������߻ر�
global hCTPGUI;
    if(isempty(hCTPGUI))
        disp('��������ж�');
    else
        set(hCTPGUI.MdConnection, 'String', '��������ж�');
    end

end
