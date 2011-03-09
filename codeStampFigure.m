%% codeStampFigure.m
%
%  Prints a uniquely identifying code onto a figure window
%
% JSB 2/2011
function codeStampFigure(aFigure)

    version = getCodeVersion();

    % Remove codeStampFigure.m from the stored call stack
    version.filesCalled(1) = [];

    % Create and display a text annotation on the current figure
    figure(aFigure);
    
    fileList = 'filesCalled: ';
    for i=1:(size(version.filesCalled,2)-1)
        fileList = [fileList,version.filesCalled{i},' << '];
    end
    fileList = [fileList,'\bf',version.filesCalled{end},'\rm'];

    versionString(1) = {fileList};
    versionString(2) = {['  generated: ',datestr(now)]};
    versionString(3) = {[' repository: ',version.repository]};
    versionString(4) = {['    version: ',version.version]};


    txtar = annotation('textbox',[0 0 .5 .15],'String',versionString,...
        'FontSize',9,'FitBoxToText','on','LineStyle','none',...
        'VerticalAlignment','cap','FontName','Courier');
    myPos = get(txtar,'Position');
    set(txtar,'Position',[0,0,myPos(3),myPos(4)]);