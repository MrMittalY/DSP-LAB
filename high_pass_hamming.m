clc
clear all
close all
fp=1500;
fw=500;
sb=60;
fs=8000;
fc=(fp+(fw/2))/fs;
wc= 2*pi*fc;
N=ceil(3.3*fs/fw);
if(mod (N,2)==0)
    N=N+1;
end
h0=1-2*fc;
for n=1:(N-1)/2
    h1(n)=-(2*fc*(sin(n*wc))/(n*wc));
end
h2=fliplr(h1);
h=[h2 h0 h1];
w=zeros(1,N);
for n=-(N-1)/2:(N-1)/2
    w(n+(N-1)/2+1)=0.54+0.46*cos(2*pi*(n/N))
end
hd=h.*w;
[H W]=freqz(hd);
plot(W/pi,20*log10(abs(H))/max(H))  ;
title('High Pass Filter-Hamming Window(Tushar Gupta 101715165')
xlabel('Frequency');
ylabel('Magnitude in dB');