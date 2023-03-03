%rajaa5 400306467 & chouda27 400312026 
part1_q3;
%Taking the Discrete Fourier Transform
Y = fft(signal)/L;
F = Fs/2*linspace(0,1,L/2+1);
%Plotting only the single-side of the magnitude spectrum as desired
plot(F,2*abs(Y(1:L/2+1)));
title('Single-Sided Magnitude Spectrum');
xlabel('Frequency (Hz)');
ylabel('|Y(f)|');
axis([0 Fs/2 0 .5]);
grid('minor');
exportgraphics(gcf, 'part1_q6.png');