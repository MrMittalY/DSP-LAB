
clc
clear all
close all
x=input('Enter the first signal:');
h=input('Enter the second signal:');
n=length(x)+length(h)-1;
y=zeros(1,n);
p=n-length(x);
k=n-length(n);
xn=[x,zeros(1,p)];
hn=[h,zeros(1,k)];
for i=1:n
    for j=1:i
        if(i-j+1>0)
        y(i)=y(i)+xn(j)*hn(i-j+1);
        end
    end
end
display('The result using formula:')
display(y)
display('Result using inbuilt function:')
o=conv(x,h);
display(o)
subplot(2,2,1)
stem(x)
xlabel('t');
ylabel('x(t)');
title('Yash Mittal[] 101715180')
subplot(2,2,2)
stem(h);
xlabel('t');
ylabel('h(t)');
subplot(2,2,3)
stem(y);
xlabel('t');
ylabel('y(t)');
subplot(2,2,4)
stem(o)
xlabel('t');
ylabel('y(t)');
title('Using conv(x,h)function')