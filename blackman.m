clc
clear all
close all
N=25;
blackman=zeros(1,N);
for i=1:N
    n=N-i;
    blackman(i)=0.42-0.5*cos(2*pi*n/(N-1))+0.08*cos(4*pi*n/(N-1));
    n=n+1;
end
b1=fftshift(fft(blackman,1000))
y=abs(b1)/max(b1);
blackman2=20*log10(y);
subplot(3,1,1)
stem(blackman)
subplot(3,1,2)
plot(blackman)
subplot(3,1,3)
plot(blackman2)