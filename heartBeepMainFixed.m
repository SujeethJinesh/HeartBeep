function [str] = heartBeepMain(healthy,user,alpha)
    % healthy is control data
    % user is patient input data
    % alpha is confidence level requested
    % KEEP FOR NOW log is if the patient is healthy or not. True is healthy false is
    % diseased
    % str gives cofidence 
    
    [time col2 col3] = getData(healthy); % getting data from text file
    
    %plot3(time, col2, col3);
   
    str = analyzeData2(time, col2, col3, alpha); % determining if person has disease
    % str = confidenceData(time,col2,col3,alpha) cofidence level, do we
    % need this function?
end
    
