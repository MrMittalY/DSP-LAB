clc;
clear all;
close all;
x=input('Enter the sequence');
N=length(x);
input('DFT of x');
for k=1:N
    X(k)=0;
    for n=1:N
        X(k)=X(k)+x(n)*exp(-(j*2*pi*(k-1)*(n-1))/N);
    end
end
X
mod=abs(X);
subplot(2,1,1)
stem(mod)
title('Magnitude Spectrum vivek 101715178')
xlabel('n')
ylabel('y')
phase=angle(X);
subplot(2,1,2)
stem(phase)
title('Phase Spectrum vivek 101715178')
xlabel('n')
ylabel('y')