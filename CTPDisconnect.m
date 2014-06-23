if(~exist('md', 'var') || ~exist('td', 'var'))
    error('CTP not connect');
end
global md td;

md.Disconnect;
td.Disconnect;
clear md td orders orderNum orderRef;
clc;
