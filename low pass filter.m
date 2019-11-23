clc
clear all
close all
fp=1500;
fw=500;
sb=21;
fs=8000;
%rectangular window low pass
fc=(fp+fw/2)/fs;
wc=2*pi*fc;
N=ceil(0.9*fs/fw);
if (mod(N,2)==0)
    N=N+1;
end
h0=2*fc;
for n=1:(N-1)/2
    h1(n)=2*fc*sin(n*wc)/(n*wc)
end
h2=fliplr(h1)
h=[h2 h0 h1]
w=zeros(1,N)
for n=1:N
    w(n)=1;
end
hd=h.*w;
[H W]=freqz(hd);
subplot(2,1,1)
plot(W/pi,20*log10(H))
%triangular window low pass
w=zeros(1,N)
for n=1:N
    if(n>=1 && n<=(N-1)/2)
        w(n)=2*(n/(N+1));
    else
        w(n)=2-2*(n/(N+1));
    end
end
hd=h.*w;
[H W]=freqz(hd);
subplot(2,1,2)
plot(W/pi,20*log10(H))