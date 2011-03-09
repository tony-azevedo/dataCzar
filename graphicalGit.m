%% graphicalGit.m
%
function graphicalGit()

    % Get the repository settings
    params = dataCzarSettings();
    
    % Git needs to run from the working directory
    oldDir = cd(params.repoDir);
    
    disp('Look for a minimized window...');
    system('gitk');
    
    cd(oldDir);
