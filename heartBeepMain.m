function [str] = heartBeepMain(healthy,user,alpha)
    % healthy is control data
    % user is patient input data
    % alpha is confidence level requested
    % KEEP FOR NOW log is if the patient is healthy or not. True is healthy false is
    % diseased
    % str gives cofidence 
    
    log = true; %change later
    [time col2 col3] = getData(healthy); % getting data from text file
    
    subplot(2,1,1)
    
    plot3(time, col2, col3);
   
    Y1 = fft(col2);
    
    Y2 = fft(col3);
    
    subplot(2,1,2)
    
    plot3(time,Y1, Y2);
    
    str = analyzeData(time, col2, col3); % determining if person has disease
    % str = confidenceData(time,col2,col3,alpha) cofidence level, do we
    % need this function?
end
    
