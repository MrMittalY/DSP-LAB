clc
clear all
close all
x=input('Enter the first signal:');
h=input('Enter the second signal:');
n=length(x);
m=length(h);
N=max(n,m);
X=[x,zeros(1,N-n)];
Y=[h,zeros(1,N-m)];
p1=fft(X);
p2=fft(Y);
p=p1.*p2;
y=ifft(p);
o=cconv(x,h,N);
display('The result using formula:')
display(y)
display('Result using inbuilt function:')
display(o)
