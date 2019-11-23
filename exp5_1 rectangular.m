clc
clear all
close all
m=25;
u=-m:m;
r=(m-1)/2
l=-r;
for i=1:length(u)
    if u(i)>l && u(i)<r
        u(i)=1
    else
        u(i)=0
    end
end
b=freqz(u)
n=0:pi/(length(b)-1):pi
plot(n/pi,20*log10(b));