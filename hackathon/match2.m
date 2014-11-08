function varargout = match(varargin)
% MATCH MATLAB code for match.fig
%      MATCH, by itself, creates a new MATCH or raises the existing
%      singleton*.
%
%      H = MATCH returns the handle to a new MATCH or the handle to
%      the existing singleton*.
%
%      MATCH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATCH.M with the given input arguments.
%
%      MATCH('Property','Value',...) creates a new MATCH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before match_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to match_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help match

% Last Modified by GUIDE v2.5 02-May-2013 19:03:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @match_OpeningFcn, ...
                   'gui_OutputFcn',  @match_OutputFcn, ...
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


% --- Executes just before match is made visible.
function match_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to match (see VARARGIN)

% Choose default command line output for match
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes match wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = match_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
row=getappdata(0,'row');
%row=1;
fid = fopen('personinfo.txt');
det = textscan(fid,'%s %s');
fclose(fid);
a=char(det{1,1});
%b=char(det{1,2});
%set(handles.axes1,'UserData',a(row,:));
global str;
str =a(row,:);
b=char(det{1,2}); 
if(b(row,:)=='m')
     %set(handles.op,'string',a(row,:));
      axes(hObject)
     imshow('male.jpg');
else
    %set(handles.op,'string',a(row,:));
    axes(hObject)
    imshow('female.jpg');
end

         

% Hint: place code in OpeningFcn to populate axes1


% --- Executes during object creation, after setting all properties.






function op_Callback(hObject, eventdata, handles)
% hObject    handle to op (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of op as text
%        str2double(get(hObject,'String')) returns contents of op as a double


% --- Executes during object creation, after setting all properties.
function op_CreateFcn(hObject, eventdata, handles)
% hObject    handle to op (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
   % set(hObject,'string',opopo); 
end



% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
users;
close(handles.figure1);


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global str;
% Hint: place code in OpeningFcn to populate axes
text(0.5,0.5,0.5,str)
axis off;
%clearvars str;


function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
url = 'http://localhost:8080/salman/index.html';
web(url);
