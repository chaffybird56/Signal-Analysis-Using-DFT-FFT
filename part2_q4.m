%rajaa5 400306467 & chouda27 400312026
%code described in report above
[signal, Fs] = audioread('SecretMessage2022.wav');
L = length(signal);
T = 1/Fs;
t = [0:L-1]*T;

freqs = zeros(77,4);

for i = 0:75
    Y = fft(signal(1+i*Fs:(i+1)*Fs))/(Fs);
    [B, I] = maxk(abs(Y(1:Fs/2+1)),4);
    freqs(i+1,:) = I-1;
end

freqs = sort(freqs,2);