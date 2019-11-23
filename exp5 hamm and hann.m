clc
clear all
close all
N=25;
%hamming
for n=1:N
    w(n)=0.54-0.46*cos(2*pi*n/N)
end
n=1:N
b=freqz(w)
subplot(4,1,1)
title('Hamming')
stem(w)
n=0:pi/(length(b)-1):pi
subplot(4,1,2)
plot(n/pi,20*log10(b));
%hanning
for n=1:N
    w(n)=0.50*(1-cos(2*pi*n/N))
end
n=1:N
b=freqz(w)
subplot(4,1,3)
stem(w)
title('Hanning')
n=0:pi/(length(b)-1):pi
subplot(4,1,4)
plot(n/pi,20*log10(b));
