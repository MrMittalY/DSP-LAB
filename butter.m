clc
clear all
close all
fp=2000;
fw=500;
att=40;
pass=0.2;
stopf=3500;
fs=8000;
wp=2*fp/fs;
ws=2*stopf/fs;
[n wn]=buttord(wp,ws,pass,att);
[b a]=butter(n,wn,'low')
[H W]=freqz(b,a);
subplot(2,1,1)
plot(W/pi,20*log10(abs(H)))

[b1 a1]=impinvar(b,a,fs)
y=freqz(b1,a1,W)
y1=20*log(abs(y))
p1=angle(y1);
subplot(2,1,2)
plot(W/pi,y1)