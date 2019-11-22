clc;
clear all;
close all;
fs=input('Enter the sampling frequency');%8000
fp=input('Enter the passband frequency');%1500
F=input('Enter the transition width');%500
N=0.9/(F/fs);
N=ceil(N);
fc=(fp+(F/2))/fs;
p=(N-1)/2;
%to reduce computations we find coeffiecient of only one side and then use
%fliplr command
h0=2*fc;
h1=zeros(1,p);
for n=1:p
    h1(n)=2*fc*sin(n*2*pi*fc)/(n*2*pi*fc)
end
h2=fliplr(h1);
h=[h2 h0 h1];%for concatenating positive and negative side coefficients
for n=1:N
  if(n>=1&&n<=(N+1)/2)
      w(n)=2*n/(N+1)%triangular window
  else
      w(n)=2-(2*n/(N+1));
  end
end
hd=h.*w;
[H W]=freqz(hd);
d1=20*log10(H);
plot(W/pi,d1)
xlabel('Frequency')
ylabel('Magnitude in dB')
title('FIR low pass filter using traingular window      Vivek 101715178')
