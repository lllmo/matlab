a=1.25;
b=0.75;
n=4;
c=2.2;
x=0.32;
k=2;

f0=x-b;
action=f0*power(x,2)*power(b,2);

f1=power(x,2);
f2=power(b,2);
f3=(c*b);
f4=power(f1+f2-f3,-1/3);
f5=power(10,-3);
f6=tan(k*n);
f7=-(cos(k*x)/sin(5));

y=-(f0*(f1+f2)/f4)+f5*f6-f7

vec=[a b n c x k]

MinVec=sort(vec);
MinVec1=vec(1)*vec