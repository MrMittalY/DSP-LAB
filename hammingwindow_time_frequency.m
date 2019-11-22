clc
clear all
close all
N=25;
l=(N-1)/2;
hamming=zeros(1,(2*l+1));
for i=1:((2*l)+1)
    n=i-(l+1);
    hamming(i)= 0.54+0.46*cos(2*pi*n/N);
    n=n+1;
end
hamming1=fftshift(fft(hamming,1000));
y3=abs(hamming1)/max(hamming1);
hamming2=20*log10(y3);
subplot(2,1,1)
stem(hamming)
title('Hamming Window  101715180')
subplot(2,1,2)
plot(hamming2)
title('Hamming Window in Frequency Domain')
