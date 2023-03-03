%rajaa5 400306467 & chouda27 400312026
%Reading signal from given audio file
[signal, Fs] = audioread('tones2022.wav');
L = length(signal);
T = 1/Fs;
t = [0:L-1]*T;

%Plotting using fft of signal and shifting by |Y|(f)
Y=fft(signal);
h=fftshift(Y);
%obtaining length and using it to get magnitude of Y
len_Y_f=length(Y);
F=(-len_Y_f/2:len_Y_f/2-1)/len_Y_f*Fs;
%stem plotting
stem(F,abs(h))
xlabel 'Frequency (Hz)'
ylabel '|Y|(f)'
grid('minor')
exportgraphics(gcf, 'part1_q5.png');