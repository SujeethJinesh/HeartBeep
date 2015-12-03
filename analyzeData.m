function str = analyzeData(time, col2, col3)
    mask = time>= 3.21 & time <= 4.15;
    newcol2 = col2(mask);
    newcol2 = newcol2 - mean(newcol2);
    figure;
    vec = fft(newcol2);
    fftgui(newcol2);
    str = 'hi';
end
