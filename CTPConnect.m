%CTPCONNECT is used to connect CTP server function.
%   Usage: 
%           CTPCONNECT;
%           Connect the CTP server then return md & td
%           You can edit this file's global name: Inifile & servername to
%           modify the connection infomation; and do not modify other code;
%   Warning:
%       The inifile's server section must contain all information
%       Like this: tdserver, mdserver, brokerid, investorid, password, path
%   Author: jebin @ 2014/6/10
%   Email: cepinlin@gmail.com

%You can change this
Inifile = 'server.ini';
servername = 'simServer';

global md td orders orderRef instruments;
instruments = {};
orders = {};
orderRef = {};

% import C# DLL
% cd(cdpath); 
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
md.Connect(fullfile(cd, path), mdserver, brokerid, investorid, password);
% connect td
td = TraderApiWrapper();
addlistener(td,'OnConnect',@OnTdConnect);
addlistener(td,'OnDisconnect',@OnTdDisconnect);
addlistener(td,'OnRtnOrder',@OnRtnOrder);
addlistener(td, 'OnRspQryInstrument', @OnRspQryInstrument);
addlistener(td, 'OnRspOrderInsert', @OnRspOrderInsert);
addlistener(td, 'OnRspOrderAction', @OnRspOrderAction);
% addlistener(td, 'OnErrRtnOrderInsert', @OnErrRtnOrderInsert);
td.Connect(fullfile(cd, path), tdserver, brokerid, investorid, password, THOST_TE_RESUME_TYPE.THOST_TERT_QUICK, '', '');

clear path tdserver mdserver brokerid investorid password ans Inifile servername