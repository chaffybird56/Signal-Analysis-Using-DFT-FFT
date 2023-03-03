%rajaa5 400306467 & chouda27 400312026
[signal, Fs] = audioread('SecretMessage2022.wav');
L = length(signal);
T = 1/Fs;
t = [0:L-1]*T;
%Taking the DFT
Y = fft(signal)/L;
f = Fs/2*linspace(0,1,L/2+1);
%Plotting desired spectrum
plot(f,2*abs(Y(1:L/2+1)));
title('Single-Sided Magnitude Spectrum');
xlabel('Frequency (Hz)');
ylabel('|Y(f)|');
axis([0 Fs/2 0 .05]);
grid('minor');
exportgraphics(gcf, 'part2_q3.png');