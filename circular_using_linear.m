clc
clear all
close all
x=input('Enter x');
l=length(x);
y=input('Enter y');
m=length(y);
max1=max(l,m);
lgth=l+m-1
X=[x zeros(1,lgth-l)]
Y=[y zeros(1,lgth-m)]
H=[zeros(1,lgth)]
for n=1:lgth
	H(n)=0;
	for k=1:lgth
		v=n-k+1;
		if(v>0)
			H(n)=H(n)+X(k)*Y(v);
		end
	end
end

for i=1:max1
	if(i+max1<=lgth)
		H(i)=H(i)+H(i+max1);
		H(i+max1)=0;
	end
end

%cconv(x,y,4)
disp('circular convolution using linear convolution')
H