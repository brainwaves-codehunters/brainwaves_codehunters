function varargout = PERSON(varargin)
% PERSON MATLAB code for PERSON.fig
%      PERSON, by itself, creates a new PERSON or raises the existing
%      singleton*.
%
%      H = PERSON returns the handle to a new PERSON or the handle to
%      the existing singleton*.
%
%      PERSON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PERSON.M with the given input arguments.
%
%      PERSON('Property','Value',...) creates a new PERSON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PERSON_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PERSON_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PERSON

% Last Modified by GUIDE v2.5 28-Apr-2013 20:10:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PERSON_OpeningFcn, ...
                   'gui_OutputFcn',  @PERSON_OutputFcn, ...
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


% --- Executes just before PERSON is made visible.
function PERSON_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PERSON (see VARARGIN)

% Choose default command line output for PERSON
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PERSON wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PERSON_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function name_Callback(hObject, eventdata, handles)
% hObject    handle to name (see GCBO)
%global name;
name = get(hObject,'string');
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of name as text
%        str2double(get(hObject,'String')) returns contents of name as a double
%global hGUI; 
%hGUI = person('UserData',name);
%assignin ('base','name',name);
setappdata(0,'name',name);

% --- Executes during object creation, after setting all properties.
function name_CreateFcn(hObject, eventdata, handles)
% hObject    handle to name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in female.
function female_Callback(hObject, eventdata, handles)
% hObject    handle to female (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of female


% --- Executes on button press in female.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to female (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of female



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in lbrowse.
function lbrowse_Callback(hObject, eventdata, handles)
%global path1;
[fil pat]=uigetfile('*.*','selector');
path1=strcat(pat,fil);
set(handles.edit2,'string',path1);
set(handles.lbrowse,'UserData',path1);
%assignin('base','path1',path1);
%new1(path1);
%filwrite;

% hObject    handle to lbrowse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in proceed.
function proceed_Callback(hObject, eventdata, handles)
% handles.path1=path;
% guidata(hObject,handles);
path1=get(handles.lbrowse,'UserData');
setappdata(0,'pat',path1);
setappdata(0,'fil','left.txt');
new1;
filwrite;
path2=get(handles.rbrowse,'UserData');
setappdata(0,'pat',path2);
%fil=get(handles.rbrowse,'UserData');
setappdata(0,'fil','right.txt');
new1;
filwrite;
writeinfo;
suc;

% hObject    handle to proceed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected object is changed in female.
function gender_SelectionChangeFcn(hObject, eventdata, handles)
%global sex;
sex='m';
if hObject == handles.male
   sex='m';
else
    sex='f';
end
%assignin ('base','gen',sex);
setappdata(0,'gen',sex);
% hObject    handle to the selected object in female 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function gender_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gender (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rbrowse.
function rbrowse_Callback(hObject, eventdata, handles)
% hObject    handle to rbrowse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%chk(get(hGUI,'UserData'));
%name1
% ne = get(hGUI, 'UserData');
% set(handles.edit2,'string',ne);
[fil pat]=uigetfile('*.*','selector');
path2=strcat(pat,fil);
set(handles.edit3,'string',path2);
set(handles.rbrowse,'UserData',path2);

%assignin('base','path2',path2);


% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
admi;
close(handles.figure1);


% --- Executes on button press in new.
function new_Callback(hObject, eventdata, handles)
% hObject    handle to new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.name,'string',' ');
set(handles.edit2,'string',' ');
set(handles.edit3,'string',' ');
