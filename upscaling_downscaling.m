clc
clear all
close all
N=51;
t=0:(N-1)
f=0.15
y=sin(2*pi*f*t)
n=length(y)
subplot(3,2,1)
stem(t,y)
title('Sinusoidal sequence with f=0.15 Yogesh Goyal (101715183)')
xlabel('n')
ylabel('sin(n)')
u=upsample(y,4)
n1=length(u)
t1=0:n1-1
subplot(3,2,3)
stem(t1,u)
title('Úpsampling by 4 N=51')
xlabel('n')
ylabel('sin(n)')
d=downsample(y,6)
n2=length(d)
t2=0:n2-1
subplot(3,2,5)
stem(t2,d)
title('Downsampling by 6 N=51')
xlabel('n')
ylabel('sin(n)')

f1=0.1
f2=0.3
t=0:N-1
y2=sin(2*pi*f1*t)+sin(2*pi*f2*t)
subplot(3,2,2)
stem(t,y2)
title('Sum of sinusoidal sequences with f1=0.1 and f2=0.3')
xlabel('n')
ylabel('sin(n)')
u2=upsample(y2,5)
k1=length(u2)
t1=0:k1-1
subplot(3,2,4)
stem(t1,u2)
title('Úpsampling by 5 N=51')
xlabel('n')
ylabel('sin(n)')
d2=downsample(y2,4)
k2=length(d2)
t2=0:k2-1
subplot(3,2,6)
stem(t2,d2)
title('Downsampling by 4 N=51')
xlabel('n')
ylabel('sin(n)')