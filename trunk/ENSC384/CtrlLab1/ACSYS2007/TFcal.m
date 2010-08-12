% TFcal()  -	A MATLAB based application written for Automatic Control System 8th edition
% by Kuo and Golnaraghi, Published by John Wiley and Sons, All rights reserved.
% This toolbox is used for preliminary
% control system analyses in time and frequency domains.

% � Farid Golnaraghi 2002
% University of Waterloo and The MechWorks Software Inc., Waterloo, Ont., Canada
% Version 2002 - First Trial
% Last Modified: 02/10/2002
%=============================================================
clear all

MWKSMENU= figure('Units','Normal','Position',[0.3 0.5 0.6 0.35],...
	'Name','Transfer Function Calculator � 2001&2002 Farid Golnaraghi and Benjamin Kuo',...
   'color',0.8*[.9 .9 1],'NumberTitle','off','Menubar','None');

uicontrol('Units','Normal','Position',[0.1 8/9 0.8 1/15],'Style','PushButton',...
   'String','Help for 1st Time User','Fontsize',10,'FontWeight','Demi','Callback','helpdlg('' You must have access to MATLAB Control System Toolbox. To run Programs, go to MATLAB Command window after clicking each pushbutton.''),');

uicontrol('Units','Normal','Position',[0.1 6/9 0.8 1/9],'Style','PushButton',...
   'String','Transfer Function Calculator','Fontsize',10,'FontWeight','Demi','Callback',[,...
        'disp('' Transfer Function Calculator. � Kuo & Golnaraghi 8th edition, John Wiley''),',...
        'disp('' e.g. Use the following input format: (s+2)*(s^3+2*s+1)/(s*(s^2+2*s+1))''),',...
        'eval(TFsingle)'])
uicontrol('Units','Normal','Position',[0.1 5/9 0.8 1/9],'Style','PushButton',...
   'String','Multiply two Transfer Functions','Fontsize',10,'FontWeight','Demi','Callback',[,...
        'disp('' Transfer Function Calculator. � Kuo & Golnaraghi 8th edition, John Wiley''),',...
        'disp('' e.g. Use the following input format: (s+2)*(s^3+2*s+1)/(s*(s^2+2*s+1))''),',...
        'eval(TFseries)'])
uicontrol('Units','Normal','Position',[0.1 4/9 0.8 1/9],'Style','PushButton',...
   'String','Add Two Transfer Functions','Fontsize',10,'FontWeight','Demi','Callback',[,...
        'disp('' Transfer Function Calculator. � Kuo & Golnaraghi 8th edition, John Wiley''),',...
        'disp('' e.g. Use the following input format: (s+2)*(s^3+2*s+1)/(s*(s^2+2*s+1))''),',...
        'eval(TFadd)'])
uicontrol('Units','Normal','Position',[0.1 3/9 0.8 1/9],'Style','PushButton',...
   'String','Single Loop Feedback','Fontsize',10,'FontWeight','Demi','Callback',[,...
        'disp('' Transfer Function Calculator. � Kuo & Golnaraghi 8th edition, John Wiley''),',...
        'disp('' e.g. Use the following input format: (s+2)*(s^3+2*s+1)/(s*(s^2+2*s+1))''),',...
        'eval(TFfeedback)'])
uicontrol('Units','Normal','Position',[0.1 1/9 0.8 1/9],'Style','PushButton',...
   'String','Close and Exit','Fontsize',10,'FontWeight','Demi','Callback','close(gcf)')

TFsingle=[,...
        's=tf(''s'');',...
        'disp(''  ''),',...
        'clear G; G=input('' Enter G = '');',...
        'G=minreal(G),',...
        'polesG=pole(G),zerosG=zero(G),disp('' G factored:''),zpk(G),disp('' G in State Space Form:''),clear SSG; SSG=SS(G),'];

TFseries=[,...
        's=tf(''s'');',...
        'disp('' ''),',...
        'disp('' Enter G1 and G2 to find G1*G2 ''),',...
        'clear G1; G1=input(''Enter G1 = ''),',...
        'clear G2; G2=input(''Enter G2 = ''),',...
        'disp(''G=G1*G2 is: ''),',...
        'clear G; G=series(G1,G2);',...
        'G=minreal(G),',...
        'polesG=pole(G),zerosG=zero(G),disp('' G factored:''),zpk(G),'];

TFadd=  [,...
        's=tf(''s'');',...
        'disp('' ''),',...
        'disp('' Enter G1 and G2 to find G1+G2 ''),',...
        'clear G1; G1=input('' Enter G1 = ''),',...
        'clear G2; G2=input('' Enter G2 = ''),',...
        'disp(''G=G1+G2 is: ''),',...
        'clear G; G=parallel(G1,G2);',...
        'G=minreal(G),',...
        'polesG=pole(G),zerosG=zero(G),disp('' G factored:''),zpk(G),'];

TFfeedback=[,...
        's=tf(''s'');',...
        'disp('' ''),',...
        'disp('' Enter G1 and G2 to find 1/(1+G1*G2) ''),',...
        'clear G1; G1=input('' Enter G1 = ''),',...
        'clear G2; G2=input('' Enter G2 = ''),',...
        'disp(''G=G1/(1+G2*G2) is: ''),',...
        'clear G; G=feedback(G1,G2);',...
        'G=minreal(G),',...
        'polesG=pole(G),zerosG=zero(G),disp('' G factored:''),zpk(G),'];

% TFMultiple is in Acsys_DONTerase_underDev_23Aug01 version of ACSYS2001