clc;
clear all;
close all;
X=input('Enter the sequence')
N=length(X);
for n=1:N
    x(n)=0;
    for k=1:N
        x(n)=x(n)+(1/N)*X(k)*exp(j*2*pi*(k-1)*(n-1)/N);
    end
end
x

