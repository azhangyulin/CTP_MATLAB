function [md, td] = CTPConnect(Inifile, servername)
%CTPCONNECT is used to connect CTP server function.
%   Usage: 
%       [MD, TD] = CTPCONNECT(inifile, serverName); 
%           Connect the CTP server: Trader and Md
%   Example:
%       [md, td] = CTPConnect('test.ini', 'simServer');
%   Warning:
%       The inifile's server section must contain all information
%       Like this: tdserver, mdserver, brokerid, investorid, password, path

% import C# DLL
%cd(cdpath);
NET.addAssembly(fullfile(cd,'QuantBox.CSharp2CTP.dll'));
import QuantBox.CSharp2CTP.*;


% get data
path = inifile(Inifile, 'read', {servername, '', 'path'});
tdserver = inifile(Inifile, 'read', {servername, '', 'tdserver'});
mdserver = inifile(Inifile, 'read', {servername, '', 'mdserver'});
brokerid = inifile(Inifile, 'read', {servername, '', 'brokerid'});
investorid = inifile(Inifile, 'read', {servername, '', 'investorid'});
password = inifile(Inifile, 'read', {servername, '', 'password'});
path = path{1,1};
tdserver = tdserver{1,1};
mdserver = mdserver{1,1};
brokerid = brokerid{1,1};
investorid = investorid{1,1};
password = password{1,1};

% connect md
md =  MdApiWrapper();
addlistener(md,'OnConnect',@OnMdConnect);
addlistener(md,'OnDisconnect',@OnMdDisconnect);
addlistener(md,'OnRtnDepthMarketData',@OnRtnDepthMarketData);
md.Connect([cd, path], mdserver, brokerid, investorid, password);
% connect td
td = TraderApiWrapper();
addlistener(td,'OnConnect',@OnTdConnect);
addlistener(td,'OnDisconnect',@OnTdDisconnect);
addlistener(td,'OnRtnOrder',@OnRtnOrder);
addlistener(td, 'OnRspQryInstrument', @OnRspQryInstrument);
td.Connect([cd, path], tdserver, brokerid, investorid, password, THOST_TE_RESUME_TYPE.THOST_TERT_QUICK, '', '');