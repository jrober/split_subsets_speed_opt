function varargout = filebuilder(varargin)
% FILEBUILDER MATLAB code for filebuilder.fig
%      FILEBUILDER, by itself, creates a new FILEBUILDER or raises the existing
%      singleton*.
%
%      H = FILEBUILDER returns the handle to a new FILEBUILDER or the handle to
%      the existing singleton*.
%
%      FILEBUILDER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FILEBUILDER.M with the given input arguments.
%
%      FILEBUILDER('Property','Value',...) creates a new FILEBUILDER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before filebuilder_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to filebuilder_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help filebuilder

% Last Modified by GUIDE v2.5 11-Jul-2016 11:26:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @filebuilder_OpeningFcn, ...
                   'gui_OutputFcn',  @filebuilder_OutputFcn, ...
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


% --- Executes just before filebuilder is made visible.
function filebuilder_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to filebuilder (see VARARGIN)

% Choose default command line output for filebuilder
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes filebuilder wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = filebuilder_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in driveA.
function driveA_Callback(hObject, eventdata, handles)
% hObject    handle to driveA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of driveA


% --- Executes on button press in driveB.
function driveB_Callback(hObject, eventdata, handles)
% hObject    handle to driveB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of driveB


% --- Executes on button press in holdA.
function holdA_Callback(hObject, eventdata, handles)
% hObject    handle to holdA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of holdA


% --- Executes on button press in holdB.
function holdB_Callback(hObject, eventdata, handles)
% hObject    handle to holdB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of holdB



function startFrame_Callback(hObject, eventdata, handles)
% hObject    handle to startFrame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of startFrame as text
%        str2double(get(hObject,'String')) returns contents of startFrame as a double


% --- Executes during object creation, after setting all properties.
function startFrame_CreateFcn(hObject, eventdata, handles)
% hObject    handle to startFrame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function endFrame_Callback(hObject, eventdata, handles)
% hObject    handle to endFrame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of endFrame as text
%        str2double(get(hObject,'String')) returns contents of endFrame as a double


% --- Executes during object creation, after setting all properties.
function endFrame_CreateFcn(hObject, eventdata, handles)
% hObject    handle to endFrame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in videoButton.
function videoButton_Callback(hObject, eventdata, handles)
% hObject    handle to videoButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uigetfile({'*.cine'},'Pick a File',...
                                  'MultiSelect', 'off');
                              
set(handles.videoPath,'String',pathname);
set(handles.videoName,'String',filename);
                              
    


% --- Executes on button press in subsetsButton.
function subsetsButton_Callback(hObject, eventdata, handles)
% hObject    handle to subsetsButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uigetfile({'*txt'},'Pick a File',...
                                  'MultiSelect', 'off');
                              
set(handles.subsetsPath,'String',pathname);
set(handles.subsetsName,'String',filename);


function videoPath_Callback(hObject, eventdata, handles)
% hObject    handle to videoPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of videoPath as text
%        str2double(get(hObject,'String')) returns contents of videoPath as a double


% --- Executes during object creation, after setting all properties.
function videoPath_CreateFcn(hObject, eventdata, handles)
% hObject    handle to videoPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function subsetsPath_Callback(hObject, eventdata, handles)
% hObject    handle to subsetsPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of subsetsPath as text
%        str2double(get(hObject,'String')) returns contents of subsetsPath as a double


% --- Executes during object creation, after setting all properties.
function subsetsPath_CreateFcn(hObject, eventdata, handles)
% hObject    handle to subsetsPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in resultsButton.
function resultsButton_Callback(hObject, eventdata, handles)
% hObject    handle to resultsButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pathname = uigetdir('./','Pick a Directory' );
                              
set(handles.resultsPath,'String',pathname);

% --- Executes on button press in parametersButton.
function parametersButton_Callback(hObject, eventdata, handles)
% hObject    handle to parametersButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uigetfile({'*txt'},'Pick a File',...
                                  'MultiSelect', 'off');
                              
set(handles.parametersPath,'String',pathname);
set(handles.parametersName,'String',filename);


function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to parametersPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of parametersPath as text
%        str2double(get(hObject,'String')) returns contents of parametersPath as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to parametersPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function parametersPath_Callback(hObject, eventdata, handles)
% hObject    handle to parametersPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of parametersPath as text
%        str2double(get(hObject,'String')) returns contents of parametersPath as a double


% --- Executes during object creation, after setting all properties.
function parametersPath_CreateFcn(hObject, eventdata, handles)
% hObject    handle to parametersPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in okButton.
function okButton_Callback(hObject, eventdata, handles)
% hObject    handle to okButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in cancelButton.
function cancelButton_Callback(hObject, eventdata, handles)
% hObject    handle to cancelButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
quit;


function resultsPath_Callback(hObject, eventdata, handles)
% hObject    handle to resultsPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of resultsPath as text
%        str2double(get(hObject,'String')) returns contents of resultsPath as a double


% --- Executes during object creation, after setting all properties.
function resultsPath_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resultsPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
