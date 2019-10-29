f=input("Enter function : ");
a=input("Enter a :");
b=input("Enter b: ");

x0=(a*y(b)-b*y(a))/(y(b)-y(a));


for i=1:100
  x0=a;
  x1=b;
  x2(i)=x0-(x1-x0)/(f(x1)-f(x0))*f(x0);
  
  if f(x2(i))>0
    b=x2(i);
   else a=x2(i);
  end
  fprintf('\n Therefore,x2 = %f \n Here, f(x2) = %f',x2(i),f(x2(i)));
  p=x2(i);
end
for i=1:10
  error(i)=p-x2(i);
end

answer=p
plot(error)
grid on;
title('Plot of error');
xlabel('iterations');
ylabel('Errors');
