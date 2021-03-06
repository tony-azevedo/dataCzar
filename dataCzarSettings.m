%% dataCzarSettings.m
%
% Internal helper function to help functions in the dataCzar package find
% their settings.
%
% JSB 3/2011
function dcSettings = dataCzarSettings()

    pathToDZF = which('dataCzarSettings');
    pathToDZ = regexprep(pathToDZF,'dataCzarSettings.m','');
    load([pathToDZ,'.dataCzarSettings.mat']);