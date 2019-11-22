clc
clear all
close all
freq=input('Enter the frequecy of the signal:');
t=0:0.1:10;
duty=input('Enter the duty cycle:');
u=square(2*pi*freq*t,duty)
subplot(2,1,1)
plot(t,u)
xlabel('t');
ylabel('x(t)');

title('Continous time square Wave(Yogesh Goyal 101715183)');
subplot(2,1,2)
stem(t,u)
xlabel('n');
ylabel('x[n]');
title('Discrete time square Wave');

