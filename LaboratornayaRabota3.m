%----------f1-------
x1 = 0:0.01:10;    
y1 = exp(x1);         

%----------f2-------
x2 = 0:0.01:10;
y2 = x2.^2;

%----------f3-------
x3 = 0:0.01:10;
y3 = x3;

subplot(3,1,1);

plot(x1,y1);

title('f1');

subplot(3,1,2);

plot(x2,y2);

title('f2');

subplot(3,1,3);

plot(x3,y3);

title('f3');

x = -10:0.01:10;

for i = 1:length(x)

if x(i) <= 0
    tempY = 3*sin(x)-cos(x).^2;
else
    tempY = (3*sqrt(1+x.^2))/(log(x+5));

end

end

figure(2);

subplot(2,1,1);

plot(m,n,'m.-');

title('Поэлементная обработка');

legend('График функции');

xlabel('x');

ylabel('y');

g = -10:0.01:10;

h = (abs(g)./(1+g.^2).*exp(-2.*g)).*(g <= 0)+ sqrt(1+g.^2).*(g > 0);

subplot(2,1,2);

plot(g,h,'r--');

title('Групповая обработка массивов');

legend('График функции');

xlabel('x');

ylabel('y');