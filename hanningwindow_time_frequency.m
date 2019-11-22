clc;
clear all;
close all;
N=50;
l=(N-1)/2;
hanning=zeros(1,(2*l+1));
for i=1:((2*l)+1)
    n=i-(l+1);
    hanning(i)= 0.5+0.5*cos(2*pi*n/N);
    n=n+1;
end
hanning1=fftshift(fft(hanning,1000));
y2=abs(hanning1)/max(hanning1);
hanning2=20*log10(y2);
subplot(2,1,1)
stem(hanning)
title('Hanning Window in Time Domain  101715180 ')
subplot(2,1,2)
plot(hanning2)
xlabel('Frequency')
ylabel('Amplitude')
title('Hanning Window  in Frequency Domain ')
