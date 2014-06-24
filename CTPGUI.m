function varargout = CTPGUI(varargin)
% CTPGUI MATLAB code for CTPGUI.fig
%      CTPGUI, by itself, creates a new CTPGUI or raises the existing
%      singleton*.
%
%      H = CTPGUI returns the handle to a new CTPGUI or the handle to
%      the existing singleton*.
%
%      CTPGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CTPGUI.M with the given input arguments.
%
%      CTPGUI('Property','Value',...) creates a new CTPGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CTPGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CTPGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CTPGUI

% Last Modified by GUIDE v2.5 24-Jun-2014 20:18:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CTPGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @CTPGUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before CTPGUI is made visible.
function CTPGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CTPGUI (see VARARGIN)

% Choose default command line output for CTPGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CTPGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CTPGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in CTPConnectButton.
function CTPConnectButton_Callback(hObject, eventdata, handles)
% hObject    handle to CTPConnectButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
CTPConnect;


% --- Executes on button press in CTPDisconnect.
function CTPDisconnect_Callback(hObject, eventdata, handles)
% hObject    handle to CTPDisconnect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
CTPDisconnect;


% --- Executes on button press in SubscribeButton.
function SubscribeButton_Callback(hObject, eventdata, handles)
% hObject    handle to SubscribeButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
inst = get(handles.InstEditor, 'String');
Subscribe(inst);


function InstEditor_Callback(hObject, eventdata, handles)
% hObject    handle to InstEditor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
inst = get(hObject, 'String');
disp(inst);
% Hints: get(hObject,'String') returns contents of InstEditor as text
%        str2double(get(hObject,'String')) returns contents of InstEditor as a double


% --- Executes during object creation, after setting all properties.
function InstEditor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InstEditor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in GetInstrumentsBotton.
function GetInstrumentsBotton_Callback(hObject, eventdata, handles)
% hObject    handle to GetInstrumentsBotton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
GetInstruments('');
