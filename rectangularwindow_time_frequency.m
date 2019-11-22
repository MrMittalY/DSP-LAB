clc;
clear all;
close all;
N=input('Enter the Length of filter: ')
m=(N-1)/2;
w=zeros(1,(2*m+1));
for i=1:((2*m)+1)
    n=i-(m+1);
   
    w(i)=1;
    n=n+1;
end
w1=fftshift(fft(w,1000));
y1=abs(w1)/max(w1);
w2=20*log10(y1);
subplot(2,1,1)
stem(w)
xlabel('n')
ylabel('w(n)')
title('Rectangular Window -- Time domain    101715180')
subplot(2,1,2)
plot(w2)
xlabel('Frequency')
ylabel('Amplitude')
title('Rectangular Window -- Frequency Domain ')