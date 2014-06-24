
global md td;
if(isempty(md) || isempty(td))
    error('CTP not connect');
end
md.Disconnect;
td.Disconnect;
clear global;
