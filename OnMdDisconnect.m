function OnMdDisconnect(sender,arg)
% ������߻ر�
global hCTPGUI;
    if(IsGUI)
        set(hCTPGUI.MdConnection, 'String', '��������ж�');
    else
        disp('��������ж�');
    end

end
