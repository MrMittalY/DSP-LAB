clc 
clear all
close all
x=input('enter the sequence');
N=length(x)
for k=1:N
    X(k)=0;
    for n=1:N
        X(k)=X(k)+x(n)*exp((-j*2*pi*(k-1)*(n-1)/N));
    end
end
X
mod=abs(X);
phase=angle(X);
subplot(2,1,1)
stem(mod);
title('Yogesh Goyal-101715183');
xlabel('n');
ylabel('Magnitude Spectrum-Y');
subplot(2,1,2)
stem(phase)
title('Yogesh Goyal-101715183');
xlabel('n');
ylabel('phase Spectrum-Y');
