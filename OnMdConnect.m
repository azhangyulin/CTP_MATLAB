function OnMdConnect(sender,arg)
% �������ӻر�
global hCTPGUI;
if arg.result == QuantBox.CSharp2CTP.ConnectionStatus.E_logined
    
    if(isempty(hCTPGUI))
        disp('�����������');
    else
        set(hCTPGUI.MdConnection, 'String', '�����������');
    end
end

end
