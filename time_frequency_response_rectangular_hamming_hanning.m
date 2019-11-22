clc
clear all
close all
m=25;
u=-m:m;
r=(m-1)/2;
l=-r;
for i=1:length(u)
    if u(i)>1 && u(i)<r
        n(i)=1;
    else
        n(i)=0;
    end
end
b=freqz(n);
n=0:(pi/(length(b)-1)):pi
plot(n/pi,20*log10(b))
title('Rectangular pulse(Yogesh Goyal 101715183)')
xlabel('Normalized frequency')
ylabel('Magnitude in dB')


N=25;
for n=1:N
    w(n)=0.54-0.46*cos(2*pi*(n/N))
end
n=1:N
subplot(3,2,3)
stem(n,w)
title('Hamming Window')
xlabel('n')
ylabel('w(n)')
b=freqz(w);
n=0:(pi/(length(b)-1)):pi
subplot(3,2,4)
plot(n/pi,20*log10(b))
xlabel('Normalized frequency')
ylabel('Magnitude in dB')

for n=1:N
w(n)=0.5*(1-cos(2*pi*n/N))
end
n=1:N
subplot(3,2,5)
stem(n,w)
title('Hanning Window')
xlabel('n')
ylabel('w(n)')
b=freqz(w);
n=0:(pi/(length(b)-1)):pi
subplot(3,2,6)
plot(n/pi,20*log10(b))
xlabel('Normalized frequency')
ylabel('Magnitude in dB')