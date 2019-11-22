clc
clear all
close all
fp= 2000;
fs = 8000;
pass = 0.2;
att = 40;
stopfreq = 3500;
wp=2*fp/fs;
ws=2*stopfreq/fs;
[n,wn] = buttord(wp,ws,pass,att);
[b,a] = butter(n,wn,'low');
[h,w] = freqz(b,a);
subplot (2,1,1);
plot (w/pi,20*log10(abs(h)));
title('LOWPASS BUTTERWORTH FILTER Yash Mittal(101715180)')
xlabel('Normalized Frequency');
ylabel('Magnitude(dB)');
[b1,a1] = impinvar(b,a,fs);
y = freqz(b1,a1,w);
y1 = 20*log(abs(y));
p1 = angle(y);
subplot(2,1,2);
plot(w/pi,y1);
title('Digital Magnitude Plot');
xlabel('Normalised Frequency');
ylabel('Magnitude(in dB)')

