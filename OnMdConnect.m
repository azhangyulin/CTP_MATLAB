function OnMdConnect(sender,arg)
% �������ӻر�
global hCTPGUI;
if arg.result == QuantBox.CSharp2CTP.ConnectionStatus.E_logined
    
    if(IsGUI)
        
        set(hCTPGUI.MdConnection, 'String', '�����������');
    else
        disp('�����������');
    end
end

end
