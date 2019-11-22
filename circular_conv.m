clc
clear all
x1=input('Enter the first sequence');
x2=input('Enter the second sequence');
n=length(x1);
m=length(x2);
N=n+m-1;
X=[x1,zeros(1,N-n)];
Y=[x2,zeros(1,N-m)];
x3=zeros(1,N);
for m=0:N-1
    x3(m+1)=0;
for n=0:N-1
        j=mod(m-n,N);
        x3(m+1)=x3(m+1)+X(n+1).*Y(j+1);
end
end
display('The result with formula:')
display(x3)
y=cconv(X,Y,N);
display('The result using inbuilt function:')
display(y)
