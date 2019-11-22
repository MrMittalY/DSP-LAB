clc
clear all
close all
freq=input('Enter the freq of the signal:');
amp=input('Enter the amplitude of the signal:');
phase1=input('Enter the phase angle of the signal:');
t=-10:0.01:10;
w=amp*sin((2*pi*freq*t)+phase1);
plot(t,w);
title('Yogesh Goyal 101715183')
xlabel('t')
ylabel('Sin(x)')
hold on
phase2=input('Enter the phase angle of the signal:');
w=amp*sin((2*pi*freq*t)+phase2);
plot(t,w);
hold off