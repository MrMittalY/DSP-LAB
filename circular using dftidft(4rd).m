clc
clear all
close all
x=input('first');
y=input('second');
n1=length(x);
n2=length(y);
l=max(n1,n2);
x1=[x zeros(1,l-n1)]
y1=[y zeros(1,l-n2)]
X=zeros(1,l);
Y=zeros(1,l);
for n=1:l
    for k=1:l
        X(n)=X(n)+x1(k)*exp(-j*2*pi*(k-1)*(n-1)/l)
    end
end
for n=1:l
    for k=1:l
        Y(n)=Y(n)+y1(k)*exp(-j*2*pi*(k-1)*(n-1)/l)
    end
end
for n=1:l
    R(n)=X(n).*Y(n);
end
Y1=zeros(1,l);
for n=1:l
    for k=1:l
        Y1(n)=Y1(n)+(1/l)*R(k)*exp(-j*2*pi*(k-1)*(n-1)/l);
    end
end

display(Y1)
display('with formula')
y=cconv(x,y,l);
display(y)