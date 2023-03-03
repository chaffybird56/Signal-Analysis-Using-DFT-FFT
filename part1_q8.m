%rajaa5 400306467 & chouda27 400312026
part1_q3;

sin_1 = 0.4*sin(2*pi*1000*t);
sin_2 = 0.2*sin(2*pi*4000*t);
sin_3 = 0.2*sin(2*pi*6000*t);

generated_signal = sin_1+sin_2+sin_3;

tiledlayout('flow');
nexttile; plot(msec_per_sec*t(1:numSamples), signal(1:numSamples));
title('Plot of Input Signal'); xlabel('time (ms)'); grid('minor');
nexttile; plot(msec_per_sec*t(1:numSamples), generated_signal(1:numSamples));
title('Plot of Generated Signal'); xlabel('time (ms)'); grid('minor');
exportgraphics(gcf, 'part1_q8.png');