clc
clear all
close all
x=input('first');
y=input('second');
n1=length(x);
n2=length(y);
l=n1+n2-1;
x1=[x zeros(1,l-n1)]
y1=[y zeros(1,l-n2)]
w=[zeros(1,l)]
for m=1:l
    for n=1:l
        v=m-n+1;
        if(v>0)
            w(m)=w(m)+x1(n).*y1(v);
        end
    end
end
max1=max(n1,n2)
for i=1:max1
    if(i+max1<=l)
        w(i)=w(i)+w(i+max1)
        w(i+max1)=0
    end
end
display(w)
display('with formula')
y=cconv(x1,y1,max1);
display(y)