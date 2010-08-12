
function [CursorWindow cursorTxt CursorBar] = cursorFcn(guiele, cnstn, axlims, mousePos)



CursorWindow = guiele.CursorWindow;
cursorTxt = guiele.cursorTxt;
CursorBar = guiele.CursorBar;

CYAN = 0.95*[1 1 1];
LIGHTGREY = [0.9 0.9 1];

currTime = get(guiele.ResponsePlotLine,'XData');
currPos = get(guiele.ResponsePlotLine,'YData');

mouseIndex = find(currTime >= mousePos(1,1),1,'first');

if isempty(mouseIndex) mouseIndex = length(currTime); end

set(CursorBar,'XData',[currTime(mouseIndex) currTime(mouseIndex)],'YData',axlims);

% hold on
% plot(guiele.ResponsePlotAxis,output.time(mouseIndex),output.values(mouseIndex),'rs','MarkerFaceColor','r','MarkerEdgeColor','k','MarkerSize',4);
set(guiele.CursorDot,'XData',currTime(mouseIndex),'YData',currPos(mouseIndex),'Marker','s',...
    'MarkerFaceColor','r','MarkerEdgeColor','k','MarkerSize',4);
if ~ishandle(guiele.CursorWindow)
    vabls.DisplayPanelPosition=get(guiele.DisplayPanel,'position');
    CursorWindow = uipanel('parent',guiele.DisplayPanel,'Units','pixels','Position',[.321*vabls.DisplayPanelPosition(3) .714*vabls.DisplayPanelPosition(4) cnstn.bwidth 3*cnstn.bheight],... %this positioning puts it just above the PoleText
        'BackGroundColor',LIGHTGREY,'BorderType','beveledout','ButtonDownFcn','','Visible','on');
    cursorTxt = uicontrol('Parent',CursorWindow,'Style','text','Units','Normalized','FontSize',6,...
                'Position',[0 0 1 0.8],'BackGroundColor',CYAN,...
                'String',strvcat(['Time: ' num2str(currTime(mouseIndex))],['Amplitude: ' num2str(currPos(mouseIndex))]),...
                'fontsize',10,'FontWeight','Demi','BackgroundColor',CYAN);
    CursorWindowBar = uicontrol('Parent',CursorWindow,'Style','text','Units','Normalized','Enable','off',...
                'Position',[0 0.8 1 0.2],'BackGroundColor',LIGHTGREY,'String','Cursor Values',...
                'ButtonDownFcn',['HoverBox(' num2str(guiele.CONTWIND,'%15.15f') ',get(gcbo,''Parent''),gcbo)']);
    uicontrol('Parent',CursorWindow,'Units','Normalized','Style','PushButton','String','X',...
                'Position',[0.9 0.8 0.09 0.2],'Callback',...
                'delete(guiele.CursorWindow);guiele.CursorWindow=-1;set(guiele.CursorDot,''Marker'',''none'');set(guiele.ResponsePlotAxis,''ButtonDownFcn'',''''); set(guiele.CONTWIND,''pointer'',''arrow'',''windowbuttonmotionfcn'',''''); set(guiele.zoomzoom,''enable'',''on'')');     %I removed this from the set(cursordot...  ''XData'',[0],''YData'',[0],
else
    set(cursorTxt,'String',strvcat(['Time: ' num2str(currTime(mouseIndex))],['Output: ' num2str(currPos(mouseIndex))]));
end
drawnow;