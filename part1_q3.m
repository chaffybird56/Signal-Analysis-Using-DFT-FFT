%rajaa5 400306467 & chouda27 400312026
%Reading signal from given audio file
[signal, Fs] = audioread('tones2022.wav');
L = length(signal);
T = 1/Fs;
t = [0:L-1]*T;
%Plotting signal for first 5 msec (t_plot)
t_plot = 5;
msec_per_sec = 1000;
numSamples = t_plot*Fs/msec_per_sec;
plot(msec_per_sec*t(1:numSamples), signal(1:numSamples));
title('Input Signal Plot');
xlabel('time (ms)');
grid('minor');
exportgraphics(gcf, 'part1_q3.png');