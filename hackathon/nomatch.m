function varargout = nomatch(varargin)
% NOMATCH MATLAB code for nomatch.fig
%      NOMATCH, by itself, creates a new NOMATCH or raises the existing
%      singleton*.
%
%      H = NOMATCH returns the handle to a new NOMATCH or the handle to
%      the existing singleton*.
%
%      NOMATCH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NOMATCH.M with the given input arguments.
%
%      NOMATCH('Property','Value',...) creates a new NOMATCH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before nomatch_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to nomatch_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help nomatch

% Last Modified by GUIDE v2.5 09-Nov-2014 01:32:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @nomatch_OpeningFcn, ...
                   'gui_OutputFcn',  @nomatch_OutputFcn, ...
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


% --- Executes just before nomatch is made visible.
function nomatch_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to nomatch (see VARARGIN)

% Choose default command line output for nomatch
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes nomatch wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = nomatch_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
main;
close(handles.figure1);


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
handles.output = hObject;
ah=axes('unit','normalized','position',[0 0 1 1]);
bg=imread('dislike.jpg');
imagesc(bg);
set(ah, 'handlevisibility','off','visible','off');
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
