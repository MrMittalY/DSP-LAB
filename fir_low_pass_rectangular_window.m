clc
close all
clear all
fc=input('Enter the passband freq:');
fw=input('Enter the Transition Width');
sb=input('Enter the stopband attenuation');
fs=input('Enter the sampling freq:');
wc=2*pi*(fc/fs);
N=ceil((0.9*fs)/fw);
if(mod(N,2)==0)
	N=N+1;
end
for n=0:N-1
	rec(n+1)=1;
	if(n~=0)
		hd(n+1)=2*fc*sin(n*wc);
	else
		hd(n+1)=2*fc;
	end
	h(n+1)=rec(n+1)*hd(n+1);
end
n1=0:N-1;
f1=abs(h);
d1=fft(f1)
subplot(2,1,1)
stem(n1,f1)
subplot(2,1,2)
plot(n1,d1)