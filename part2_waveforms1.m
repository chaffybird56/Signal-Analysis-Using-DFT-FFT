%rajaa5 400306467 & chouda27 400312026


sample_second = L/76;
f = linspace(0,1,sample_second/2)*Fs/2;
% plot
for i = sample_second:sample_second:L
    
    
    %plot
    nexttile;
    stem(f,1000*abs(Y(1:sample_second/2)));
    title("Plot");
    xlabel("Hz");
    ylabel("|Y(F)|");
    axis([0 Fs/2 0 .5]);
    grid('minor');
end

